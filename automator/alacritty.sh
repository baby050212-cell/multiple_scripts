#!/bin/zsh

ALACRITTY_APP="/Applications/Alacritty.app"
ALACRITTY_BIN="/Applications/Alacritty.app/Contents/MacOS/alacritty"

[[ -d "$ALACRITTY_APP" ]] || exit 1
[[ -x "$ALACRITTY_BIN" ]] || exit 1

for item in "$@"; do
  if [[ -d "$item" ]]; then
    target_dir="$item"
  else
    target_dir="$(dirname "$item")"
  fi

  if pgrep -x "alacritty" >/dev/null 2>&1; then
    # 激活已有 Alacritty
    open -a "$ALACRITTY_APP"

    # 等待窗口获得焦点
    sleep 0.15

    # 模拟 Cmd+T 创建 macOS 原生 Tab
    osascript <<'APPLESCRIPT'
tell application "System Events"
  keystroke "t" using command down
end tell
APPLESCRIPT

    # 等待新 tab 初始化 shell
    sleep 0.25

    # 进入目标目录
    escaped_dir=$(printf "%q" "$target_dir")
    cmd="cd $escaped_dir && clear"

    # 保存当前剪贴板
    old_clipboard="$(pbpaste)"

    # 粘贴命令，避免中文输入法干扰
    printf "%s" "$cmd" | pbcopy

    osascript <<'APPLESCRIPT'
tell application "System Events"
  keystroke "v" using command down
  key code 36
end tell
APPLESCRIPT

    # 稍等一下，避免恢复剪贴板太快导致粘贴还没完成
    sleep 0.1

    # 恢复原剪贴板
    printf "%s" "$old_clipboard" | pbcopy

  else
    open "$ALACRITTY_APP" --args \
      --working-directory "$target_dir" \
      -e /bin/zsh -il
  fi
done

exit 0

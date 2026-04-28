# automator

macOS Finder/Automator 快速操作脚本。

## 文件

- `alacritty.sh`：在 Alacritty 中打开选中文件或文件夹所在目录。
- `opencode.sh`：在 Alacritty 中打开目录并启动 `opencode`。

## 使用场景

适合放到 Automator 快速操作里，在 Finder 右键菜单中快速打开当前目录。

脚本会根据传入参数判断目标目录：

- 传入文件夹时，打开该文件夹。
- 传入文件时，打开该文件所在目录。

## 依赖

- macOS
- Alacritty：默认路径 `/Applications/Alacritty.app`
- `opencode.sh` 额外依赖 `opencode` 命令可用

## 复制使用

复制脚本后，可按本机环境调整：

- Alacritty 安装路径
- 是否需要启动额外命令
- Automator 快速操作中的输入参数类型

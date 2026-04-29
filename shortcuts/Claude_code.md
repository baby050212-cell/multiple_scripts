# Claude Code 常用快捷键速查表（macOS）

> `Ctrl` 指 macOS 键盘上的 `Control / ⌃`，不是 `Command / ⌘`。  
> 不同终端或 IDE 可能存在快捷键冲突，可在 Claude Code 内按 `?` 查看当前环境可用快捷键。

---

## 1. 高频必备

| 使用频率 | 快捷键 / 输入 | macOS 表示 | 作用 | 典型场景 |
|---|---|---|---|---|
| 高频 | `Ctrl + C` | `⌃C` | 取消当前输入或中断当前生成 | Claude 正在执行任务，需要立即停止 |
| 高频 | `Esc` | `Esc` | 中断 Claude 当前回复 | 想打断回答、补充新要求 |
| 高频 | `Ctrl + D` | `⌃D` | 退出 Claude Code 会话 | 结束当前 session |
| 高频 | `↑ / ↓` | `↑ / ↓` | 浏览历史 prompt | 快速复用上一条或之前的指令 |
| 高频 | `/` | `/` | 打开 slash command 命令菜单 | 使用 `/clear`、`/compact`、`/model` 等命令 |
| 高频 | `@` + 路径 | `@path/to/file` | 引用文件或目录 | 让 Claude 分析某个文件、目录或代码模块 |
| 高频 | `Tab` | `Tab` | 自动补全命令或路径 | 输入 slash command、文件路径时加速 |
| 高频 | `Shift + Tab` | `⇧Tab` | 切换 permission mode | 在默认模式、计划模式、自动接受编辑等模式间切换 |
| 高频 | `Ctrl + O` | `⌃O` | 切换 verbose / transcript view | 查看更完整的执行过程、工具调用、thinking 摘要 |
| 高频 | `?` | `?` | 查看当前环境快捷键 | 不确定某个快捷键是否可用时 |

---

## 2. 会话控制

| 使用频率 | 快捷键 | macOS 表示 | 作用 | 典型场景 |
|---|---|---|---|---|
| 高频 | `Ctrl + C` | `⌃C` | 取消当前输入或中断当前生成 | 任务跑偏、生成过长、需要停止 |
| 高频 | `Esc` | `Esc` | 中断 Claude 当前回复 | 想临时补充上下文或改方向 |
| 高频 | `Ctrl + D` | `⌃D` | 退出 Claude Code 会话 | 完成工作后退出 |
| 中频 | `Ctrl + X` 然后 `Ctrl + K` | `⌃X` → `⌃K` | Kill all background agents | 后台 agent 卡住、需要强制停止 |
| 中频 | `Ctrl + X` 然后 `Ctrl + K`，3 秒内按两次 | `⌃X` → `⌃K` × 2 | 确认终止所有后台 agents | 防止误杀后台任务 |

---

## 3. 历史记录与回滚

| 使用频率 | 快捷键 | macOS 表示 | 作用 | 典型场景 |
|---|---|---|---|---|
| 高频 | `↑ / ↓` | `↑ / ↓` | 在历史 prompt 中上下切换 | 复用或修改上一条指令 |
| 中频 | `Ctrl + R` | `⌃R` | 反向搜索 prompt 历史 | 查找之前输入过的长 prompt |
| 中频 | `Esc, Esc` | 连按两次 `Esc` | 打开 rewind / checkpoint 菜单 | 回滚到之前某个会话节点 |
| 中频 | `/clear` | `/clear` | 清空当前会话上下文 | 想开启一个干净上下文 |
| 中频 | `/compact` | `/compact` | 压缩当前上下文 | 会话过长但还想保留关键信息 |

---

## 4. 显示、调试与查看过程

| 使用频率 | 快捷键 / 输入 | macOS 表示 | 作用 | 典型场景 |
|---|---|---|---|---|
| 高频 | `Ctrl + O` | `⌃O` | 切换 verbose / transcript view | 查看工具调用、执行过程、thinking 摘要 |
| 高频 | `?` | `?` | 显示当前环境可用快捷键 | 快速查看快捷键说明 |
| 中频 | `/cost` | `/cost` | 查看当前会话 token / 成本信息 | 关注消耗、长任务前后核对成本 |
| 中频 | `/model` | `/model` | 查看或切换当前模型 | 想切换模型能力或成本档位 |
| 中频 | `/status` | `/status` | 查看当前 Claude Code 状态 | 检查环境、账号、模型等状态 |
| 低频 | `/doctor` | `/doctor` | 检查 Claude Code 安装与环境问题 | 排查命令异常、环境异常 |

---

## 5. 权限与工作模式切换

| 使用频率 | 快捷键 / 输入 | macOS 表示 | 作用 | 典型场景 |
|---|---|---|---|---|
| 高频 | `Shift + Tab` | `⇧Tab` | 循环切换 permission mode | 在默认模式、计划模式、自动接受编辑等模式之间切换 |
| 中频 | `Shift + Tab` | `⇧Tab` | 切换到 plan mode | 先让 Claude 制定方案，不直接改文件 |
| 中频 | `Shift + Tab` | `⇧Tab` | 切换到 acceptEdits mode | 自动接受 Claude 对文件的编辑 |
| 低频 | `Shift + Tab` | `⇧Tab` | 切换到 bypassPermissions mode | 高信任本地环境下跳过部分权限确认，需谨慎 |
| 低频 | `claude --dangerously-skip-permissions` | 命令行参数 | 启动时跳过权限确认 | 仅适合隔离环境或临时实验环境 |

---

## 6. 文件引用与上下文输入

| 使用频率 | 快捷键 / 输入 | 示例 | 作用 | 典型场景 |
|---|---|---|---|---|
| 高频 | `@` + 文件路径 | `@src/app.ts` | 引用单个文件 | 让 Claude 分析、修改或解释指定文件 |
| 高频 | `@` + 目录路径 | `@src/components/` | 引用整个目录 | 让 Claude 理解某个模块结构 |
| 高频 | `Tab` | `src/` + `Tab` | 自动补全路径 | 快速选择文件或目录 |
| 中频 | 粘贴代码块 | ```ts ... ``` | 直接提供代码片段 | 不想让 Claude 扫描整个文件时 |
| 中频 | 拖拽文件到终端 | 文件路径自动填入 | 快速输入文件路径 | macOS 终端中快速引用本地文件 |
| 中频 | `/add-dir` | `/add-dir ../other-project` | 添加额外工作目录 | 需要跨目录读取或编辑文件 |
| 低频 | `/init` | `/init` | 初始化项目上下文 | 生成或更新 Claude 项目说明文件 |

---

## 7. Slash Commands 常用命令

| 使用频率 | 命令 | 作用 | 典型场景 |
|---|---|---|---|
| 高频 | `/clear` | 清空当前上下文 | 当前对话跑偏或想重新开始 |
| 高频 | `/compact` | 压缩上下文 | 长会话继续推进，避免上下文过长 |
| 高频 | `/model` | 查看或切换模型 | 根据任务复杂度调整模型 |
| 高频 | `/help` | 查看帮助 | 不确定命令用法 |
| 中频 | `/cost` | 查看 token / 成本信息 | 关注长任务成本 |
| 中频 | `/status` | 查看当前状态 | 检查账号、模型、目录、权限等 |
| 中频 | `/doctor` | 环境诊断 | 排查 Claude Code 安装或运行问题 |
| 中频 | `/config` | 查看或修改配置 | 调整默认行为 |
| 中频 | `/permissions` | 管理权限设置 | 调整工具、目录、命令执行权限 |
| 中频 | `/keybindings` | 打开快捷键配置 | 自定义快捷键 |
| 中频 | `/memory` | 管理记忆 / 项目上下文 | 维护长期项目说明 |
| 中频 | `/review` | 请求代码审查 | 让 Claude 检查当前改动 |
| 中频 | `/pr_comments` | 查看 PR 评论 | 处理 GitHub PR review 反馈 |
| 低频 | `/bug` | 提交 bug 反馈 | 向 Claude Code 团队反馈问题 |
| 低频 | `/release-notes` | 查看版本更新说明 | 了解新版变化 |
| 低频 | `/vim` | 切换 Vim 模式 | 习惯 Vim 编辑方式时使用 |

---

## 8. 输入编辑快捷键

| 使用频率 | 快捷键 | macOS 表示 | 作用 | 典型场景 |
|---|---|---|---|---|
| 高频 | `Ctrl + A` | `⌃A` | 光标移动到行首 | 快速修改 prompt 开头 |
| 高频 | `Ctrl + E` | `⌃E` | 光标移动到行尾 | 快速跳到 prompt 末尾 |
| 高频 | `Ctrl + U` | `⌃U` | 删除光标前整行内容 | 快速清空当前输入 |
| 高频 | `Ctrl + K` | `⌃K` | 删除光标后内容 | 删除当前行后半部分 |
| 高频 | `Option + ← / →` | `⌥← / ⌥→` | 按单词移动光标 | 编辑长 prompt |
| 中频 | `Ctrl + W` | `⌃W` | 删除光标前一个单词 | 快速改写局部内容 |
| 中频 | `Ctrl + Y` | `⌃Y` | 粘贴刚删除的内容 | 配合 `Ctrl + U/K/W` 使用 |
| 中频 | `Ctrl + L` | `⌃L` | 清屏 | 终端内容太多时清理视图 |

---

## 9. 多行输入

| 使用频率 | 快捷键 / 输入方式 | 作用 | 典型场景 |
|---|---|---|---|
| 高频 | 直接粘贴多行文本 | 输入多行 prompt 或代码 | 粘贴需求、错误日志、代码片段 |
| 高频 | 使用 Markdown 代码块 | 保持代码格式 | 让 Claude 准确识别代码语言 |
| 中频 | 反斜杠续行 | 输入较长命令或说明 | 需要分行但保持同一条输入 |
| 中频 | 外部编辑器 | 用编辑器撰写长 prompt | 长需求、复杂任务说明 |

---

## 10. 自定义快捷键

| 使用频率 | 命令 / 文件 | 作用 | 说明 |
|---|---|---|---|
| 中频 | `/keybindings` | 创建或打开快捷键配置文件 | Claude Code v2.1.18+ 支持 |
| 中频 | `~/.claude/keybindings.json` | 快捷键配置文件路径 | 修改后通常自动生效 |
| 中频 | `claude --version` | 查看 Claude Code 版本 | 确认是否支持 keybindings |
| 低频 | `ctrl+e` → `chat:externalEditor` | 绑定外部编辑器 | 适合经常写长 prompt 的用户 |
| 低频 | 设置某快捷键为 `null` | 禁用快捷键 | 解决和终端快捷键冲突的问题 |

### 示例：自定义快捷键

```json
{
  "$schema": "https://www.schemastore.org/claude-code-keybindings.json",
  "$docs": "https://code.claude.com/docs/en/keybindings",
  "bindings": [
    {
      "context": "Chat",
      "bindings": {
        "ctrl+e": "chat:externalEditor",
        "ctrl+u": null
      }
    }
  ]
}
```

## 11. 按场景速查

| 场景 | 推荐操作 |
|---|---|
| 分析某个文件 | `@path/to/file` |
| 分析某个目录 | `@path/to/dir/` |
| 复用上一条 prompt | `↑` |
| 搜索历史 prompt | `Ctrl + R` |
| 中断当前回复 | `Esc` |
| 强制取消当前任务 | `Ctrl + C` |
| 退出 Claude Code | `Ctrl + D` |
| 查看 thinking 摘要 / 工具调用过程 | `Ctrl + O` |
| 打开命令菜单 | `/` |
| 查看快捷键帮助 | `?` |
| 清空上下文 | `/clear` |
| 压缩上下文 | `/compact` |
| 切换计划模式 / 自动接受编辑模式 | `Shift + Tab` |
| 回滚到之前 checkpoint | 连按两次 `Esc` |
| 查看当前模型 | `/model` |
| 查看 token / 成本 | `/cost` |
| 检查环境问题 | `/doctor` |
| 自定义快捷键 | `/keybindings` |
| 管理权限 | `/permissions` |
| 查看当前状态 | `/status` |
| 代码审查 | `/review` |


## 12. 个人推荐记忆版

| 优先级 | 必记快捷键 / 命令 | 用途 |
|---|---|---|
| P0 | `Ctrl + C` | 立即停止 |
| P0 | `Esc` | 打断回复 |
| P0 | `Ctrl + D` | 退出 |
| P0 | `↑ / ↓` | 找历史输入 |
| P0 | `/` | 打开命令菜单 |
| P0 | `@文件路径` | 引用文件 |
| P0 | `Shift + Tab` | 切换工作模式 |
| P0 | `Ctrl + O` | 查看详细过程 |
| P1 | `/clear` | 清空上下文 |
| P1 | `/compact` | 压缩上下文 |
| P1 | `Esc, Esc` | 回滚 checkpoint |
| P1 | `Ctrl + R` | 搜索历史 prompt |
| P1 | `/model` | 切换模型 |
| P1 | `/cost` | 查看消耗 |
| P2 | `/permissions` | 管理权限 |
| P2 | `/keybindings` | 自定义快捷键 |
| P2 | `/doctor` | 环境诊断 |
| P2 | `/review` | 代码审查 |
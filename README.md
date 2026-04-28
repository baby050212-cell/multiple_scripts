# Multiple Scripts

个人日用脚本、配置和工具片段集合。

这个仓库主要用于长期积累和快速检索：需要时可以直接查看、复制某个子目录下的脚本或配置。各子目录之间没有强耦合，不按统一应用或 monorepo 管理。

## 目录索引

```text
multiple_scripts/
├── automator/                         # macOS Finder/Automator 快速操作脚本
│   ├── README.md                      # 使用说明
│   ├── alacritty.sh                   # 在 Alacritty 中打开选中项所在目录
│   └── opencode.sh                    # 在 Alacritty 中打开目录并启动 opencode
├── pot-app-translate-plugin/          # Pot-App DeepSeek 翻译插件
│   ├── README.md                      # Pot-App 插件编写与打包说明
│   ├── .github/workflows/build.yml    # 插件打包和 Release 工作流
│   └── deepseek/
│       ├── main.js                    # 插件主逻辑
│       ├── info.json                  # 插件元数据、模型和语言映射
│       └── deepseek.svg               # 插件图标
├── tips/                              # 个人配置和速查资料
│   ├── README.md                      # 使用说明
│   ├── init.lua                       # Neovim 基础配置示例
│   ├── nvim.md                        # Vim/Neovim 操作速查
│   └── zshrc                          # zsh 配置示例
└── .gitignore
```

## 子目录说明

### automator

macOS Finder/Automator 快速操作脚本，用于在选中文件或文件夹时快速打开 Alacritty。

- `alacritty.sh`：在 Alacritty 中打开选中项所在目录。
- `opencode.sh`：在 Alacritty 中打开目录并启动 `opencode`。

适合复制到 Automator 快速操作中使用。依赖 macOS、Alacritty，以及脚本中调用到的命令行工具。

### pot-app-translate-plugin

Pot-App DeepSeek 翻译插件项目。

- 支持 `deepseek-v4-flash` 和 `deepseek-v4-pro` 模型。
- 核心逻辑在 `deepseek/main.js`。
- 插件配置在 `deepseek/info.json`。
- `.github/workflows/build.yml` 用于插件仓库中的自动打包和发布。

### tips

个人配置和速查资料，不建议直接全量覆盖本机配置。

- `init.lua`：Neovim 基础配置示例。
- `nvim.md`：Vim/Neovim 高频操作速查。
- `zshrc`：zsh 配置示例，复制前需要替换本机路径、代理、密钥等占位值。

## 维护原则

- 保持轻量：优先用目录、文件名和 README 做索引。
- 方便复制：每个子目录尽量自解释，不强依赖其他目录。
- 避免泄密：真实 token、API key、cookie 等只保留在本机环境，不提交到仓库。
- 不过度抽象：脚本数量不多时不强行提取公共框架。

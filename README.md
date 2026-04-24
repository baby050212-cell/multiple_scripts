# Multiple Scripts

日用脚本与工具集合。

## 目录结构

```
multiple_scripts/
├── automator/                    # macOS Finder 快速操作脚本
│   ├── alacritty.sh              # 在 Alacritty 中打开当前目录
│   └── opencode.sh               # 在 Alacritty 中打开当前目录并启
├── pot-app-translate-plugin/     # Pot-App 翻译插件
│   └── deepseek/                 # DeepSeek 翻译插件
│       ├── main.js               # 插件主逻辑
│       ├── info.json             # 插件元数据
│       └── deepseek.svg          # 插件图标
└── .github/
    └── workflows/
        └── build.yml             # CI 自动打包 .potext 插件
```

## 子项目说明

### automator

macOS Automator 快速操作脚本，用于在 Finder 中右键菜单快速打开 Alacritty 终端。

- `alacritty.sh` — 在 Alacritty 新 Tab 中打开选中文件/文件夹所在目录
- `opencode.sh` — 在 Alacritty 新 Tab 中打开目录并启动 [opencode](https://opencode.ai)

### pot-app-translate-plugin

为 [pot-app](https://github.com/pot-app) 翻译工具编写的 DeepSeek 翻译插件。

- 支持 `deepseek-v4-flash` 和 `deepseek-v4-pro` 模型
- 推送 Tag 后 GitHub Actions 自动打包发布 Release

-- =========================
-- Neovim 基础配置
-- ~/.config/nvim/init.lua
-- =========================

-- leader 键
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- =========================
-- 基础体验
-- =========================
vim.opt.number = true                 -- 显示行号
vim.opt.relativenumber = true         -- 相对行号，方便跳转
vim.opt.cursorline = true             -- 高亮当前行
vim.opt.wrap = false                  -- 不自动换行
vim.opt.scrolloff = 8                 -- 光标上下保留 8 行
vim.opt.sidescrolloff = 8
vim.opt.termguicolors = true          -- 真彩色
vim.opt.signcolumn = "yes"            -- 左侧诊断栏固定显示
vim.opt.mouse = "a"                   -- 开启鼠标
vim.opt.clipboard = "unnamedplus"     -- 使用系统剪贴板

-- =========================
-- 缩进
-- =========================
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- =========================
-- 搜索
-- =========================
vim.opt.ignorecase = true             -- 搜索忽略大小写
vim.opt.smartcase = true              -- 包含大写时区分大小写
vim.opt.hlsearch = true               -- 高亮搜索结果
vim.opt.incsearch = true              -- 边输入边搜索

-- =========================
-- 文件与性能
-- =========================
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true               -- 持久化 undo
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500

-- =========================
-- 外观
-- =========================
-- default、habamax、industry、koehler、lunaperche、morning、murphy、pablo、
-- peachpuff、quiet、retrobox、shine、slate、sorbet、torte、wildcharm、zaibatsu、zellner
vim.opt.background = "dark"
vim.cmd.colorscheme("murphy")
vim.opt.pumheight = 10                -- 补全菜单高度
vim.opt.laststatus = 3                -- 全局状态栏
vim.opt.showmode = false              -- 不显示 -- INSERT --，状态栏插件会处理
vim.opt.cmdheight = 1

-- =========================
-- 常用快捷键
-- =========================

-- 取消搜索高亮
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear search highlight" })

-- 保存文件
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })

-- 退出
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })

-- 全选
vim.keymap.set("n", "<leader>a", "ggVG", { desc = "Select all" })

-- 复制整行但不带换行
vim.keymap.set("n", "<leader>y", "0vg_y", { desc = "Yank line without newline" })

-- 系统剪贴板复制
vim.keymap.set({ "n", "v" }, "<leader>Y", '"+y', { desc = "Yank to system clipboard" })

-- 系统剪贴板粘贴
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Paste from system clipboard" })

-- 普通模式下用 J/K 移动选中行
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

-- 分屏导航
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- 调整分屏大小
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

-- 插入模式快速退出
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })

-- =========================
-- 基础自动命令
-- =========================

-- 保存时去掉行尾空格
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    vim.cmd([[%s/\s\+$//e]])
  end,
})

-- 回到上次编辑位置
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local line_count = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= line_count then
      vim.api.nvim_win_set_cursor(0, mark)
    end
  end,
})

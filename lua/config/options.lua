-- [[ Setting options ]] See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make relative line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
-- vim.opt.clipboard = 'unnamedplus'

-- Tab width
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Enable break indent
vim.opt.wrap = true
vim.opt.textwidth = 80
vim.opt.breakindent = true

-- Enable smart indent for code
vim.opt.smartindent = true

-- Save undo history
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the
-- search term
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 1000

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 250

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣', leadmultispace = '|   ' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = false

vim.opt.termguicolors = true

-- Put a vertical line that should not be crossed when writing
vim.opt.colorcolumn = '81'

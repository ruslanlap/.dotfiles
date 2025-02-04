-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Схема кольорів Tokyo Night
vim.cmd[[colorscheme tokyonight-storm]]
vim.cmd [[
    highlight @keyword.import guifg=#f7768e
]]

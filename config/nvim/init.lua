-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Схема кольорів Tokyo Night
vim.cmd[[colorscheme tokyonight-storm]]
vim.cmd [[
    highlight @keyword.import guifg=#f7768e
]]
vim.cmd("hi NoiceCmdlinePopupBorderCmdline guifg=#a6e3a1")
-- Додайте конфігурацію для суцільної лінії через Noice налаштування

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Схема кольорів Tokyo Night
vim.cmd[[colorscheme tokyonight-storm]]
vim.cmd [[
    highlight @keyword.import guifg=#f7768e
]]

-- Додайте цей код у ваш init.lua
for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
    vim.api.nvim_set_hl(0, group, {})
end

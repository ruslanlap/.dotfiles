-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
--evim.api.nvim_create_autocmd("VimLeave", {
--
--
vim.api.nvim_create_autocmd("VimLeave", {
  pattern = "*",
  callback = function()
    vim.fn.system('printf "\\e[5 q" > $TTY')
  end,
})


-- Restore cursor blinking on exit
vim.api.nvim_create_autocmd("VimLeave", {
  pattern = "*",
  callback = function()
    vim.opt.guicursor = "a:blinkwait700-blinkoff400-blinkon250"
    -- Reset cursor to default blinking block
    vim.fn.system('printf "\\e[1 q\\e[?12h" > $TTY')
  end,
})

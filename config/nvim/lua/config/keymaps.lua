-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Copy to system clipboard
--
--
--
-- Paste mappings for all modes
--
-- Terminal-friendly paste mappings
--#vim.keymap.set('n', '<S-Insert>', 'a<C-r><C-o>+<Esc>', { desc = 'Paste in normal mode' })
--#vim.keymap.set('i', '<S-Insert>', '<C-r><C-o>+', { desc = 'Paste in insert mode' })
--#vim.keymap.set('t', '<S-Insert>', '<C-r><C-o>+', { desc = 'Paste in terminal mode' })
-- Ctrl-Shift-V #mappings
--#vim.keymap.set('n', '<C-S-v>', 'a<C-r><C-o>+<Esc>', { desc = 'Paste in normal mode' #})
--#vim.keymap.set('i', '<C-S-v>', '<C-r><C-o>+', { desc = 'Paste in insert mode' })
--#vim.keymap.set('t', '<C-S-v>', '<C-r><C-o>+', { desc = 'Paste in terminal mode' })\



-- Cut, Copy, Paste mappings
-- Ctrl-Shift-X to cut
vim.keymap.set('v', '<C-S-x>', '"+x', { desc = 'Cut to clipboard' })

-- Ctrl-Shift-C to copy
vim.keymap.set('v', '<C-S-c>', '"+y', { desc = 'Copy to clipboard' })

-- Ctrl-Shift-V to paste in different modes
vim.keymap.set('n', '<C-S-v>', '"+gP', { desc = 'Paste in normal mode' })
vim.keymap.set('i', '<C-S-v>', '<C-R>+', { desc = 'Paste in insert mode' })

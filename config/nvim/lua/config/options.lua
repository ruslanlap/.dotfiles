-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- Enable cursor blinking
vim.opt.guicursor = {
  'n-v-c:block-blinkwait700-blinkoff400-blinkon250',
  'i-ci-ve:ver25-blinkwait700-blinkoff400-blinkon250',
  'r-cr-o:hor20',

}


-- Enable system clipboard integr
--
-- Reset clipboard settings
vim.opt.clipboard = ''

-- Set clipboard provider
vim.g.clipboard = {
  name = 'myClip',
  copy = {
    ['+'] = 'xsel -ib',
    ['*'] = 'xsel -ib',
  },
  paste = {
    ['+'] = 'xsel -ob',
    ['*'] = 'xsel -ob',
  },
  cache_enabled = false,
}

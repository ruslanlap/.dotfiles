return {
  { "MunifTanjim/nui.nvim", lazy = true },
  {
    "folke/noice.nvim",
    opts = {
      views = {
        cmdline_popup = {
          position = {
            row = "50%",
            col = "50%",
          },
          relative = "editor",
          border = {
            style = "rounded",
            padding = { 0, 1 },
            color = "#00FF00", -- Green border
          },
          win_options = {
            winblend = 0,
            winhighlight = {
              Normal = "NoiceCmdlinePopupNormal",
              FloatBorder = "NoiceCmdlinePopupBorder",
            },
          },
          size = {
            width = "auto",
          },
        },
      },
      cmdline = {
        enabled = true,
        view = "cmdline_popup",
        format = {
          -- Command mode
          cmdline = { pattern = "^:", icon = "⮞ ", lang = "vim" },
          -- Search patterns
          search_down = { kind = "search", pattern = "^/", icon = "🔍 ", lang = "regex" },
          search_up = { kind = "search", pattern = "^%?", icon = "🔎 ", lang = "regex" },
          -- Shell commands
          shell = { pattern = "^!", icon = "🐚 ", lang = "bash" },
          -- Lua commands
          lua = { pattern = "^:%s*lua%s+", icon = "🌙 ", lang = "lua" },
          -- Help commands
          help = { pattern = "^:%s*he?l?p?%s+", icon = "❓ ", lang = "help" },
          -- Calculator
          calculator = { pattern = "^=", icon = "🧮 ", lang = "vim" },
        },
      },
      messages = {
        enabled = true,
        view = "notify",
        view_error = "notify",
        view_warn = "notify",
        view_history = "messages",
        view_search = "virtualtext",
      },
      popupmenu = {
        enabled = true,
        backend = "nui",
        kind_icons = {
          Class = "📚 ",
          Color = "🎨 ",
          Constant = "📕 ",
          Constructor = "🔨 ",
          Enum = "📑 ",
          EnumMember = "📝 ",
          Field = "🏷️ ",
          File = "📄 ",
          Folder = "📁 ",
          Function = "⚡ ",
          Interface = "🔌 ",
          Keyword = "🔑 ",
          Method = "🔮 ",
          Module = "📦 ",
          Property = "💎 ",
          Snippet = "✂️ ",
          String = "🔤 ",
          Variable = "📎 ",
        },
      },
      highlights = {
        NoiceCmdlinePopupBorder = { fg = "#00FF00" }, -- Ensure the border is green
        NoiceCmdlinePopupNormal = { bg = "#1c1c1c" }, -- Adjust background if needed
      },
    },
  },
}


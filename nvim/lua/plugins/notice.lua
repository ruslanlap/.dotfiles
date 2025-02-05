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
            style = "single", -- changed to single line
            padding = { 0, 1 },
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
          cmdline = { pattern = "^:", icon = "▶👉 ", lang = "vim" },
          search_down = { kind = "search", pattern = "^/", icon = "🔍 ", lang = "regex" },
          search_up = { kind = "search", pattern = "^%?", icon = "🔎 ", lang = "regex" },
          shell = { pattern = "^!", icon = "🐚 ", lang = "bash" },
          lua = { pattern = "^:%s*lua%s+", icon = "🌙 ", lang = "lua" },
          help = { pattern = "^:%s*he?l?p?%s+", icon = "❓ ", lang = "help" },
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
          Class = "📚 ", Color = "🎨 ", Constant = "📕 ",
          Constructor = "🔨 ", Enum = "📑 ", EnumMember = "📝 ",
          Field = "🏷️ ", File = "📄 ", Folder = "📁 ",
          Function = "⚡ ", Interface = "🔌 ", Keyword = "🔑 ",
          Method = "🔮 ", Module = "📦 ", Property = "💎 ",
          Snippet = "✂️ ", String = "🔤 ", Variable = "📎 ",
        },
      },
    },
  },
}

return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "black" },
      },
      -- Видаляємо format_on_save, бо LazyVim це робить автоматично
    },
  },
}

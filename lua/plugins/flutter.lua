return {
  "nvim-flutter/flutter-tools.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for vim.ui.select
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("telescope").load_extension("flutter")
    vim.keymap.set(
      "n",
      "<leader>a",
      require("telescope").extensions.flutter.commands,
      { noremap = true, desc = "Commands", silent = false }
    )
    require("flutter-tools").setup({
      widget_guides = {
        enabled = true,
      },
      lsp = {
        color = {
          enabled = true,
        },
        on_attach = function() end,
      },
    })
  end,
}

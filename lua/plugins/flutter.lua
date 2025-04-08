return {
  "akinsho/flutter-tools.nvim",
  ft = "dart",
  lazy = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for vim.ui.select
  },
  -- opts = {
  --   widget_guides = {
  --     enabled = true,
  --   },
  --   lsp = {
  --     color = {
  --       enabled = true,
  --     },
  --     on_attach = function() end,
  --   },
  -- },
  config = function()
    require("telescope").load_extension("flutter")
    vim.keymap.set(
      "n",
      "<leader>a",
      require("telescope").extensions.flutter.commands,
      { noremap = true, silent = false }
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

    -- require("flutter-tools").setup_project({
    --   {
    --     name = "Custom launch configs for flutter",
    --     flavor = "webFlavor",
    --     flutter_mode = "debug",
    --     dart_define_from_file = "launch.json",
    --   },
    -- })
  end,
}

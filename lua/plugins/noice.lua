return {
	"folke/noice.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",       -- necessário
    "nvim-treesitter/nvim-treesitter",
    "rcarriga/nvim-notify",       -- notificação opcional
  },
  config = function()
    require("noice").setup({
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      routes = {
        {
          view = "cmdline_popup",    -- exibe os comandos centralizados
          filter = { event = "cmdline" }
        }
      },
      presets = {
        command_palette = true,      -- estilo centralizado
      },
    })
  end
}

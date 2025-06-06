return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
           require'lualine'.setup {
          options = {
            icons_enabled = true,
            theme = 'gruvbox-material',
            section_separators = '',
          }
        }
  end
}

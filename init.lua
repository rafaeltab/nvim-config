-- The nvim configuration for nvim
require 'base'
setup({
  {
    'declancm/cinnamon.nvim',
    config = function()
      require('cinnamon').setup({
        default_keymaps = true,
        extra_keymaps = true,
        extended_keymaps = true,
        always_scroll = true,
        centered = true,
        scroll_limit = -1
      })
    end
  }
})
-- vim.opt.termguicolors = false
-- vim: ts=2 sts=2 sw=2 et

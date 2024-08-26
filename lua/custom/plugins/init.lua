-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'romgrk/barbar.nvim',
    config = function()
      -- Example barbar.nvim setup
      vim.g.bufferline = {
        animation = true,
        auto_hide = false,
        icons = 'both',
        clickable = true,
        icon_custom_colors = false,
        maximum_length = 30,
        sidebar_filetypes = { NvimTree = true }, -- adjust this based on other plugins you use
      }

      -- Key mappings for buffer navigation
      vim.api.nvim_set_keymap('n', '<TAB>', ':BufferNext<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<S-TAB>', ':BufferPrevious<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>c', ':BufferClose<CR>', { noremap = true, silent = true })
    end,
  },
}

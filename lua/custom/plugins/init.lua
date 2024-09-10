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
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'doom', --  theme is doom and hyper default is hyper
        config = {
          header = {
            [[.llll,     .llll ;llllllll,    .;codxdoc,     ;xxxx.     dxxxd .llll.   dxxxo    'xxxx.  ]],
            [[,MMMMMKc   lMMMM OMMMMXXXXd  cKMMMMMMMMMMWO'   kMMMN'   OMMMN' lMMMM,  ,MMMMMk  ,WMMMM0  ]],
            [[,MMMMMMMXc lMMMM OMMMM....  KMMMWo'...;OMMMW'   kMMMW' OMMMX.  lMMMM,  0MMMMMMO;WMMMMMM' ]],
            [[,MMMMxKMMMNKMMMM OMMMMMMMM,.MMMM0      .MMMMx    oMMMN0MMMN.   lMMMM, 'MMMMNMMMMMMWWMMMO ]],
            [[,MMMM, ,0MMMMMMM OMMMM;;;;. OMMMMk:'',lKMMMN.     oMMMMMMK.    lMMMM, 0MMMW.OMMMMM;oMMMM.]],
            [[,MMMM,   ,OMMMMM OMMMMMMMMk  ;OWMMMMMMMMMKd.       oMMMMK      lMMMM,.MMMMo  OMMW; .WMMMO]],
            [[.;;;;.     ';;;; ';;;;;;;;.     .;cllc:,.           ;WMK       .;;;;..;;;;    kW'   ';;;;]],
            [[                                                     :O                        .         ]],
            [[                                                                                         ]],
            [[                                      ⢀⣤⣶⣿⣿⣿⣿⣿⣷⣶⣤⡀                                       ]],
            [[                                     ⣴⣿⣿⣿⣿⣿⣿⣿⠿⣿⣿⣾⣴⠁⣀                                     ]],
            [[                                    ⠀⣿⣿⣿⡿⣿⣿⣯⣿⣿⣦⢙⣿⣿⣷⣧⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                 ]],
            [[                                ⠀ ⠀⠀⠀⢸⣿⣿⠃⠹⣿⣿⠀⠙⠻⣧⣿⣿⣷⣿⣧⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
            [[                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⡿⠀⠀⠸⣿⣧⡀⠀⠈⠙⠻⢿⣿⡛⠷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀       ]],
            [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                   ⠀⣿⠁⠀⠀⢀⣿⣿⣷⣄⡀⠀⠀⠀⠈⣻⣯⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀       ]],
            [[                                     ⠀⢿⣄⠀⣀⣾⣿⣿⣿⣿⣿⡶⣶⣶⣾⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀       ]],
            [[                                     ⠀⠀⠙⠿⠿⢿⡇⢀⣈⣉⣻⣿⣶⣶⣶⣦⡦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀       ]],
            [[                                     ⠀⠀⠀ ⠀⠀⢩⣯⣿⣿⣿⣯⡷⡧⣏⣿⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀       ]],
            [[                   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡏⠀⠀⠀⠈⠻⣿⣟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀       ]],
            [[                   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⡄⠀⠀⠀⠀⠹⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀       ]],
            [[                                     ⠀⠀⠀⠀⠀⠀⠀⠀⠙⣆⠀⠀⠀⠀⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀       ]],
            [[                                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡄⠀⠀⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀       ]],
            [[                                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢷⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀       ]],
            [[                                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡆⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀       ]],
            [[                                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀       ]],
            [[                                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠲⠚⠀⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀       ]],
          },
          center = {
            { icon = '  ', desc = '   Find File', action = 'Telescope find_files', shortcut = 'SPC f f' },
            { icon = '  ', desc = '   Bookmarks', action = 'Telescope marks', shortcut = 'SPC f m' },
          },
          footer = { 'Do you like scary movies?' },
        }, --  config used for theme
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  },
}

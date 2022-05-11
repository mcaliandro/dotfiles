-- include packer config
require('packer_init')

-- include core config
require('core/settings')
require('core/keymaps')

-- include plugins config
require('plugins/indent-blankline')
require('plugins/lualine')
require('plugins/nvim-tree')
require('plugins/nvim-treesitter')
require("plugins/toggleterm")

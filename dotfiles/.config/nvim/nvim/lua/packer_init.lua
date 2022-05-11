-- configure Neovim to automatically run :PackerCompile whenever plugins.lua is updated
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]

-- use 'packer' plugin manager as pre-requisite
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

-- automatically install packer if not done yet
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
	  'git', 'clone', '--depth', '1',
	  'https://github.com/wbthomason/packer.nvim',
	  install_path
  })
end


-- install the plugins
return require('packer').startup(function(use)
  -- plugins manager
  use 'wbthomason/packer.nvim'

  -- color scheme
  use 'shaunsingh/nord.nvim'

  -- greeter
  use {
    'goolord/alpha-nvim',
    config = function()
      require('alpha').setup(require('alpha.themes.dashboard').config)
    end
  }

  -- indentation style
  use 'lukas-reineke/indent-blankline.nvim'

  -- file explorer tree + related icons set
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'

  -- markdown preview
  use {'ellisonleao/glow.nvim', branch = 'main'}

  -- status line
  use 'nvim-lualine/lualine.nvim'

  -- syntax parser
  use 'tree-sitter/tree-sitter'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- tabline plugin
  use 'romgrk/barbar.nvim'

  -- terminal plugin
  use 'akinsho/toggleterm.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

-- See: https://github.com/nvim-treesitter/nvim-treesitter#quickstart
require('nvim-treesitter.configs').setup {
  -- A list of parser names, or "all"
  ensure_installed = {
    'bash',
    'dockerfile',
    'go',
    'hcl',
    'lua',
    'markdown',
    'python',
    'vim'
  },
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  highlight = {
    -- `false` will disable the whole extension
    enable = true,
  }
}

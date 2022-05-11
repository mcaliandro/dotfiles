local set = vim.opt             -- set options

-- Disable built-in plugins
local disabled_plugins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers"
}

for _, plugin in pairs(disabled_plugins) do
    vim.g["loaded_" .. plugin] = 1
end

-- encoding
set.encoding = 'utf-8'
set.fileencoding = 'utf-8'
set.ttyfast = true

-- indentation
set.autoindent = true           -- enable autoindent
set.expandtab = true            -- convert tabs into white spaces
set.smartindent = true          -- autoindent new lines
set.smarttab = true             -- enable smart tab
set.shiftwidth = 4              -- width for auto indents
set.softtabstop = 4             -- see multiple spaces as tabstops so <BS? does the right thing
set.tabstop = 4                 -- number of colums occupied by a tab
set.wrap = false                -- don't wrap long lines

-- interface
set.cursorline = true           -- highlight current line
set.laststatus = 2              -- set global statusline
set.number = true               -- enable line numbers
--set.relativenumber = true     -- enable relative line numbers
set.scrolloff = 5

-- search
set.hlsearch = true             -- highlight search
set.incsearch = true            -- incremental search
set.ignorecase = true           -- case insensitive
set.showmatch = true            -- show matching parenthesis
set.smartcase = true            -- ignore lower case for patterns

-- windows and panes
set.splitbelow = true           -- open new split panes below ...
set.splitright = true           -- ... and to the right

-- enable termguicolors and use 'nord' colors scheme
-- see plugin shaunsingh/nord.nvim
vim.cmd
[[
  if (has("termguicolors"))
    set termguicolors
  endif
  colorscheme nord
]]

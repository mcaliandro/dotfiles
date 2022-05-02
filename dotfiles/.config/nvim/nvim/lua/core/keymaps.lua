-- use a function to define keymaps
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- change leader key
vim.g.mapleader = '\\'  -- vim default is backslash

-- nvim-tree
map('n', '<C-n>', ':NvimTreeToggle<CR>')        -- open/close
map('n', '<leader>t', ':NvimTreeFocus<CR>')	-- focus
map('n', '<leader>r', ':NvimTreeRefresh<CR>')   -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>')  -- search file

-- barbar.nvim
map('n', '<A-h>', ':BufferPrevious<CR>', opts)      -- move to prev tab
map('n', '<A-l>', ':BufferNext<CR>', opts)          -- move to next tab
map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)  -- reorder to prev
map('n', '<A->>', ':BufferMoveNext<CR>', opts)      -- reorder to next
map('n', '<A-1>', ':BufferGoto 1<CR>', opts)        -- goto <n> buffer position
map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
map('n', '<A-0>', ':BufferLast<CR>', opts)          -- goto last buffer position
map('n', '<A-p>', ':BufferPin<CR>', opts)           -- pin/unpin buffer
map('n', '<A-c>', ':BufferClose<CR>', opts)         -- close buffer
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
map('n', '<C-p>', ':BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', ':BufferOrderByLanguage<CR>', opts)

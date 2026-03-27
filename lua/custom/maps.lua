-- NeoTree
vim.keymap.set('n', '<Leader>nt', ':Neotree reveal<CR>', {})

-- Comment
vim.api.nvim_set_keymap('n', '<Leader>/', ':Comment <CR>', {})
vim.api.nvim_set_keymap('v', '<Leader>/', ':Comment <CR>', {})

-- Save
vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', {})

-- Tab new
vim.api.nvim_set_keymap('n', '<Leader>tn', ':tabnew<CR>', {})

-- Yank to end of line
vim.api.nvim_set_keymap('n', 'Y', 'y$', {})

-- Improved "n" and "N" behavior
vim.api.nvim_set_keymap('n', 'n', 'nzzzv', { noremap = true })
vim.api.nvim_set_keymap('n', 'N', 'Nzzzv', { noremap = true })

-- move between diagnostics
vim.keymap.set('n', '[[', function() vim.diagnostic.jump { count = -1 } end, { desc = 'Go to previous diagnostic' })
vim.keymap.set('n', ']]', function()
  vim.diagnostic.jump { count = 1 }
  vim.cmd 'Lspsaga code_action'
end, { desc = 'Go to next diagnostic and open code action' })

-- Code action
vim.keymap.set('n', '<Leader>ca', '<cmd>Lspsaga code_action<CR>', { desc = 'Code Action' })

-- Telescope
local builtin = require 'telescope.builtin'
-- Files
vim.keymap.set('n', '<Leader>ff', builtin.find_files, { desc = 'Find Files' })
vim.keymap.set('n', '<Leader>fg', builtin.live_grep, { desc = 'Live Grep (project search)' })
vim.keymap.set('n', '<Leader>fb', builtin.buffers, { desc = 'Find open Buffers' })
vim.keymap.set('n', '<Leader>fr', builtin.oldfiles, { desc = 'Recent Files' })
vim.keymap.set('n', '<Leader>fw', builtin.grep_string, { desc = 'Find word under cursor' })
vim.keymap.set('n', '<Leader>fl', builtin.current_buffer_fuzzy_find, { desc = 'Fuzzy search current file' })

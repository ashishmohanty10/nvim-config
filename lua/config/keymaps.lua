-- Clear search highlight
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Terminal
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Split navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- neo tree
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Explorer NeoTree (Root Dir)" })

--cloak 
vim.keymap.set("n", "<leader>uc", "<cmd>CloakToggle<cr>", { desc = "Toggle Cloak (show/hide secrets)" })


-- Move line down
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { silent = true })

-- Move line up
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { silent = true })

-- Move selected block down
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { silent = true })

-- Move selected block up
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { silent = true })

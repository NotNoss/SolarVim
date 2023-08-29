local keymap = vim.keymap.set

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", { desc = "Window Left" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Window Down" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Window Up" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Window Right" })

-- Resize with arrows
keymap("n", "<S-Up>", ":resize -2<CR>", { desc = "Resize Up" })
keymap("n", "<S-Down>", ":resize +2<CR>", { desc = "Resize Down" })
keymap("n", "<S-Left>", ":vertical resize -2<CR>", { desc = "Resize Left" })
keymap("n", "<S-Right>", ":vertical resize +2<CR>", { desc = "Resize Right" })

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", { desc = "Next Buffer" })
keymap("n", "<S-h>", ":bprevious<CR>", { desc = "Previous Buffer" })

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", { desc = "Clear [H]ightlights" })

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", { desc = "Close Buffer" })

-- Better paste
keymap("v", "p", "P", { desc = "Better Paste" })

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", { desc = "Change to Insert" })

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", { desc = "Indent Left" })
keymap("v", ">", ">gv", { desc = "Indent Right" })

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Open File [E]xplorer" })

-- Telescope
keymap('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
keymap('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
keymap('n', '<leader>/', function()
	require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
		winblend = 10,
		previewer = false,
	})
end, { desc = '[/] Fuzzily search in current buffer' })

keymap('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
keymap('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
keymap('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
keymap('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
keymap('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
keymap('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })

-- Diagnostic
keymap('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
keymap('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
keymap('n', '<leader>dm', vim.diagnostic.open_float, { desc = 'Open floating [D]iagnostic [M]essage' })
keymap('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Open [D]iagnostics [L]ist' })

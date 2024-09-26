---------------------
-- Custom Commands --
---------------------
local cmd = vim.api.nvim_create_user_command
cmd("Config", "edit ~/.config/nvim", {})

--------------------
-- Custom Keymaps --
--------------------
local keymap = vim.keymap.set

-- Open Terminal
keymap("n", "<c-t>", "<CMD>terminal<CR>")
keymap("i", "<c-t>", "<CMD>terminal<CR>")

-- esc to disable highlight after search
keymap("n", "<esc>", "<CMD>nohlsearch<CR>")

-- Diagnostic keymaps
keymap("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
keymap("n", "<C-d>", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
keymap("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
keymap("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
keymap("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- TIP: Disable arrow keys in normal mode
keymap("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
keymap("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
keymap("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
keymap("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')
keymap("n", "<leader>qq", "<cmd>q<cr>")
keymap("n", "<leader>ww", "<cmd>w<cr>")

-- Setup copy paste with system clipboard
keymap({ "n", "v" }, "y", '"+y<cr>')
keymap({ "n", "v" }, "p", '"+p<cr>')

-- Function key shortcuts
keymap({ "n", "v", "i" }, "<F1>", "<cmd>Telescope find_files<cr>")
keymap({ "n", "v", "i" }, "<F2>", "<cmd>Telescope live_grep<cr>")
keymap({ "n", "v", "i" }, "<F3>", "<cmd>Trouble diagnostics toggle<cr>")
keymap({ "n", "v", "i" }, "<F6>", vim.lsp.buf.rename)

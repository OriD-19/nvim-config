require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<CR>", { desc = "Find document symbols" })

map("n", "<S-K>", "<cmd>lua vim.lsp.buf.hover({border='single'})<CR>", { desc = "Show signature help" })
map("n", "<leader>s", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "Show error details " })
map("n", "<leader>rf", "<cmd>lua vim.lsp.buf.references()<CR>", { desc = "Find all references for symbol" })
map("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Open lazygit" })

map("n", "<leader>e", "<cmd>Oil<CR>", { desc = "Open Oil file explorer" })

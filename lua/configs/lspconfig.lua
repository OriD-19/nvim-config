require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "pyright", "clangd", "gopls", "ts_ls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
vim.lsp.config("pyright", {
  settings = {},
  filetypes = { "python" },
})

vim.lsp.config("clangd", {
  settings = {},
  filetypes = { "cpp", "c", "h", "hpp" },
})

vim.lsp.config("gopls", {
  settings = {},

  filetypes = { "go" },
})

vim.lsp.config("ts_ls", {
  settings = {},
  filetypes = { "typescript", "javascript" },
})

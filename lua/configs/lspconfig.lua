require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "pyright", "clangd", "gopls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
vim.lsp.config('pyright', {
  settings = {

  },
  filetypes = {"python"},
})

vim.lsp.config('clangd', {
    settings = {

    },
    filetypes = {'cpp'},
})

vim.lsp.config('gopls', {
    settings = {

    },

    filetypes = {'go'}
})

local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- css = { "prettier" },
    -- html = { "prettier" },
    python = { "black" },
    javascript = { "prettier" },
    typescript = { "prettier" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

-- to configure the tab usage, cuz we are chads
require('conform').formatters.prettier = {
    prepend_args = {
        "--use-tabs",
        "true"
    }
}

return options

return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },

  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>lg", "<cmd>LazyGit<CR>", desc = "LazyGit UI" },
    },
  },
  {
    "xeluxee/competitest.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    cmd = {
      "CompetiTest receive problem",
      "CompetiTest run",
    },
    keys = {
      {
        "<leader>cn",
        "<cmd>CompetiTest receive problem<CR>",
        desc = "Receive Problem",
      },
      {
        "<leader>cr",
        "<cmd>CompetiTest run<CR>",
        desc = "Run program with testcases",
      },
    },
    config = function()
      require("competitest").setup({
                received_problems_path = "$(CWD)/$(PROBLEM)/$(PROBLEM).$(FEXT)",
            })
    end,
  },
}

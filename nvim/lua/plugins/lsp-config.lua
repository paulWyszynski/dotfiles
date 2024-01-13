return {
  -- MASON INSTALLER: LSPS, FORMATTERS, LINTERS --
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "bash-language-server",
        "bash-debug-adapter",
        "lemminx",
        "shellcheck",
        "xmlformatter",
        "yaml-language-server",
      })
    end,
  },
  -- LSPCONFIG --
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lemminx = {},
        yamlls = {},
        -- lemminx = function ()
        --   require("lspconfig").setup()
        -- end
      },
    },
  },
  -- TREESITTER --
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add more
      vim.list_extend(opts.ensure_installed, {
        "xml",
        "yaml",
      })
    end,
  },
  -- FORMATTERS --
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        xml = { "xmlformat" },
        yaml = { "yamlfmt" },
      },
    },
  },
}
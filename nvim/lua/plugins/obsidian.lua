return {
  "epwalsh/obsidian.nvim",
  lazy = true,
  ft = "markdown",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    workspaces = {
      {
        name = "Paulaner",
        path = "~/Dev/Git/obsidian/Paulaner",
      },
      { -- NOTE: Use obsidian bullet highlighting also for all MD files not only Obsidian workspaces
        name = "no-vault",
        path = function()
          -- alternatively use the CWD:
          -- return assert(vim.fn.getcwd())
          return assert(vim.fs.dirname(vim.api.nvim_buf_get_name(0)))
        end,
        overrides = {
          notes_subdir = vim.NIL, -- have to use 'vim.NIL' instead of nil
          new_notes_location = "current_dir",
          templates = {
            subdir = vim.NILa,
          },
          disable_frontmatter = true,
        },
      },
    },
  },
}

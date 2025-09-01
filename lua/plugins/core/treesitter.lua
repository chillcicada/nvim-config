-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    { "IndianBoy42/tree-sitter-just" },
  },
  opts = function(_, opts)
    opts.incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>", -- Ctrl + Space
        node_incremental = "<C-space>",
        scope_incremental = "<A-space>", -- Alt + Space
        node_decremental = "<bs>", -- Backspace
      },
    }

    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "lua",
      "regex",
      "nix",
      "csv",
      "diff",
      "gitignore",
    })
  end,
}

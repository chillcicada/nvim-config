-- AstroLSP allows you to customize the features in AstroNvim's LSP configuration engine
-- Configuration documentation can be found with `:h astrolsp`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    -- Configuration table of features provided by AstroLSP
    features = {
      autoformat = true, -- enable or disable auto formatting on start
      codelens = true, -- enable/disable codelens refresh on start
      inlay_hints = true, -- enable/disable inlay hints on start
      semantic_tokens = true, -- enable/disable semantic token highlighting
    },
    -- customize lsp formatting options
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = true, -- enable or disable format on save globally
      },
      timeout_ms = 1000, -- default format timeout
    },
    servers = {
      "lua_ls", -- lua
      "nil_ls", -- nix
    },

    -- Configure buffer local auto commands to add when attaching a language server
    autocmds = {
      -- first key is the `augroup` to add the auto commands to (:h augroup)
      lsp_document_highlight = {
        -- Optional condition to create/delete auto command group
        -- can either be a string of a client capability or a function of `fun(client, bufnr): boolean`
        -- condition will be resolved for each client on each execution and if it ever fails for all clients,
        -- the auto commands will be deleted for that buffer
        cond = "textDocument/documentHighlight",
        -- cond = function(client, bufnr) return client.name == "lua_ls" end,
        -- list of auto commands to set
        {
          -- events to trigger
          event = { "CursorHold", "CursorHoldI" },
          -- the rest of the autocmd options (:h nvim_create_autocmd)
          desc = "Document Highlighting",
          callback = function() vim.lsp.buf.document_highlight() end,
        },
        {
          event = { "CursorMoved", "CursorMovedI", "BufLeave" },
          desc = "Document Highlighting Clear",
          callback = function() vim.lsp.buf.clear_references() end,
        },
      },
    },
    -- mappings to be set up on attaching of a language server
    mappings = {
      n = {
        gl = {
          function() vim.diagnostic.open_float() end,
          desc = "Hover diagnostics",
        },

        -- refactoring
        ["<Leader>ri"] = {
          function() require("refactoring").refactor "Inline Variable" end,
          desc = "Inverse of extract variable",
        },
        ["<Leader>rb"] = {
          function() require("refactoring").refactor "Extract Block" end,
          desc = "Extract Block",
        },
        ["<Leader>rbf"] = {
          function() require("refactoring").refactor "Extract Block To File" end,
          desc = "Extract Block To File",
        },
        ["<Leader>rr"] = {
          function() require("telescope").extensions.refactoring.refactors() end,
          desc = "Prompt for a refactor to apply",
        },
        ["<Leader>rp"] = {
          function() require("refactoring").debug.printf { below = false } end,
          desc = "Insert print statement to mark the calling of a function",
        },
        ["<Leader>rv"] = {
          function() require("refactoring").debug.print_var() end,
          desc = "Insert print statement to print a variable",
        },
        ["<Leader>rc"] = {
          function() require("refactoring").debug.cleanup {} end,
          desc = "Cleanup of all generated print statements",
        },
      },
      -- visual mode(what's the difference between v and x???)
      x = {
        -- refactoring
        ["<Leader>ri"] = {
          function() require("refactoring").refactor "Inline Variable" end,
          desc = "Inverse of extract variable",
        },
        ["<Leader>re"] = {
          function() require("refactoring").refactor "Extract Function" end,
          desc = "Extracts the selected code to a separate function",
        },
        ["<Leader>rf"] = {
          function() require("refactoring").refactor "Extract Function To File" end,
          desc = "Extract Function To File",
        },
        ["<Leader>rv"] = {
          function() require("refactoring").refactor "Extract Variable" end,
          desc = "Extracts occurrences of a selected expression to its own variable",
        },
        ["<Leader>rr"] = {
          function() require("telescope").extensions.refactoring.refactors() end,
          desc = "Prompt for a refactor to apply",
        },
      },
    },
  },
}

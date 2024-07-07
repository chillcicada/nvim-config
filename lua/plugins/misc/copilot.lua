return {
  "zbirenbaum/copilot.lua",
  opts = function(_, opts)
    opts.filetypes = {
      plaintext = false,
      markdown = false,
    }
  end,
}

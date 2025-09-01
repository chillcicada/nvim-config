-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  "andweeb/presence.nvim",

  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  {
    "NStefan002/screenkey.nvim",
    lazy = false,
    version = "*",
  },
}

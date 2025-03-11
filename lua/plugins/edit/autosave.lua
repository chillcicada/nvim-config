return {
  "0x00-ketsu/autosave.nvim",
  event = { "InsertLeave", "TextChanged" },
  opts = function(_, opts)
    opts.prompt_style = "stdout"
  end,
}

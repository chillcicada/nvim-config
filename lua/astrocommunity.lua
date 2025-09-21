---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- Motion
  { import = "astrocommunity.motion.mini-surround" },
  { import = "astrocommunity.motion.mini-ai" },
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.motion.flit-nvim" },
  { import = "astrocommunity.scrolling.nvim-scrollbar" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  -- Wakatime
  { import = "astrocommunity.media.vim-wakatime" },
  -- Language Support
  { import = "astrocommunity.pack.lua" },
  -- colorscheme
  { import = "astrocommunity.colorscheme.catppuccin" },
  -- Lua implementation of CamelCaseMotion, with extra consideration of punctuation.
  { import = "astrocommunity.motion.nvim-spider" },
}

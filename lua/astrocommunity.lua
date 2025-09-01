---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- Motion
  { import = "astrocommunity.motion.mini-surround" },
  -- https://github.com/echasnovski/mini.ai
  { import = "astrocommunity.motion.mini-ai" },
  { import = "astrocommunity.motion.flash-nvim" },
  -- Highly experimental plugin that completely replaces
  -- the UI for messages, cmdline and the popupmenu.
  -- { import = "astrocommunity.utility.noice-nvim" },
  -- Fully featured & enhanced replacement for copilot.vim
  -- <Tab> work with both auto completion in cmp and copilot
  { import = "astrocommunity.media.vim-wakatime" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.motion.flit-nvim" },
  { import = "astrocommunity.scrolling.nvim-scrollbar" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  -- Language Support
  { import = "astrocommunity.pack.lua" },
  -- colorscheme
  { import = "astrocommunity.colorscheme.catppuccin" },
  -- Lua implementation of CamelCaseMotion, with extra consideration of punctuation.
  { import = "astrocommunity.motion.nvim-spider" },
  -- AI Assistant
  { import = "astrocommunity.completion.copilot-lua-cmp" },
}

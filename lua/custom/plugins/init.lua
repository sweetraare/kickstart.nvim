-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  -- themes
  'morhetz/gruvbox',
  'gertjanreynaert/cobalt2-vim-theme',
  'ap/vim-css-color',
  'arcticicestudio/nord-vim',
  'Badacadabra/vim-archery',
  'gilgigilgil/anderson.vim',
  'ajmwagar/vim-deus',
  'cocopon/iceberg.vim',
  'sainnhe/everforest',
  'artanikin/vim-synthwave84',
  { 'folke/tokyonight.nvim', branch = 'main' },
  { 'catppuccin/vim', as = 'catppuccin' },
  'rebelot/kanagawa.nvim',

  'christoomey/vim-tmux-navigator',
  'tpope/vim-commentary',
  'tpope/vim-fugitive',
  'tpope/vim-surround',
  'folke/flash.nvim',
  'mbbill/undotree',
  'theprimeagen/harpoon',
  'theprimeagen/refactoring.nvim',
  {
    'nvimdev/lspsaga.nvim',
    opts = {
      ui = { border = 'rounded' },
      code_action = {
        show_server_name = true,
        extend_gitsigns = false,
      },
    },
  },
  'andymass/vim-matchup',
  'ap/vim-css-color',
}

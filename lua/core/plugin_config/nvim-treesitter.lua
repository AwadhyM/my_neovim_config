require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c","cpp", "yaml", "python", "lua", "rust", "ruby", "vim" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    disable = { " " },
  },
  indent = { enable = true, disable = { "yaml" } },
}

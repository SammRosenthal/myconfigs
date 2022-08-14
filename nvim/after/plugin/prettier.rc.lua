local status, prettier = pcall(require, "prettier")
if (not status) then return end

prettier.setup {
  bin = 'prettierd',
  config_precedence = "prefer-file",
  filetypes = {
    "css",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "scss",
    "less"
  },
  singleQuote = true,
  trailingComma = 'all',
  printWidth = 100,
  arrow_parens = "always",
  bracket_spacing = true,
  tab_width = 2,
  use_tabs = false,
  semi = true,
}

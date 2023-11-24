local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "kawaleo.lsp.mason"
require "kawaleo.lsp.null-ls"
require "kawaleo.lsp.lsp-extensions"

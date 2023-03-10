local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting
local sources = {
    formatting.eslint,
    formatting.autopep8,
    formatting.stylua,
    formatting.djlint,
    formatting.prettier
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local lsp_formatting = function(bufnr)
    vim.lsp.buf.format({
            filter = function(client)
                -- apply whatever logic you want (in this example, we'll only use null-ls)
                    return client.name == "null-ls"
                end,
            bufnr = bufnr,
        })
end

local on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
                lsp_formatting(bufnr)
            end,
        })
    end
end

null_ls.setup({
    sources = sources,
    on_attach = on_attach,
})

-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
-- local null_ls = require("null-ls")
--
-- local opts = {
--   sources = {
--     null_ls.builtins.diagnostics.eslint,
--     null_ls.builtins.formatting.prettier,
--   },
--   on_attach = function (client, bufnr)
--     if client.supports_method("textDocument/formatting") then
--       vim.api.nvim_clear_autocmds({
--         group = augroup,
--         buffer = bufnr,
--       })
--       vim.api.nvim_create_autocmd("BufWritePre", {
--         group = augroup,
--         buffer = bufnr,
--         callback = function ()
--           vim.lsp.buf.format({ bufnr = bufnr })
--         end,
--       })
--     end
--   end,
-- }
--
-- return opts
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls_ok, null_ls = pcall(require, "null-ls")
if not null_ls_ok then
  return
end

local sources = {
  -- python
  null_ls.builtins.formatting.black.with({
    extra_args = { "--line-length=120" }
  }),
  null_ls.builtins.formatting.isort,
}

-- print("hello bash")
-- null_ls.setup({ sources = sources })
null_ls.setup({
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                    vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
        end
    end,
    sources = sources,
})

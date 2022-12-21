local null_ls = require("null-ls")

-- code action sources
local code_actions = null_ls.builtins.code_actions

-- diagnostic sources
local diagnostics = null_ls.builtins.diagnostics

-- formatting sources
local formatting = null_ls.builtins.formatting

-- hover sources
-- local hover = null_ls.builtins.hover
--
-- -- completion sources
-- local completion = null_ls.builtins.completion

null_ls.setup({
    sources = {
        code_actions.eslint_d, code_actions.gitsigns, diagnostics.actionlint,
        diagnostics.chktex, diagnostics.clang_check, diagnostics.commitlint,
        diagnostics.djlint, diagnostics.dotenv_linter, diagnostics.eslint_d,
        diagnostics.pyproject_flake8, diagnostics.luacheck,
        diagnostics.markdownlint, diagnostics.tsc, diagnostics.zsh,

        formatting.autoflake, formatting.autopep8, formatting.cbfmt,
        formatting.clang_format, formatting.djlint, formatting.eslint_d,
        formatting.fixjson, formatting.gersemi, formatting.lua_format,
        formatting.markdown_toc, formatting.pg_format, formatting.prettierd,
        formatting.rustfmt, formatting.rustywind, formatting.yamlfmt
    },
    cmd = { "nvim" },
    debounce = 250,
    debug = false,
    default_timeout = 5000,
    diagnostic_config = nil,
    diagnostics_format = "#{m}",
    fallback_severity = vim.diagnostic.severity.ERROR,
    log_level = "warn",
    notify_format = "[null-ls] %s",
    on_attach = nil,
    on_init = nil,
    on_exit = nil,
    root_dir = require("null-ls.utils").root_pattern(".null-ls-root",
        "Makefile", ".git"),
    temp_dir = nil,
    border = nil,
    update_in_insert = false
})

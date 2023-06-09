local null_ls = require("null-ls")
null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.pylint,
    null_ls.builtins.formatting.black.with({
      extra_args = { "--line-length", "80" }
    }),
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.formatting.prettier,
  },
  root_dir = require("null-ls.utils").root_pattern(
    ".git"
  ),
})

local null_ls = require "null-ls"

local opts = {
  sources = {
    null_ls.builtins.formatting.clang_format.with {
      filetypes = { "c", "cpp" },
    },
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.csharpier,
    null_ls.builtins.formatting.google_java_format,
    null_ls.builtins.formatting.stylua,
  },
}

return opts

local mappings = {}

mappings.disabled = {
  n = {
    ["<leader>wa"] = "",
    ["<leader>wl"] = "",
    ["<leader>wr"] = "",
    ["<leader>wk"] = "",
    ["<leader>ch"] ="",
    ["<leader>wK"] = "",
    ["<C-n>"] = "",
  }
}

mappings.nvimtree = {
  plugin = true,

  n = {
    ["<leader>w"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  },
}

mappings.general = {
  n = {
    ["J"] = { "mzJ`z", "enhanced nvim builtin" },
    ["<leader>y"] = { [["+y"]], "Copy to system clipboard" },
    ["<leader>Y"] = { [["+Y"]], "Copy line to system clipboard" },
    ["<leader>cs"] = { "<cmd> NvCheatsheet <CR>", "Mapping cheatsheet" },
  },

  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "Move selection down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move selection up" },
    ["<leader>y"] = { [["+y"]], "Copy to system clipboard" },
  },
}

-- Since jdtls uses its own plugin
mappings.jdtls = {
  plugin = true,

  n = {
    ["gD"] = {
      function()
        vim.lsp.buf.declaration()
      end,
      "LSP declaration",
    },

    ["gd"] = {
      function()
        vim.lsp.buf.definition()
      end,
      "LSP definition",
    },

    ["K"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },

    ["gi"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      "LSP implementation",
    },

    ["<leader>ls"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "LSP signature help",
    },

    ["<leader>D"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      "LSP definition type",
    },

    ["<leader>ra"] = {
      function()
        vim.lsp.buf.rename()
      end,
      "LSP rename",
    },

    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },

    ["gr"] = {
      function()
        vim.lsp.buf.references()
      end,
      "LSP references",
    },

    ["<leader>lf"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "Floating diagnostic",
    },

    ["[d"] = {
      function()
        vim.diagnostic.goto_prev { float = { border = "rounded" } }
      end,
      "Goto prev",
    },

    ["]d"] = {
      function()
        vim.diagnostic.goto_next { float = { border = "rounded" } }
      end,
      "Goto next",
    },

    ["<leader>q"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      "Diagnostic setloclist",
    },
  },

  v = {
    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },
  },
}

require("core.utils").load_mappings("jdtls")

mappings.whichkey = {
  plugin = false,

  n = {
    -- q, for query key :D
    ["<leader>qK"] = {
      function()
        vim.cmd "WhichKey"
      end,
      "Which-key all keymaps",
    },
    ["<leader>qk"] = {
      function()
        local input = vim.fn.input "WhichKey: "
        vim.cmd("WhichKey " .. input)
      end,
      "Which-key query lookup",
    },
  },
}

return mappings

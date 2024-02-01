local jdtls_path = vim.fn.expand "~/.local/share/nvim/mason/bin/jdtls"
local workspace_dir = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

local config = {
  cmd = { jdtls_path, "-data", vim.fn.expand("~/.cache/jdtls/workspace/" .. workspace_dir) },
  root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
}

require("jdtls").start_or_attach(config)


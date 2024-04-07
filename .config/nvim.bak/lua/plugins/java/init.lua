return {
  {
    "mfussenegger/nvim-jdtls",
    ---@type lspconfig.options.jdtls
    ---@diagnostic disable-next-line: missing-fields
    opts = {
      jdtls = function(opts)
        local install_path = require("mason-registry").get_package("jdtls"):get_install_path()
        local jvmArg = "-javaagent:" .. install_path .. "/lombok.jar"
        table.insert(opts.cmd, "--jvm-arg=" .. jvmArg)
        return opts
      end,
      on_attach = function(_, _)
        vim.api.nvim_create_autocmd(
          { "BufWritePre" },
          { pattern = "*.java", command = "lua require('jdtls').organize_imports()" }
        )
      end,
    },
  },
}

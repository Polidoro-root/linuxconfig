vim.opt_local.expandtab = true
vim.opt_local.softtabstop = 4
vim.opt_local.shiftwidth = 4

local config = {
  cmd = { require('mason-registry').get_package('jdtls'):get_install_path() .. '/jdtls' },
  root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
}

require('jdtls').start_or_attach(config)

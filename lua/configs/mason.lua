dofile(vim.g.base46_cache .. "mason")

require("mason").setup()

return {
	PATH = "skip",

	ui = {
		icons = {
			package_pending = " ",
			package_installed = " ",
			package_uninstalled = " ",
		},
	},
	enusre_installed = {
		"clangd",
		"clang-format",
		"codelldb",
		"cppcheck",
		"jdtls",
	},
	max_concurrent_installers = 10,
}

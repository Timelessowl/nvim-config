local lint = require("lint")

lint.linters_by_ft = {
	-- cpp = { "cpplint" },
	-- lua = { "luacheck" },
	cpp = { "cppcheck" },
	-- haskell = { "hlint" },
	-- python = { "flake8" },
}

lint.linters.luacheck.args = {
	unpack(lint.linters.luacheck.args),
	"--globals",
	"love",
	"vim",
}

lint.linters.cpplint.args = {
	unpack(lint.linters.cpplint.args or {}),
	"--filter=-legal/copyright,-whitespace,-build/namespaces", -- пример аргументов для cpplint
}

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
	callback = function()
		lint.try_lint()
	end,
})

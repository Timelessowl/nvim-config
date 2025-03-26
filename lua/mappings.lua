require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

map("n", "d", '"_d', { desc = "delete without yank" })
map("n", "dd", '"_dd', { desc = "delete without yank" })
map("n", "D", '"_D', { desc = "delete without yank" })

map("n", "<C-a>", "ggVG", { desc = "select all" })

map("n", "<C-H>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-L>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-J>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-K>", "<C-w>k", { desc = "switch window up" })

map("n", "<C-H>", "<cmd> TmuxNavigateLeft<CR>", { desc = "switch window left" })
map("n", "<C-L>", "<cmd> TmuxNavigateRight<CR>", { desc = "switch window right" })
map("n", "<C-J>", "<cmd> TmuxNavigateDown<CR>", { desc = "switch window down" })
map("n", "<C-K>", "<cmd> TmuxNavigateUp<CR>", { desc = "switch window up" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

map("n", "<C-s>", "<cmd>w<CR>", { desc = "general save file" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "general copy whole file" })

map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "toggle line number" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })
map("n", "<leader>ch", "<cmd>NvCheatsheet<CR>", { desc = "toggle nvcheatsheet" })

map("n", "<leader>fm", function()
	require("conform").format({ lsp_fallback = true })
end, { desc = "general format file" })

-- global lsp mappings
map("n", "<leader>ds", vim.diagnostic.setloclist, { desc = "LSP diagnostic loclist" })

-- tabufline
map("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer new" })

map("n", "<tab>", function()
	require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })

map("n", "<S-tab>", function()
	require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })

map("n", "<leader>x", function()
	require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

-- Comment
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- nvimtree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })

-- telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })
map("n", "<leader>fe", "<cmd>Telescope lsp_document_symbols<CR>", { desc = "telescope lsp document symbols" })
map("n", ":", "<cmd>Telescope cmdline<CR>", { desc = "telescope command line" })

map("n", "<leader>th", function()
	require("nvchad.themes").open()
end, { desc = "telescope nvchad themes" })

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map(
	"n",
	"<leader>fa",
	"<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
	{ desc = "telescope find all files" }
)

-- terminal
map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

-- new terminals
map("n", "<leader>h", function()
	require("nvchad.term").new({ pos = "sp" })
end, { desc = "terminal new horizontal term" })

map("n", "<leader>v", function()
	require("nvchad.term").new({ pos = "vsp" })
end, { desc = "terminal new vertical term" })

map("n", "<leader>t", function()
	require("nvchad.term").new({ pos = "float" })
end, { desc = "terminal new floating term" })

-- toggleable
map({ "n", "t" }, "<A-v>", function()
	require("nvchad.term").toggle({ pos = "vsp", id = "vtoggleTerm" })
end, { desc = "terminal toggleable vertical term" })

map({ "n", "t" }, "<A-h>", function()
	require("nvchad.term").toggle({ pos = "sp", id = "htoggleTerm" })
end, { desc = "terminal toggleable horizontal term" })

map({ "n", "t" }, "<A-i>", function()
	require("nvchad.term").toggle({ pos = "float", id = "floatTerm" })
end, { desc = "terminal toggle floating term" })

-- whichkey
map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "whichkey all keymaps" })

map("n", "<leader>wk", function()
	vim.cmd("WhichKey " .. vim.fn.input("WhichKey: "))
end, { desc = "whichkey query lookup" })

-- window management
map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
map("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

map("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
map("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
map("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
map("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
map("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- dap
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Add breakpoint at line" })
map("n", "<leader>dr", "<cmd>DapContinue<CR>", { desc = "Start or continue the debugger" })
map("n", "<leader>dl", "<cmd>DapStepOut<CR>", { desc = "Step out of the current function/method" })
map("n", "<leader>dj", "<cmd>DapStepInto<CR>", { desc = "Step into the current function/method" })
map("n", "<leader>dk", "<cmd>DapStepOut<CR>", { desc = "Step out of the current function/method" })
map("n", "<leader>dc", "<cmd>DapClearBreakpoints<CR>", { desc = "Clear all breakpoints" })

-- gitsigns
map("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Preview hunk" })
map("n", "<leader>gb", ":Gitsigns blame_line<CR>", { desc = "Blame line" })
map("n", "<leader>gl", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle current line blame" })

-- copilot
map("i", "<C-E>", 'copilot#Accept("\\<CR>")', { silent = true, expr = true, replace_keycodes = false })
map("i", "<C-]>", "<Plug>(copilot-next)")

-- codeium
map("i", "<C-e>", function()
	return vim.fn["codeium#Accept"]()
end, { expr = true, silent = true })
map("i", "<C-q>", function()
	return vim.fn["codeium#AcceptNextLine"]()
end, { expr = true, silent = true })
map("i", "<C-w>", function()
	return vim.fn["codeium#AcceptNextWord"]()
end, { expr = true, silent = true })

-- neogit mappings
map("n", "<leader>gs", ":Neogit kind=split<CR>", { desc = "Neogit split window" })
map("n", "<leader>gc", ":Neogit commit<CR>", { desc = "Neogit commit" })
map("n", "<leader>gp", ":Neogit push<CR>", { desc = "Neogit push" })
map("n", "<leader>gP", ":Neogit pull<CR>", { desc = "Neogit pull" })
map("n", "<leader>gf", ":Neogit fetch<CR>", { desc = "Neogit fetch" })
map("n", "<leader>gF", ":Neogit fetch --all<CR>", { desc = "Neogit fetch all" })
map("n", "<leader>gC", ":Neogit clone<CR>", { desc = "Neogit clone" })
map("n", "<leader>gS", ":Neogit stash<CR>", { desc = "Neogit stash" })
map("n", "<leader>gR", ":Neogit rebase<CR>", { desc = "Neogit rebase" })
map("n", "<leader>gM", ":Neogit merge<CR>", { desc = "Neogit merge" })
map("n", "<leader>gB", ":Neogit branch<CR>", { desc = "Neogit branch" })
map("n", "<leader>gD", ":Neogit diff<CR>", { desc = "Neogit diff" })
map("n", "<leader>gX", ":Neogit reset<CR>", { desc = "Neogit reset" })
map("n", "<leader>gg", ":Neogit<CR>", { desc = "Neogit" })

-- Java
map(
	"n",
	"<leader>jr",
	":w<CR>:belowright split | terminal java %<CR>:startinsert<CR>",
	{ desc = "Compile and run current Java file" }
)
map("n", "<leader>jc", ":!javac %<CR>", { desc = "Compile current Java file" })

-- lazygit
map("n", "<leader>lg", ":LazyGit<CR>", { desc = "LazyGit" })

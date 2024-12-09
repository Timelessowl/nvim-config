require "nvchad.options"

local o = vim.o

o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.expandtab = true
opt.autoindent = true

-- opt.ignorecase = true
--opt.smartcase = true

opt.cursorline = true

opt.clipboard:append "unnamedplus"

opt.splitright = true
opt.splitbelow = true

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

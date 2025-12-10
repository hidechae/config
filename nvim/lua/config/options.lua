-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- Display
opt.number = true -- Show line numbers
opt.relativenumber = false -- Disable relative line numbers
opt.scrolloff = 5 -- Keep 5 lines visible when scrolling

-- Tab settings
opt.tabstop = 2 -- Tab width
opt.shiftwidth = 2 -- Indent width
opt.expandtab = true -- Use spaces instead of tabs

-- Cursor
opt.guicursor = "n-v-c-i:block" -- Block cursor in all modes
opt.mouse = "" -- Disable mouse

-- Conceal - Disable text concealing
opt.conceallevel = 0 -- Show all text, don't hide anything
opt.concealcursor = "" -- Never conceal text even when cursor is on the line

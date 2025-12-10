-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Clear search highlight
map("n", "<Esc><Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight", silent = true })

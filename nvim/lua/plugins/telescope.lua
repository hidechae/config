return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- Override default keymaps and add custom ones
    { "ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "fm", "<cmd>Telescope oldfiles<cr>", desc = "Recent Files" },
    { "fc", "<cmd>Telescope colorscheme<cr>", desc = "Colorscheme" },
    { "fgs", "<cmd>Telescope git_status<cr>", desc = "Git Status" },
    { "<C-g>", "<cmd>Telescope live_grep<cr>", desc = "Grep (root dir)" },
  },
}

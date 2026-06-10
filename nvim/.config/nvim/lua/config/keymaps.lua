-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open Oil" })

-- Kulala (HTTP Client) Keymaps
vim.keymap.set("n", "<leader>Hs", "<cmd>lua require('kulala').run()<cr>", { desc = "Send request" })
vim.keymap.set("n", "<leader>Ha", "<cmd>lua require('kulala').run_all()<cr>", { desc = "Send all requests" })
vim.keymap.set("n", "<leader>Hb", "<cmd>lua require('kulala').scratchpad()<cr>", { desc = "Open scratchpad" })

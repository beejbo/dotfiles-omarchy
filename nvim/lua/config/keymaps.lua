-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function compile_and_run_cpp()
  local filename = vim.fn.expand("%:p") -- Ruta absoluta del archivo actual
  local output = vim.fn.expand("%:p:r") -- Ruta sin extensión

  -- Comandos para compilar y ejecutar
  local compile_cmd = "g++ -std=c++17 -Wall " .. filename .. " -o " .. output
  local run_cmd = output

  -- Abrir una terminal horizontal abajo
  vim.cmd("belowright split | terminal " .. compile_cmd .. " && " .. run_cmd)
end

-- Keybind para <leader>rr
vim.keymap.set("n", "<leader>rr", compile_and_run_cpp, { desc = "Compilar y ejecutar C++" })

--vim.keymap.set("v", "J", "<Cmd>m '>+1<CR>gv=gv")
--vim.keymap.set("v", "K", "<Cmd>m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("v", "J", ":move '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":move '<-2<CR>gv=gv", { silent = true })

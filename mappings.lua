-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    ["<C-d>"] = {"<C-d>zz"},
    ["<C-u>"] = {"<C-u>zz"},
    ["<leader><leader>"] = {"<Cmd>Neotree float reveal reveal_force_cwd<CR>", desc="Neotree float style"},
    ["<Tab>"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc = "Next buffer" },
    ["<S-Tab>"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or -1) end, desc = "Prev buffer" }
  },
  t = {
    ["<ESC>"] = {"<Cmd>ToggleTerm<CR>"},
    ["<Tab>"] = {"<C-\\><C-n>"}
  }
}

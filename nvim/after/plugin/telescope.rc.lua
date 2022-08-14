local status, telescope = pcall(require, "telescope")
if (not status) then return end
local builtin = require("telescope.builtin")

telescope.setup {
  defaults = {
    file_ignore_patterns = { "node_modules", "temp", ".git" },
  },
  find_files = {
    theme = "dropdown",
  }
}

-- find files
vim.keymap.set('n', '<leader>ff',
  function()
    builtin.git_files({
      show_untracked = true,
      -- no_ignore = true,
      -- hidden = true
    })
  end)

-- find words
vim.keymap.set('n', '<leader>fw', function()
  builtin.live_grep()
end)

-- find word under cursor
vim.keymap.set('n', '<leader>FF', function()
  builtin.grep_string()
end)

-- go to definition
vim.keymap.set('n', 'gd', function()
  builtin.lsp_definitions()
end)

-- list implementations
vim.keymap.set('n', 'gi', function()
  builtin.lsp_implementations()
end)

-- list references
vim.keymap.set('n', 'gr', function()
  builtin.lsp_references()
end)

-- list all git branches
vim.keymap.set('n', '<leader>gb', function()
  builtin.git_branches()
end)

-- list current changes in workspace
vim.keymap.set('n', '<leader>gc', function()
  builtin.git_status()
end)

-- list current stashes
vim.keymap.set('n', '<leader>gs', function()
  builtin.git_stash()
end)

-- run code action
vim.keymap.set('n', '<leader>ca', function()
  vim.lsp.buf.code_action()
end)

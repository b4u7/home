local builtin = require('telescope.builtin')
-- The following allow me to have a git find search, and all files search
-- pf for project files and C-p for git find search
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- <C-p> for fuzzy finding
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- project search
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

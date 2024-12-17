vim.keymap.set("n", "<leader>gd", vim.cmd.Gvdiffsplit, { desc = "Fugitive DiffSplit"})
vim.keymap.set("n", "<leader>gb", function() vim.cmd.Git("blame") end, { desc = "Fugitive Blame"})

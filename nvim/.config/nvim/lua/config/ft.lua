vim.filetype.add({
  extension = {
    bal = "ballerina",
  },
})

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.bal",
  callback = function(args)
    vim.bo[args.buf].filetype = "ballerina"
  end,
})

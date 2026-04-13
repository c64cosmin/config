function codeAction()
  if vim.bo.filetype == "rust" then
    vim.cmd.RustLsp("codeAction")
  else
    vim.lsp.buf.code_action()
  end
end

function showError()
  vim.diagnostic.open_float()
  --  if vim.bo.filetype == "rust" then
  --    vim.cmd.RustLsp("explainError")
  --  else
  --    vim.diagnostic.open_float()
  --  end
end

function showHover()
  vim.lsp.buf.hover()
  -- if vim.bo.filetype == "rust" then
  --   vim.cmd.RustLsp({ "hover", "actions" })
  -- else
  --   vim.lsp.buf.hover()
  -- end
end

function goToDefinition()
  vim.lsp.buf.definition()
end

function refactorRename()
  vim.lsp.buf.rename()
end

function showReferences()
  vim.lsp.buf.references()
end

vim.keymap.set("n", "<leader>ca", codeAction, { desc = "Code Action" })
vim.keymap.set("n", "<leader>cc", showError, { desc = "Line Diagnostics" })
vim.keymap.set("n", "<leader>cg", goToDefinition, { desc = "Go to Definition" })
vim.keymap.set("n", "<leader>ct", showHover, { desc = "Hover Docs" })
vim.keymap.set("n", "<leader>cn", refactorRename, { desc = "Rename" })
vim.keymap.set("n", "<leader>cr", showReferences, { desc = "References" })

-- markdown-preview.nvim renders markdown in a browser tab, including mermaid
-- diagrams (matching GitHub). Opens a live preview that updates as you type.
-- https://github.com/iamcco/markdown-preview.nvim

-- The plugin needs a prebuilt binary; build it after install/update.
-- The hook fires during vim.pack.add, so explicitly load the plugin first.
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kind
    if name == 'markdown-preview.nvim' and (kind == 'install' or kind == 'update') then
      vim.schedule(function()
        if not ev.data.active then
          vim.cmd.packadd('markdown-preview.nvim')
        end
        vim.fn['mkdp#util#install']()
      end)
    end
  end,
})

-- Filetypes markdown-preview should activate for (must be set before it loads)
vim.g.mkdp_filetypes = { 'markdown' }

vim.pack.add {
  {
    src = 'https://github.com/iamcco/markdown-preview.nvim',
    name = 'markdown-preview.nvim',
    version = vim.version.range '*',
  },
}

-- Open/close the browser preview. Lazy-loaded on first use via the command.
vim.keymap.set('n', '<leader>mp', '<Cmd>MarkdownPreviewToggle<CR>', { desc = '[M]arkdown [p]review toggle' })

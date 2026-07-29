-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

vim.pack.add {
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
}

vim.keymap.set('n', '<C-b>', '<Cmd>Neotree reveal<CR>', { desc = 'NeoTree reveal', silent = true })

require('neo-tree').setup {
  commands = {
    -- Open the file in the editor but keep focus in the tree.
    open_with_focus = function(state)
      local node = state.tree:get_node()
      if not node then
        return
      end
      if node.type == 'directory' then
        state.commands['toggle_node'](state)
        return
      end

      state.commands['open'](state)

      vim.schedule(function()
        -- Find the neo-tree window wherever it is and refocus it.
        for _, w in ipairs(vim.api.nvim_list_wins()) do
          if vim.api.nvim_win_is_valid(w) then
            local b = vim.api.nvim_win_get_buf(w)
            if vim.bo[b].filetype == 'neo-tree' then
              vim.api.nvim_set_current_win(w)
              return
            end
          end
        end
        -- Tree window is gone (it was the only window and got replaced):
        -- reopen it focused on the file we just opened.
        vim.cmd('Neotree reveal')
      end)
    end,
  },
  filesystem = {
    filtered_items = {
      visible = true,
      hide_dotfiles = false,
      hide_gitignored = false,
    },
    window = {
      mappings = {
        ['<C-b>'] = 'close_window',
        ['<tab>'] = { 'open_with_focus', nowait = true },
      },
    },
  },
}

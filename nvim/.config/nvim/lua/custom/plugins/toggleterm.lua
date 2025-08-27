return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',

    opts = {
      size = function(term)
        if term.direction == 'horizontal' then
          return 15
        elseif term.direction == 'vertical' then
          return math.floor(vim.o.columns * 0.4)
        end
        return 20
      end,

      open_mapping = [[<C-\>]],
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      persist_size = true,
      shade_terminals = true,
      direction = 'horizontal',
      close_on_exit = true,
      shell = vim.o.shell,
    },

    keys = function()
      local Terminal = require('toggleterm.terminal').Terminal

      local function horiz()
        Terminal:new({ direction = 'horizontal', size = 15 }):toggle()
      end

      local function vert()
        local w = math.floor(vim.o.columns * 0.4)
        Terminal:new({ direction = 'vertical', size = w }):toggle()
      end

      local function float()
        Terminal:new({ direction = 'float' }):toggle()
      end

      local function tab()
        Terminal:new({ direction = 'tab' }):toggle()
      end

      -- cycle layouts
      local directions = { horiz, vert, float, tab }
      local idx = 0
      local function cycle()
        idx = (idx % #directions) + 1
        directions[idx]()
      end

      return {
        { '<leader>th', horiz, mode = { 'n', 't' }, desc = 'Terminal: horizontal' },
        { '<leader>tv', vert, mode = { 'n', 't' }, desc = 'Terminal: vertical (40%)' },
        { '<leader>tf', float, mode = { 'n', 't' }, desc = 'Terminal: float' },
        { '<leader>tt', cycle, mode = { 'n', 't' }, desc = 'Terminal: cycle layout' },
      }
    end,
  },
}

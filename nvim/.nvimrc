version 6.0
let s:cpo_save=&cpo
set cpo&vim
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
inoremap <silent> <C-Bslash> <Cmd>ToggleTerm
imap <C-G>S <Plug>ISurround
imap <C-G>s <Plug>Isurround
inoremap <C-W> u
inoremap <C-U> u
nnoremap  
nnoremap <NL> <NL>
nnoremap  
nnoremap  
nmap  d
tnoremap  
nnoremap  <Cmd>nohlsearch
nnoremap <silent>  <Cmd>execute v:count . "ToggleTerm"
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
xnoremap <silent> <expr> @ mode() ==# 'V' ? ':normal! @'.getcharstr().'' : '@'
xnoremap <silent> <expr> Q mode() ==# 'V' ? ':normal! @=reg_recorded()' : 'Q'
xmap S <Plug>VSurround
nnoremap Y y$
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
xnoremap gb <Plug>(comment_toggle_blockwise_visual)
nnoremap gb <Plug>(comment_toggle_blockwise)
xmap gS <Plug>VgSurround
xnoremap gc <Plug>(comment_toggle_linewise_visual)
nnoremap gc <Plug>(comment_toggle_linewise)
xnoremap s <Nop>
xnoremap <silent> sa :lua MiniSurround.add('visual')
nnoremap s <Nop>
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nnoremap <silent> <C-Bslash> <Cmd>execute v:count . "ToggleTerm"
xnoremap <Plug>(comment_toggle_blockwise_visual) <Cmd>lua require("Comment.api").locked("toggle.blockwise")(vim.fn.visualmode())
xnoremap <Plug>(comment_toggle_linewise_visual) <Cmd>lua require("Comment.api").locked("toggle.linewise")(vim.fn.visualmode())
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <C-K> 
nnoremap <C-J> <NL>
nnoremap <C-H> 
nmap <C-W><C-D> d
nnoremap <C-L> 
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap  u
inoremap  u
inoremap <silent>  <Cmd>ToggleTerm
let &cpo=s:cpo_save
unlet s:cpo_save
set clipboard=unnamedplus
set confirm
set helplang=en
set ignorecase
set inccommand=split
set listchars=nbsp:␣,tab:»\ ,trail:·
set noloadplugins
set mouse=a
set packpath=/opt/homebrew/Cellar/neovim/0.11.5_1/share/nvim/runtime
set runtimepath=~/.config/nvim,~/.local/share/nvim/lazy/lazy.nvim,~/.local/share/nvim/lazy/which-key.nvim,~/.local/share/nvim/lazy/telescope-ui-select.nvim,~/.local/share/nvim/lazy/telescope-fzf-native.nvim,~/.local/share/nvim/lazy/telescope.nvim,~/.local/share/nvim/lazy/plenary.nvim,~/.local/share/nvim/lazy/todo-comments.nvim,~/.local/share/nvim/lazy/toggleterm.nvim,~/.local/share/nvim/lazy/nvim-treesitter,~/.local/share/nvim/lazy/guess-indent.nvim,~/.local/share/nvim/lazy/Comment.nvim,~/.local/share/nvim/lazy/mini.nvim,~/.local/share/nvim/lazy/mini.icons,~/.local/share/nvim/lazy/oil.nvim,~/.local/share/nvim/lazy/gitsigns.nvim,~/.local/share/nvim/lazy/vim-surround,~/.local/share/nvim/lazy/lazydev.nvim,~/.local/share/nvim/lazy/LuaSnip,~/.local/share/nvim/lazy/blink.cmp,~/.local/share/nvim/lazy/fidget.nvim,~/.local/share/nvim/lazy/mason-tool-installer.nvim,~/.local/share/nvim/lazy/mason-lspconfig.nvim,~/.local/share/nvim/lazy/mason.nvim,~/.local/share/nvim/lazy/nvim-lspconfig,~/.local/share/nvim/lazy/melange-nvim,~/.local/share/nvim/lazy/tokyonight.nvim,/opt/homebrew/Cellar/neovim/0.11.5_1/share/nvim/runtime,/opt/homebrew/Cellar/neovim/0.11.5_1/share/nvim/runtime/pack/dist/opt/matchit,/opt/homebrew/Cellar/neovim/0.11.5_1/lib/nvim,~/.local/state/nvim/lazy/readme,~/.local/share/nvim/lazy/mason-lspconfig.nvim/after
set scrolloff=10
set noshowmode
set smartcase
set splitbelow
set splitright
set statusline=%{%(nvim_get_current_win()==#g:actual_curwin\ ||\ &laststatus==3)\ ?\ v:lua.MiniStatusline.active()\ :\ v:lua.MiniStatusline.inactive()%}
set termguicolors
set timeoutlen=300
set undofile
set updatetime=250
set window=43
" vim: set ft=vim :

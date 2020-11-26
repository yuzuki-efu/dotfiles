if g:dein#_cache_version !=# 150 || g:dein#_init_runtimepath !=# '/home/yuzuki-efu/.vim/bundles/repos/github.com/Shougo/dein.vim/,/home/yuzuki-efu/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim82,/usr/share/vim/vimfiles/after,/home/yuzuki-efu/.vim/after' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/yuzuki-efu/.vimrc', '/home/yuzuki-efu/.dein/dein.toml', '/home/yuzuki-efu/.dein/dein-lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/yuzuki-efu/.vim/bundles'
let g:dein#_runtime_path = '/home/yuzuki-efu/.vim/bundles/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/home/yuzuki-efu/.vim/bundles/.cache/.vimrc'
let &runtimepath = '/home/yuzuki-efu/.vim/bundles/repos/github.com/Shougo/dein.vim/,/home/yuzuki-efu/.vim,/usr/share/vim/vimfiles,/home/yuzuki-efu/.vim/bundles/repos/github.com/neoclide/coc.nvim,/home/yuzuki-efu/.vim/bundles/.cache/.vimrc/.dein,/usr/share/vim/vim82,/home/yuzuki-efu/.vim/bundles/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/home/yuzuki-efu/.vim/after'
 nmap <silent> gd <Plug>(coc-definition)
 nmap <silent> gy <Plug>(coc-type-definition)
 nmap <silent> gi <Plug>(coc-implementation)
 nmap <silent> gr <Plug>(coc-references)
 nmap <leader>rn <Plug>(coc-rename)
 autocmd CursorHold * silent call CocActionAsync('highlight')
 nnoremap <silent> K :call <SID>show_documentation()<CR>
 function! s:show_documentation()
 if &filetype == 'vim'
  execute 'h '.expand('<cword>')
 else
  call CocAction('doHover')
 endif
 endfunction

" 很奇怪，目前编辑到的很多 Markdown 文档都是无法回到起始位置，并且无法使用下面的
" autocmd 只能用 Nvim 的历史记录跳转到这个文档，才能回到光标历史位置并启用 autocmd
" autocmd FileType markdown map <leader>w yiWi[<esc>Ea](<esc>pa)
autocmd FileType markdown inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd FileType markdown inoremap ,n ---<Enter><Enter>
autocmd FileType markdown inoremap ,x $$ <++><Esc>F$i
autocmd FileType markdown vnoremap X di$$<Esc>F$p
autocmd FileType markdown inoremap ,b **** <++><Esc>F*hi
autocmd FileType markdown vnoremap B di****<Esc>F*hp
autocmd FileType markdown inoremap ,s ~~~~ <++><Esc>F~hi
autocmd FileType markdown inoremap ,i ** <++><Esc>F*i
autocmd FileType markdown inoremap ,d `` <++><Esc>F`i
autocmd FileType markdown inoremap ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd FileType markdown inoremap ,h ====<Space><++><Esc>F=hi
autocmd FileType markdown inoremap ,p ![](<++>) <++><Esc>F[a
autocmd FileType markdown inoremap ,a [](<++>) <++><Esc>F[a
autocmd FileType markdown inoremap ,1 #<Space><Enter><++><Esc>kA
autocmd FileType markdown inoremap ,2 ##<Space><Enter><++><Esc>kA
autocmd FileType markdown inoremap ,3 ###<Space><Enter><++><Esc>kA
autocmd FileType markdown inoremap ,4 ####<Space><Enter><++><Esc>kA
autocmd FileType markdown inoremap ,l --------<Enter>

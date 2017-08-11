vnoremap <leader>gs :<c-u>call GrepSelection()<cr>

function! GrepSelection()
    let temp=@z
    normal! gv"zy
    silent exe "grep! -R " shellescape(eval("@z")) . " %:h"
    copen
    let @z=temp
endfunction

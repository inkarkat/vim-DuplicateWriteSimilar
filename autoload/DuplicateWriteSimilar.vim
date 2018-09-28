" DuplicateWriteSimilar.vim: Cascade the writing of a file to a similar location.
"
" DEPENDENCIES:
"   - DuplicateWrite.vim plugin
"   - ingo-library.vim plugin
"
" Copyright: (C) 2018 Ingo Karkat
"   The VIM LICENSE applies to this script; see ':help copyright'.
"
" Maintainer:	Ingo Karkat <ingo@karkat.de>

function! s:AddCmd( optionsAndCommands, prefix, cmd )
    if empty(a:cmd)
	return
    endif
    call add(a:optionsAndCommands, a:prefix . a:cmd)
endfunction
function! DuplicateWriteSimilar#OptionParser( arguments )
    let [l:opt, l:preCmd, l:postCmd, l:filePatterns] = DuplicateWrite#ParseFilePatterns(a:arguments)

    let l:optionsAndCommands = l:opt
    call s:AddCmd(l:optionsAndCommands, '+', l:preCmd)
    call s:AddCmd(l:optionsAndCommands, '-', l:postCmd)

    return [l:filePatterns, ingo#cmdargs#file#FileOptionsAndCommandsToEscapedExCommandLine(l:optionsAndCommands)]
endfunction

" vim: set ts=8 sts=4 sw=4 noexpandtab ff=unix fdm=syntax :

" DuplicateWriteSimilar.vim: Cascade the writing of a file to a similar location.
"
" DEPENDENCIES:
" - DuplicateWrite.vim plugin
" - EditSimilar.vim plugin
"
" Copyright: (C) 2018-2023 Ingo Karkat
"   The VIM LICENSE applies to this script; see ':help copyright'.
"
" Maintainer:	Ingo Karkat <ingo@karkat.de>
"
" REVISION	DATE		REMARKS
"	001	23-Sep-2018	file creation

" Avoid installing twice or when in unsupported Vim version.
if exists('g:loaded_DuplicateWriteSimilar') || (v:version < 700)
    finish
endif
let g:loaded_DuplicateWriteSimilar = 1

if v:version < 702 | runtime autoload/DuplicateWriteSimilar.vim | endif  " The Funcref doesn't trigger the autoload in older Vim versions.

call EditSimilar#CommandBuilder#SimilarFileOperations('DuplicateWrite', '<line1>,<line2>DuplicateWrite<bang>', 1, 1, {'omitOperationsWorkingOnlyOnExistingFiles': 1, 'completeAnyRoot': 1, 'OptionParser': function('DuplicateWriteSimilar#OptionParser'), 'isSupportRange': 1})

" vim: set ts=8 sts=4 sw=4 noexpandtab ff=unix fdm=syntax :

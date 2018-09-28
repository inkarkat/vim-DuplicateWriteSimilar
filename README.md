DUPLICATE WRITE SIMILAR   
===============================================================================
_by Ingo Karkat_

DESCRIPTION
------------------------------------------------------------------------------

This plugin combines the writing to additional target files of
DuplicateWrite.vim ([vimscript #4722](http://www.vim.org/scripts/script.php?script_id=4722)) with the selection of similar files
privided by EditSimilar.vim ([vimscript #2544](http://www.vim.org/scripts/script.php?script_id=2544)) to provide
:DuplicateWriteSubstitute, :DuplicateWritePlus etc. command variants of
the original :DuplicateWrite command.

USAGE
------------------------------------------------------------------------------

    :DuplicateWritePlus[!],  :DuplicateWriteMinus[!],
    :DuplicateWriteSubstitute[!],  :DuplicateWriteRoot[!]
                            Create a cascaded write of the current buffer to a
                            file with a similar name, using the substitutions and
                            iterations provided by the EditSimilar.vim plugin.
                            With [!], duplication only happens with forced
                            :write!, not with :write.

INSTALLATION
------------------------------------------------------------------------------

The code is hosted in a Git repo at
    https://github.com/inkarkat/vim-DuplicateWriteSimilar
You can use your favorite plugin manager, or "git clone" into a directory used
for Vim packages. Releases are on the "stable" branch, the latest unstable
development snapshot on "master".

This script is also packaged as a vimball. If you have the "gunzip"
decompressor in your PATH, simply edit the \*.vmb.gz package in Vim; otherwise,
decompress the archive first, e.g. using WinZip. Inside Vim, install by
sourcing the vimball or via the :UseVimball command.

    vim DuplicateWriteSimilar*.vmb.gz
    :so %

To uninstall, use the :RmVimball command.

### DEPENDENCIES

- Requires Vim 7.0 or higher.
- Requires the DuplicateWrite.vim plugin ([vimscript #4722](http://www.vim.org/scripts/script.php?script_id=4722)), version 2.10 or
  higher.
- Requires the EditSimilar.vim plugin ([vimscript #2544](http://www.vim.org/scripts/script.php?script_id=2544)), version 2.10 or
  higher.

CONTRIBUTING
------------------------------------------------------------------------------

Report any bugs, send patches, or suggest features via the issue tracker at
https://github.com/inkarkat/vim-DuplicateWriteSimilar/issues or email (address
below).

HISTORY
------------------------------------------------------------------------------

##### GOAL
First published version.

##### 0.01    23-Sep-2018
- Started development.

------------------------------------------------------------------------------
Copyright: (C) 2018 Ingo Karkat -
The [VIM LICENSE](http://vimdoc.sourceforge.net/htmldoc/uganda.html#license) applies to this plugin.

Maintainer:     Ingo Karkat <ingo@karkat.de>

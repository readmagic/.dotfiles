let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
let VM_mouse_mappings =  0 
let AutoPairsShortcutBackInsert = "<M-b>"
let NERDUsePlaceHolders = "1"
let AutoPairsLoaded =  1 
let AutoPairsShortcutToggle = "<M-p>"
let AutoPairsMapSpace =  1 
let AutoPairsMapCR =  1 
let AutoPairsMapCh =  1 
let NERDCommentEmptyLines = "0"
let AutoPairsMapBS =  1 
let AutoPairsSmartQuotes =  1 
let VM_default_mappings =  1 
let NERDRemoveAltComs = "1"
let VM_persistent_registers =  0 
let AutoPairsShortcutFastWrap = "<M-e>"
let NERDMenuMode = "3"
let NERDDefaultNesting = "1"
let VM_highlight_matches = "underline"
let AutoPairsCenterLine =  1 
let NERDToggleCheckAllLines = "0"
let VM_use_python =  0 
let NERDSpaceDelims = "0"
let VM_disable_syntax_in_imode =  0 
let VM_reselect_first =  0 
let NERDLPlace = "[>"
let NERDDefaultAlign = "none"
let NERDCreateDefaultMappings = "1"
let VM_debug =  0 
let AutoPairsMultilineClose =  1 
let NERDCommentWholeLinesInVMode = "0"
let NERDRPlace = "<]"
let AutoPairsShortcutJump = "<M-n>"
let NERDRemoveExtraSpaces = "0"
let VM_use_first_cursor_in_line =  0 
let AutoPairsFlyMode =  0 
let VM_case_setting = "smart"
let NERDTrimTrailingWhitespace = "0"
let NERDBlockComIgnoreEmpty = "0"
let NERDDisableTabsInBlockComm = "0"
let VM_check_mappings =  1 
let NERDCompactSexyComs = "0"
let NERDAllowAnyVisualDelims = "1"
let VM_live_editing =  1 
let AutoPairsMoveCharacter = "()[]{}\"'"
let AutoPairsWildClosedPair = ""
silent only
cd ~/.cache/vim/plugins/nvim-treesitter
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 ~/.dotfiles/nvim_bak/init.vim
argglobal
%argdel
$argadd ~/.dotfiles/nvim_bak/init.vim
edit ~/.dotfiles/nvim_bak/init.vim
set splitbelow splitright
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 171 - ((16 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
171
normal! 07|
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOFcI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :

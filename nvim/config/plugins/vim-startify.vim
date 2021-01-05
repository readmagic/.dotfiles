" For startify
let g:startify_padding_left = 10
let g:startify_custom_header = [
\'                                                         ',
\'            ______                                 __        ',
\'           / ____/  _____   ____ _   ____     ____/ /  __  __',
\'          / /_     / ___/  / __ `/  / __ \   / __  /  / / / /',
\'         / __/    / /     / /_/ /  / / / /  / /_/ /  / /_/ / ',
\'        /_/      /_/      \__,_/  /_/ /_/   \__,_/   \__, /  ',
\'                                                    /____/   ','                                                         ',
\'                                                         ',
\]

let g:startify_files_number = 6
let g:startify_dir_number = 6

" session
let g:startify_session_persistence    = 1
let g:startify_session_dir = g:session_dir

" bookmarks 书签
"let g:startify_bookmarks = [
"            \ g:vimwiki_path . '/草稿/todo.md',
"            \ g:vimwiki_path . '/草稿/快速笔记.md',
"            \ g:quicknote_file
"            \ ]

" command 命令
let g:startify_commands = [
    \ {'u': ['插件更新', 'PlugUpdate']},
    \ {'t': ['打开终端', 'terminal']},
    \ {'s': ['启动时间', 'StartupTime']},
    \ ]

let g:startify_lists = [
       \ { 'type': 'sessions',  'header': ['        Sessions']       },
       \ { 'type': 'bookmarks', 'header': ['        Bookmarks']      },
       \ { 'type': 'files',     'header': ['        MRU']            },
       \ { 'type': 'dir',       'header': ['        MRU '. getcwd()] },
       \ { 'type': 'commands',  'header': ['        Commands']       },
       \ ]

" 打开buffer也显示startify
" autocmd BufEnter *
"      \ if !exists('t:startify_new_tab') && empty(expand('%')) && !exists('t:goyo_master') |
"      \   let t:startify_new_tab = 1 |
"      \   Startify |
"      \ endif

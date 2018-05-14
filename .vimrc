" 画面表示の設定
set number         " 行番号を表示する
" set cursorline     " カーソル行の背景色を変える
" set nocursorcolumn   " カーソル位置のカラムの背景色を変える
set laststatus=1   " ステータス行を常に表示
set cmdheight=1    " メッセージ表示欄を2行確保
set showmatch      " 対応する括弧を強調表示
set helpheight=999 " ヘルプを画面いっぱいに開く
set nolist           " 不可視文字を表示
set nowrap
set showcmd

" カーソル移動関連
set backspace=indent,eol,start "Backspaceキーの影響範囲に制限を設けない
set whichwrap=b,s,h,l,<,>,[,]  "行頭行末の左右移動で行をまたぐ
set scrolloff=8                "上下8行の視界を確保
set sidescrolloff=16           " 左右スクロール時の視界を確保
set sidescroll=1               " 左右スクロールは一文字づつ行う

" ファイル処理関連
set confirm    "保存されていないファイルがあるときは終了前に保存確認
set hidden     "保存されていないファイルがあるときでも別のファイルを開くことが出来る
set autoread   "外部でファイルに変更がされた場合は読みなおす
set nobackup   "ファイル保存時にバックアップファイルを作らない
set noswapfile "ファイル編集中にスワップファイルを作らない"

" 検索/置換の設定
set hlsearch   "検索文字列をハイライトする
set incsearch  "インクリメンタルサーチを行う
set ignorecase "大文字と小文字を区別しない
set smartcase  "大文字と小文字が混在した言葉で検索を行った場合に限り、大文字と小文字を区別する
set wrapscan   "最後尾まで検索を終えたら次の検索で先頭に移る
set gdefault   "置換の時 g オプションをデフォルトで有効にする"

" タブ/インデントの設定
set noexpandtab     "タブ入力を複数の空白入力に置き換える
set tabstop=4     "画面上でタブ文字が占める幅
set shiftwidth=4  "自動インデントでずれる幅
set softtabstop=4 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent    "改行時に前の行のインデントを継続する
set smartindent   "改行時に入力された行の末尾に合わせて次の行のインデントを増減する"

" OS/環境との統合関連の設定
set clipboard=unnamed,unnamedplus " OSのクリップボードをレジスタ指定無しで Yank, Put 出来るようにする
set mouse=a                       " マウスの入力を受け付ける
set shellslash                    " Windows でもパスの区切り文字を / にする

" コマンドLINEの設定
set wildmenu wildmode=list:longest,full " コマンドラインモードでTABキーによるファイル名補完を有効にする
set history=10000                       " コマンドラインの履歴を10000件保存する

" ビープの設定
set visualbell t_vb= "ビープ音すべてを無効にする
set noerrorbells     "エラーメッセージの表示時にビープを鳴らさない

set encoding=utf-8
" set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8

"文字の解析数を制御
set synmaxcol=200
"行番号の相対表示無効
set norelativenumber

"===============================
" キーマッピング変更
"===============================
noremap j gj
noremap k gk
noremap <S-h>   ^
noremap <S-j>   }
noremap <S-k>   {
noremap <S-l>   $

"===============================
" file tree
"===============================
" netrwは常にtree view
let g:netrw_liststyle = 3
" CVSと.で始まるファイルは表示しない
let g:netrw_list_hide = 'CVS,\(^\|\s\s\)\zs\.\S\+'
" 'v'でファイルを開くときは右側に開く。(デフォルトが左側なので入れ替え)
let g:netrw_altv = 1
" 'o'でファイルを開くときは下側に開く。(デフォルトが上側なので入れ替え)
let g:netrw_alto = 1

let g:go_fmt_commantt = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_fmt_autosave = 0
let g:go_play_open_browser = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

let g:php_baselib       = 1
let g:php_htmlInStrings = 1
let g:php_noShortTags   = 1
let g:php_sql_query     = 1
let g:sql_type_default = 'mysql'

"let g:neocomplete_php_locale = 'ja'

" ブックマークを最初から表示
"let g:NERDTreeShowBookmarks=1

" ファイル指定で開かれた場合はNERDTreeは表示しない
if !argc()
     autocmd vimenter * NERDTree|normal gg
endif

autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif

syntax on
set background=dark
filetype on
filetype indent on
filetype plugin on

"===============================
" Start Neobundle Settings.
"===============================
set rtp+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundleFetch 'tekkoc/PHPSnippetsCreator'
NeoBundle 'Shougo/neco-syntax'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'fatih/vim-go'
NeoBundle 'grep.vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'hokaccha/vim-html5validator'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'kannokanno/previm'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'othree/html5.vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'pocke/neosnippet-incomment'
NeoBundle 'pocke/neosnippet-snippets'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'stephpy/vim-php-cs-fixer'
NeoBundle 'szw/vim-tags'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'thinca/vim-ref'
NeoBundle 'tomasr/molokai'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'ujihisa/neco-look'
NeoBundle 'vim-scripts/Wombat'
NeoBundle 'vim-scripts/rdark'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'vim-scripts/twilight'
NeoBundle 'w0ng/vim-hybrid'

call neobundle#end()
filetype plugin indent on

NeoBundleCheck

colorscheme	hybrid
" colorscheme	molokai

"===============================
"NERD_tree.vim
"===============================
nnoremap <f2> :NERDTreeToggle<CR>
"最後に残ったウィンドウがNERDTREEのみのときはvimを閉じる
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeDirArrows=0
let g:NERDTreeMouseMode=0

"---------------------

"===============================
"規約チェック vim-php-cs-fixer
"===============================
" If php-cs-fixer is in $PATH, you don't need to define line below
" let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar
" let g:php_cs_fixer_level = "symfony"              " which level ?
" let g:php_cs_fixer_config = "default"             " configuration
" let g:php_cs_fixer_config_file = '.php_cs'       " configuration file
" let g:php_cs_fixer_php_path = "php"               " Path to PHP
" If you want to define specific fixers:
" let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
" let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
" let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
" let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.
" let g:php_cs_fixer_path = "php-cs-fixer" " php-cs-fixerをインストールした場所を指定
let g:php_cs_fixer_level = "all"                " which level ?
let g:php_cs_fixer_config = "default"           " configuration
let g:php_cs_fixer_php_path = "/usr/bin/php"    " Path to PHP
let g:php_cs_fixer_fixers_list = ""             " List of fixers
let g:php_cs_fixer_enable_default_mapping = 1   " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                  " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                  " Return the output of command if 1, else an inline information.

nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>
    """""

"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" 起動時に有効化
let g:neocomplete#enable_at_startup = 1
" 大文字が入力されるまで大文字小文字の区別を無視
let g:neocomplete#enable_smart_case = 1
" キャッシュする最小文字長
let g:neocomplete#sources#syntax#min_keyword_length = 3
" preview ウィンドウを自動で閉じない
let g:neocomplete#enable_auto_close_preview = 0
" 表示される候補の数
let g:neocomplete#max_list = 3

let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" キャッシュディレクトリ指定
let g:neocomplete#data_directory = $HOME . '/.vim/cache/neocomplete'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'php' : $HOME.'/.vim/dict/php.dict',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

"-------------------------
"" End Neobundle Settings.
"-------------------------

" grep検索の実行後にQuickFix Listを表示する
autocmd QuickFixCmdPost *grep* cwindow

" ステータス行に現在のgitブランチを表示する
set statusline+=%{fugitive#statusline()}

"===============================
" vim-gitgutter
"===============================
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '➜'
let g:gitgutter_sign_removed = '✘'
nnoremap <silent> ,gg :<C-u>GitGutterToggle<CR>
nnoremap <silent> ,gh :<C-u>GitGutterLineHighlightsToggle<CR>

"===============================
" lightline.vim
"===============================
let g:lightline = {
        \ 'colorscheme': 'wombat',
        \ 'mode_map': {'c': 'NORMAL'},
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
        \ },
        \ 'component_function': {
        \   'modified': 'LightLineModified',
        \   'readonly': 'LightLineReadonly',
        \   'fugitive': 'LightLineFugitive',
        \   'filename': 'LightLineFilename',
        \   'fileformat': 'LightLineFileformat',
        \   'filetype': 'LightLineFiletype',
        \   'fileencoding': 'LightLineFileencoding',
        \   'mode': 'LightLineMode'
        \ }
        \ }

function! LightLineModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightLineReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? 'x' : ''
endfunction

function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! LightLineFugitive()
  try
    if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head')
      return fugitive#head()
    endif
  catch
  endtry
  return ''
endfunction

function! LightLineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightLineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

function! LightLineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightLineMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction

"===============================
" vim-indent-guides
"===============================
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=1
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=236
let g:indent_guides_color_change_percent = 30
let g:indent_guides_guide_size=1


"===============================
" syntatstics
"===============================
let g:syntastic_javascript_checker = "jshint" "JavaScriptのSyntaxチェックはjshintで
let g:syntastic_check_on_open = 0 "ファイルオープン時にはチェックをしない
let g:syntastic_check_on_save = 1 "ファイル保存時にはチェックを実施"
let g:syntastic_enable_signs = 1
let g:syntastic_echo_current_error = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_enable_highlighting = 1

"===============================
" vim-ref
"===============================
" let g:ref_phpmanual_path = $HOME . '/.vim/bundle/vim-ref/doc/ref-phpmanual.txt'

"===============================
" taglist
"===============================
let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1

"===============================
" neco-look
"===============================
let g:neocomplete#text_mode_filetypes = {"_" : 1}

"===============================
" neosnippet
"===============================
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

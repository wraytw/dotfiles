" Whitespace & highlighting & language-specific config
" ----------------------------------------------------

" Strip trailing whitespace for code files on save
function! StripTrailingWhitespace()
  let save_cursor = getpos(".")
  %s/\s\+$//e
  call setpos('.', save_cursor)
endfunction

" Trim whitespace on these filetypes
autocmd BufWritePre *.java,*.php,*.feature,*.m,*.h,*.c,*.mm,*.cpp,*.hpp,*.rb,*.yml,*.js,*.ts,*.css,*.less,*.sass,*.scss,*.html,*.xml,*.erb,*.haml,*.txt call StripTrailingWhitespace()

" Highlight JSON files as javascript
autocmd BufRead,BufNewFile *.json set filetype=javascript

" Highlight Jasmine fixture files as HTML
" autocmd BufRead,BufNewFile *.jasmine_fixture set filetype=html

" Consider question/exclamation marks to be part of a Vim word.
" autocmd FileType ruby set iskeyword=@,48-57,_,?,!,192-255
" autocmd FileType scss set iskeyword=@,48-57,_,-,?,!,192-255

" Insert ' => '
" autocmd FileType ruby imap  <Space>=><Space>

" Open all folds in Markdown.
" autocmd FileType mkd normal zR

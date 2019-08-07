" Vim syntax file
" Language:     Pebble Template Engine
" Maintainer:   Chih-Wei Weng <cwweng@gmail.com>
" Latest Revision:  2019-08-07

if exists("b:current_syntax")
    finish
endif

syn include @html syntax/html.vim
syn region pebbleExpression start="{{" end="}}"
syn region pebbleControl start="{%" end="%}" contains=pebbleKeyword, pebbleString
syn region pebbleComment start="{#" end="#}"
syn region pebbleString start=+"+ end=+"+

syn keyword pebbleKeyword contained autoescape endautoescape block endblock extends include
syn keyword pebbleKeyword contained for else endfor if elseif endif

let b:current_syntax = "pebble"

hi def link pebbleKeyword    Statement
hi def link pebbleString     Constant
hi def link pebbleComment    Comment

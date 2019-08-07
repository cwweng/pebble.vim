" Vim syntax file
" Language:     Pebble Template Engine
" Maintainer:   Chih-Wei Weng <cwweng@gmail.com>
" Latest Revision:  2019-08-07

:runtime! syntax/html.vim
:unlet b:current_syntax

if exists("b:current_syntax")
    finish
endif

syn region pebbleExpression start="{{" end="}}" contains=pebbleString
syn region pebbleControl start="{%" end="%}" contains=pebblePreprocessor, pebbleKeyword, pebbleTest, pebbleOperator, pebbleString
syn region pebbleComment start="{#" end="#}"
syn region pebbleString start=+"+ end=+"+ contained

syn keyword pebblePreprocessor contained include extends
syn keyword pebbleKeyword contained autoescape endautoescape block endblock
syn keyword pebbleKeyword contained for in else endfor if elseif endif
syn keyword pebbleTest contained empty even odd null iterable
syn keyword pebbleOperator contained is not contains

let b:current_syntax = "pebble"

hi def link pebblePreprocessor  PreProc
hi def link pebbleKeyword    Statement
hi def link pebbleString     Constant
hi def link pebbleComment    Comment
hi def link pebbleOperator   Comment

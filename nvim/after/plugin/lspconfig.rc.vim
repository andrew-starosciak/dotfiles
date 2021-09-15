if !exists('g:lspconfig')
  finish
endif

set completeopt=menuone,noinsert,noselect

lua << EOF
--vim.lsp.set_log_level("debug")
EOF

lua << EOF
-- TypeScript
require'cmp'.setup()
require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.angularls.setup{on_attach=require'completion'.on_attach}
EOF

let g:completion_chain_complete_list = {
    \ 'default': [
    \    {'complete_items': ['lsp', 'snippet', 'tabnine' ]},
    \    {'mode': '<c-p>'},
    \    {'mode': '<c-n>'}
    \]
\}

lua << EOF
-- Completion
-- Use an on_attach function to only map the following keys 
-- after the language server attaches to the current buffer
vim.lsp.handlers['textDocument/codeAction'] = require'lsputil.codeAction'.code_action_handler
-- vim.lsp.handlers['textDocument/references'] = require'lsputil.locations'.references_handler
-- vim.lsp.handlers['textDocument/definition'] = require'lsputil.locations'.definition_handler
-- vim.lsp.handlers['textDocument/declaration'] = require'lsputil.locations'.declaration_handler
-- vim.lsp.handlers['textDocument/typeDefinition'] = require'lsputil.locations'.typeDefinition_handler
-- vim.lsp.handlers['textDocument/implementation'] = require'lsputil.locations'.implementation_handler
-- vim.lsp.handlers['textDocument/documentSymbol'] = require'lsputil.symbols'.document_handler
-- vim.lsp.handlers['workspace/symbol'] = require'lsputil.symbols'.workspace_handler
EOF

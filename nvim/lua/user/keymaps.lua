local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Parameters: ~
--   • {mode}  Mode short-name (map command prefix: "n", "i", "v", "x", …)
--             or "!" for |:map!|, or empty string for |:map|. "ia", "ca" or
--             "!a" for abbreviation in Insert mode, Cmdline mode, or both,
--             respectively
--   • {lhs}   Left-hand-side |{lhs}| of the mapping.
--   • {rhs}   Right-hand-side |{rhs}| of the mapping.
--   • {opts}  Optional parameters map: Accepts all |:map-arguments| as keys
--             except <buffer>, values are booleans (default false). Also:
--             • "noremap" disables |recursive_mapping|, like |:noremap|
--             • "desc" human-readable description.
--             • "callback" Lua function called in place of {rhs}.
--             • "replace_keycodes" (boolean) When "expr" is true, replace
--               keycodes in the resulting string (see
--               |nvim_replace_termcodes()|). Returning nil from the Lua
--               "callback" is equivalent to returning an empty string.

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Move <C-w> to <leader>w and remap <C-w> to <C-y>
keymap("n", "<leader>w", "<C-w>", opts)
keymap("n", "<C-w>", "3<C-y>", {nowait = true})
keymap("v", "<C-w>", "3<C-y>", {nowait = true})
keymap("n", "<C-e>", "3<C-e>", opts)
keymap("v", "<C-e>", "3<C-e>", opts)

keymap("n", "<Esc>", "<cmd>nohlsearch<CR>:normal :<Esc>", opts)
keymap("n", "<leader>e", ":Lex 30<CR>", opts)
keymap("n", "<leader>v", ":normal V<CR>", opts)

-- Navigation
keymap("n", "<A-i>", "<C-w>v", opts)
keymap("n", "<A-o>", "<C-w>s", opts)
keymap("n", "<A-w>", "<C-w>q", opts)
keymap("n", "<A-j>", "<C-w>w", opts)
keymap("n", "<A-k>", "<C-w>W", opts)

keymap("n", "<leader>H", "zt", opts)
keymap("n", "<leader>L", "zb", opts)

-- Tabs
keymap("n", "<A-m>", "<C-w>T", opts)

keymap("n", "<C-s>", "<C-u>", opts)
keymap("v", "<C-s>", "<C-u>", opts)

keymap("n", "<C-k>", "{", opts)
keymap("n", "<C-j>", "}", opts)
keymap("v", "<C-k>", "{", opts)
keymap("v", "<C-j>", "}", opts)

-- keymap("n", "<C-a>", "%", opts)

keymap("n", "<C-h>", "g^", opts)
keymap("v", "<C-h>", "g^", opts)
keymap("n", "<C-l>", "g$", opts)
keymap("v", "<C-l>", "g$", opts)

keymap("n", "j", "gj", opts)
keymap("v", "j", "gj", opts)
keymap("n", "k", "gk", opts)
keymap("v", "k", "gk", opts)

keymap("", "<leader>fq", "/-<CR>", opts)
keymap("", "<leader>fw", "/[<CR>", opts)
keymap("", "<leader>fe", "/]<CR>", opts)
keymap("", "<leader>fr", "/=<CR>", opts)
keymap("", "<leader>ft", "/\\~<CR>", opts)
keymap("", "<leader>fu", "/+<CR>", opts)
keymap("", "<leader>fi", "/{<CR>", opts)
keymap("", "<leader>fo", "/}<CR>", opts)
keymap("", "<leader>fp", "/_<CR>", opts)

keymap("", "<leader>fa", "/!<CR>", opts)
keymap("", "<leader>fs", "/@<CR>", opts)
keymap("", "<leader>fd", "/#<CR>", opts)
keymap("", "<leader>ff", "/\\$<CR>", opts)
keymap("", "<leader>fg", "/`<CR>", opts)
keymap("", "<leader>fh", "/&<CR>", opts)
keymap("", "<leader>fj", "/*<CR>", opts)
keymap("", "<leader>fk", "/(<CR>", opts)
keymap("", "<leader>fl", "/)<CR>", opts)
keymap("", "<leader>f;", "/:<CR>", opts)
keymap("", "<leader>f'", "/'<CR>", opts)

keymap("", "<leader>fz", "/\\<CR>", opts)
keymap("", "<leader>fx", "/|<CR>", opts)
keymap("", "<leader>fc", "/\"<CR>", opts)
keymap("", "<leader>fv", "/%<CR>", opts)
keymap("", "<leader>fm", "/\\^<CR>", opts)
keymap("", "<leader>f,", "/<<CR>", opts)
keymap("", "<leader>f.", "/><CR>", opts)
keymap("", "<leader>f/", "/?<CR>", opts)

keymap("", "<leader>k<leader>a", "1k", opts)
keymap("", "<leader>k<leader>s", "2k", opts)
keymap("", "<leader>k<leader>d", "3k", opts)
keymap("", "<leader>k<leader>f", "4k", opts)
keymap("", "<leader>k<leader>v", "5k", opts)
keymap("", "<leader>k<leader>m", "6k", opts)
keymap("", "<leader>k<leader>h", "7k", opts)
keymap("", "<leader>k<leader>j", "8k", opts)
keymap("", "<leader>k<leader>k", "9k", opts)

keymap("", "<leader>kal", "10k", opts)
keymap("", "<leader>kaa", "11k", opts)
keymap("", "<leader>kas", "12k", opts)
keymap("", "<leader>kad", "13k", opts)
keymap("", "<leader>kaf", "14k", opts)
keymap("", "<leader>kav", "15k", opts)
keymap("", "<leader>kam", "16k", opts)
keymap("", "<leader>kah", "17k", opts)
keymap("", "<leader>kaj", "18k", opts)
keymap("", "<leader>kak", "19k", opts)

keymap("", "<leader>ksl", "20k", opts)
keymap("", "<leader>ksa", "21k", opts)
keymap("", "<leader>kss", "22k", opts)
keymap("", "<leader>ksd", "23k", opts)
keymap("", "<leader>ksf", "24k", opts)
keymap("", "<leader>ksv", "25k", opts)
keymap("", "<leader>ksm", "26k", opts)
keymap("", "<leader>ksh", "27k", opts)
keymap("", "<leader>ksj", "28k", opts)
keymap("", "<leader>ksk", "29k", opts)

keymap("", "<leader>kdl", "30k", opts)
keymap("", "<leader>kda", "31k", opts)
keymap("", "<leader>kds", "32k", opts)
keymap("", "<leader>kdd", "33k", opts)
keymap("", "<leader>kdf", "34k", opts)
keymap("", "<leader>kdv", "35k", opts)
keymap("", "<leader>kdm", "36k", opts)
keymap("", "<leader>kdh", "37k", opts)
keymap("", "<leader>kdj", "38k", opts)
keymap("", "<leader>kdk", "39k", opts)

keymap("", "<leader>j<leader>a", "1j", opts)
keymap("", "<leader>j<leader>s", "2j", opts)
keymap("", "<leader>j<leader>d", "3j", opts)
keymap("", "<leader>j<leader>f", "4j", opts)
keymap("", "<leader>j<leader>v", "5j", opts)
keymap("", "<leader>j<leader>m", "6j", opts)
keymap("", "<leader>j<leader>h", "7j", opts)
keymap("", "<leader>j<leader>j", "8j", opts)
keymap("", "<leader>j<leader>k", "9j", opts)

keymap("", "<leader>jal", "10j", opts)
keymap("", "<leader>jaa", "11j", opts)
keymap("", "<leader>jas", "12j", opts)
keymap("", "<leader>jad", "13j", opts)
keymap("", "<leader>jaf", "14j", opts)
keymap("", "<leader>jav", "15j", opts)
keymap("", "<leader>jam", "16j", opts)
keymap("", "<leader>jah", "17j", opts)
keymap("", "<leader>jaj", "18j", opts)
keymap("", "<leader>jak", "19j", opts)

keymap("", "<leader>jsl", "20j", opts)
keymap("", "<leader>jsa", "21j", opts)
keymap("", "<leader>jss", "22j", opts)
keymap("", "<leader>jsd", "23j", opts)
keymap("", "<leader>jsf", "24j", opts)
keymap("", "<leader>jsv", "25j", opts)
keymap("", "<leader>jsm", "26j", opts)
keymap("", "<leader>jsh", "27j", opts)
keymap("", "<leader>jsj", "28j", opts)
keymap("", "<leader>jsk", "29j", opts)

keymap("", "<leader>jdl", "30j", opts)
keymap("", "<leader>jda", "31j", opts)
keymap("", "<leader>jds", "32j", opts)
keymap("", "<leader>jdd", "33j", opts)
keymap("", "<leader>jdf", "34j", opts)
keymap("", "<leader>jdv", "35j", opts)
keymap("", "<leader>jdm", "36j", opts)
keymap("", "<leader>jdh", "37j", opts)
keymap("", "<leader>jdj", "38j", opts)
keymap("", "<leader>jdk", "39j", opts)

-- Line comment
keymap('n', '<leader>/', ':normal gcc<CR><DOWN>', { desc = '[/] Toggle comment line' })
keymap('v', '<leader>/', '<Esc>:normal gvgc<CR>', { desc = '[/] Toggle comment block' })

-- Resize 
keymap("n", "<A-K>", "<C-w>k:resize -2<CR>", opts)
keymap("n", "<A-J>", "<C-w>k:resize +2<CR>", opts)
keymap("n", "<A-L>", "<C-w>l:vertical resize -4<CR>", opts)
keymap("n", "<A-H>", "<C-w>l:vertical resize +4<CR>", opts)

-- Navigate buffers
keymap("n", "<A-h>", ":bprevious<CR>", opts)
keymap("n", "<A-l>", ":bnext<CR>", opts)

keymap("n", "<A-,>", ":normal gT<CR>", opts)
keymap("n", "<A-.>", ":normal gt<CR>", opts)

-- Move text up and down
keymap("n", "<C-A-j>", "<Esc>:m .+1<CR>", opts)
keymap("n", "<C-A-k>", "<Esc>:m .-2<CR>", opts)
keymap("v", "<C-A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("v", "<C-A-k>", ":move '<-2<CR>gv-gv", opts)
keymap("v", "p", '"_dP', opts)

-- Stay in indent mode
keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)

-- Change between relative numbers and normal numbers
vim.cmd [[nmap <f2> :set norelativenumber! number?<cr>]]

-- Copy relative path
vim.cmd [[nmap <f3> :let @+=@%<cr>]]

-- Set wrap to text (ideal for .txt files / Notes)
vim.cmd [[nmap <f4> :set wrap linebreak nolist<cr>]]

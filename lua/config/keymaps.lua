vim.g.mapleader = " "

local keymap = vim.keymap

--Delete word backword
keymap.set("n", "dw", "vbd", { desc = "Delete word backwords" })

-- Select all

keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

--window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertcally" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in a new tab" })

-- Selection
keymap.set(
  "n",
  "<leader>sb",
  "v%",
  { desc = "Select block (Select everything between current character and matching closing)" }
)
keymap.set(
  "v",
  "<leader>sb",
  "%",
  { desc = "Select block (Select everything between current character and matching closing)" }
)

-- Clone line below
--keymap.set("v", "<C-j>", ":t.<CR>", { desc = "Clone line below" })
--keymap.set("n", "<C-j>", ":t.<CR>", { desc = "Clone line below" })

-- Clone line above

--keymap.set("n", "<C-k>", ":t.-1<CR>", { desc = "Clone line above" })
--keymap.set("v", "<C-k>", ":t.-1<CR>", { desc = "Clone line above" })

-- Move lines

--keymap.set("v", "K", ":m '<-2<CR>gv=gv'")
--keymap.set("v", "J", ":m '>+1<CR>gv=gv'")- Keymaps are automatically loaded on the VeryLazy event

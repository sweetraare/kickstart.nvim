# Neovim Config Analysis
_Generated 2026-03-10_

## Plugin Inventory

**Active (loaded):** guess-indent, gitsigns (base, no keymaps), which-key, telescope + fzf-native + ui-select, nvim-lspconfig + mason stack + fidget, conform, blink.cmp + LuaSnip, tokyonight, todo-comments, mini.nvim (ai/surround/statusline), nvim-treesitter, neo-tree, vim-tmux-navigator, vim-commentary, vim-fugitive, vim-surround, flash.nvim, undotree, harpoon, refactoring.nvim, lspsaga.nvim, vim-matchup, vim-css-color, + 12 colorscheme plugins

**Commented out / NOT loaded:** `kickstart.plugins.debug`, `kickstart.plugins.lint`, `kickstart.plugins.autopairs`, `kickstart.plugins.indent_line`, `kickstart.plugins.gitsigns` (the one with keymaps)

---

## 1. Complete Keymap Reference

### Window / Navigation (`init.lua`)

| Key | Action | File |
|-----|--------|------|
| `<C-h>` | Move focus to left window | init.lua:228 |
| `<C-l>` | Move focus to right window | init.lua:229 |
| `<C-j>` | Move focus to lower window | init.lua:230 |
| `<C-k>` | Move focus to upper window | init.lua:231 |
| `<Esc>` (n) | Clear search highlight | init.lua:190 |
| `<Esc><Esc>` (t) | Exit terminal mode | init.lua:216 |

### Telescope — Search (`init.lua`)

| Key | Action | File |
|-----|--------|------|
| `<leader>sf` | Find files | init.lua:428 |
| `<leader>sg` | Live grep (project) | init.lua:431 |
| `<leader>sw` | Grep word under cursor (n/v) | init.lua:430 |
| `<leader>s/` | Live grep in open buffers only | init.lua:474 |
| `<leader>sd` | Search diagnostics | init.lua:432 |
| `<leader>sh` | Search help tags | init.lua:426 |
| `<leader>sk` | Search keymaps | init.lua:427 |
| `<leader>sc` | Search commands | init.lua:435 |
| `<leader>ss` | Select Telescope picker | init.lua:429 |
| `<leader>sr` | Resume last search | init.lua:433 |
| `<leader>s.` | Recent files | init.lua:434 |
| `<leader>sn` | Find files in Neovim config | init.lua:487 |
| `<leader><leader>` | Find open buffers | init.lua:436 |

### LSP — Code Navigation (`init.lua` via LspAttach)

| Key | Action | File |
|-----|--------|------|
| `grn` | Rename symbol | init.lua:558 |
| `gra` | Code action (n/x) | init.lua:562 |
| `grD` | Go to declaration | init.lua:566 |
| `grr` | Go to references (Telescope) | init.lua:446 |
| `gri` | Go to implementation (Telescope) | init.lua:450 |
| `grd` | Go to definition (Telescope) | init.lua:455 |
| `gO` | Document symbols (Telescope) | init.lua:459 |
| `gW` | Workspace symbols (Telescope) | init.lua:463 |
| `grt` | Go to type definition (Telescope) | init.lua:468 |
| `<leader>th` | Toggle inlay hints | init.lua:602 |
| `<leader>q` | Open diagnostics in quickfix | init.lua:208 |

### File Tree (`neo-tree.lua`)

| Key | Action | File |
|-----|--------|------|
| `\` | Toggle NeoTree (reveal current file) | neo-tree.lua:16 |
| `\` (inside NeoTree) | Close NeoTree window | neo-tree.lua:25 |

### Formatting (`init.lua` via conform)

| Key | Action | File |
|-----|--------|------|
| `<leader>f` | Format buffer (async) | init.lua:683 |

### Editor — `custom/maps.lua`

| Key | Action | File |
|-----|--------|------|
| `<leader>w` | Save file (`:w`) | maps.lua:12 |
| `<leader>tn` | New tab (`:tabnew`) | maps.lua:15 |
| `<leader>/` | Toggle comment (vim-commentary) | maps.lua:8-9 |
| `<leader>nt` | NeoTree reveal | maps.lua:5 |
| `<leader>ca` | Code action (LSP) — duplicate of `gra` | maps.lua:29 |
| `Y` | Yank to end of line | maps.lua:18 |
| `n` | Next search result + center | maps.lua:21 |
| `N` | Prev search result + center | maps.lua:22 |
| `[[` | Previous diagnostic | maps.lua:25 |
| `]]` | Next diagnostic | maps.lua:26 |

### Telescope duplicates in `custom/maps.lua`

| Key | Action | Duplicate of |
|-----|--------|------|
| `<leader>ff` | Find files | `<leader>sf` |
| `<leader>fg` | Live grep | `<leader>sg` |
| `<leader>fb` | Find buffers | `<leader><leader>` |
| `<leader>fr` | Recent files | `<leader>s.` |
| `<leader>fw` | Grep word under cursor | `<leader>sw` |
| `<leader>fl` | Fuzzy find in current file | *(unique — keep this one)* |

### mini.nvim text objects & surround (default keymaps)

| Key | Action |
|-----|--------|
| `sa{motion}{char}` | Add surround |
| `sd{char}` | Delete surround |
| `sr{old}{new}` | Replace surround |
| `va)` / `vi)` etc. | Select around/inside objects |

### blink.cmp (completion, insert mode)

| Key | Action |
|-----|--------|
| `<C-n>` / `<Down>` | Next item |
| `<C-p>` / `<Up>` | Previous item |
| `<C-y>` | Accept completion |
| `<C-e>` | Hide menu |
| `<C-space>` | Open menu / open docs |
| `<C-k>` | Toggle signature help |
| `<Tab>` / `<S-Tab>` | Navigate snippet expansions |

### Gitsigns keymaps (`gitsigns.lua`) — NOT ACTIVE

> These are defined in `lua/kickstart/plugins/gitsigns.lua` but that file is
> commented out in `init.lua:927`. Uncomment it to activate.

| Key | Action |
|-----|--------|
| `]c` / `[c` | Next/prev git hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hS` | Stage buffer |
| `<leader>hR` | Reset buffer |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Blame line |
| `<leader>hd` | Diff against index |
| `<leader>hD` | Diff against last commit |
| `<leader>tb` | Toggle line blame |
| `<leader>tD` | Toggle show deleted |

---

## 2. Workflow Guides

### Daily File Navigation

```
Find file by name:      <leader>sf  (or <leader>ff — duplicate)
Find file by content:   <leader>sg  (or <leader>fg)
Recent files:           <leader>s.  (or <leader>fr)
Switch buffers:         <leader><leader>  (or <leader>fb)
Fuzzy search this file: <leader>fl
File tree sidebar:      \
```

### Code Navigation

```
Go to definition:       grd
Go to references:       grr
Go to implementation:   gri
Go to type def:         grt
Go to declaration:      grD
Document symbols:       gO
Workspace symbols:      gW
Next/prev diagnostic:   ]] / [[
Diagnostic quickfix:    <leader>q
```

Tip: `grd` to jump → `<C-t>` to jump back (tag stack). Use `gO` for a fuzzy list of all functions/types in the current file.

### Git Workflow

Only `vim-fugitive` is actively keymap-accessible. Gitsigns shows gutter signs but has no keymaps (commented out).

```
:Git            → Fugitive status window
:Git commit     → Commit
:Git push       → Push
:Git log        → Log
:Git blame      → Blame (full file)
:GdiffSplit     → Side-by-side diff
```

To unlock hunk-level workflow, uncomment in `init.lua:927`:
```lua
require 'kickstart.plugins.gitsigns',
```

### Refactoring

```
Rename symbol:  grn         (LSP, renames across files)
Code action:    gra  or  <leader>ca  (pick one, they're identical)
Format buffer:  <leader>f
```

`theprimeagen/refactoring.nvim` is installed but has zero configuration and no keymaps. It supports extract function/variable/block — see §4.

### Diagnosing LSP Issues

```
:checkhealth        → Full health report
:Mason              → Manage installed servers
:LspInfo            → Active clients for current buffer
:ConformInfo        → Formatter status for current buffer
<leader>sd          → Telescope diagnostics list
<leader>q           → Quickfix diagnostic list
]] / [[             → Jump between diagnostics (float auto-opens)
```

`fidget.nvim` shows LSP progress spinners in the bottom-right.

---

## 3. Conflicts & Issues

### CRITICAL: `<leader>s` broken by phantom EasyMotion mapping
**`maps.lua:2`** sets `<Leader>s` → `<Plug>(easymotion-s2)`, but **EasyMotion is not installed**.

- Every `<leader>s*` search keymap now has a 300ms timing penalty (timeoutlen)
- Pressing `<leader>s` alone and waiting silently fails
- `flash.nvim` (the modern EasyMotion replacement) IS installed but not configured

**Fix:** Delete line 2 of `custom/maps.lua`, then configure flash.nvim instead.

### CRITICAL: `vim-surround` + `mini.surround` conflict
Both active, both define the `s` operator. They will fight over `sa`, `sd`, `sr` in normal mode.

**Fix:** Remove `'tpope/vim-surround'` from `custom/plugins/init.lua`. `mini.surround` is more featureful and already integrated.

### CRITICAL: `vim-tmux-navigator` overlaps window navigation
`vim-tmux-navigator` installs its own `<C-h>/<C-j>/<C-k>/<C-l>` mappings, identical to `init.lua:228-231`. Inside tmux the pass-through works fine; outside tmux the tmux-navigator versions take over. Functionally similar but can cause confusion.

### Gitsigns loaded with no keymaps
- `init.lua` loads gitsigns (gutter signs only, no keymaps)
- `kickstart.plugins.gitsigns` has all the keymaps but is **commented out**

You have change indicators in the gutter but can't interact with them from the keyboard.

**Fix:** Uncomment `require 'kickstart.plugins.gitsigns'` on `init.lua:927`.

### `<leader>ca` duplicates `gra`
`maps.lua:29` and `init.lua:562` both call `vim.lsp.buf.code_action`. Pick one and remove the other.

### `folke/tokyonight.nvim` installed twice
- `init.lua` (with full config + colorscheme command)
- `custom/plugins/init.lua` (bare entry with `branch = 'main'`)

Lazy deduplicates it but the redundant entry adds noise.

### `ap/vim-css-color` installed twice
Lines 12 and 34 of `custom/plugins/init.lua` are identical.

---

## 4. Installed But Unused

| Plugin | What you're missing | Quick fix |
|--------|---------------------|-----------|
| **harpoon** | Fast file bookmarks — mark 4-5 hot files and jump to them instantly. The killer feature for project navigation. | Add setup + keymaps (`<leader>a` to mark, `<C-e>` for menu) |
| **refactoring.nvim** | Extract function/variable/block via visual selection | `require('refactoring').setup()` + keymaps |
| **flash.nvim** | 2-char jump anywhere on screen (replaces the broken EasyMotion line) | `require('flash').setup()` + map `s` in normal mode |
| **lspsaga.nvim** | Better LSP UI: breadcrumbs, peek definition, hover docs, call hierarchy | `require('lspsaga').setup()` + keymaps |
| **undotree** | Visual undo history tree | `vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>')` |
| **vim-fugitive** | Fully functional via `:Git` but no keymaps | Add `<leader>gs` → `:Git` at minimum |
| **gitsigns keymaps** | Hunk staging, inline blame, diff — file exists, just commented out | Uncomment line 927 in init.lua |
| **todo-comments.nvim** | Active but no search keymap | Add `<leader>st` → `:TodoTelescope` |
| **kickstart.plugins.debug** | Full DAP debugger (F1-F7, ready to go) | Uncomment in init.lua |
| **kickstart.plugins.lint** | nvim-lint (markdown + extensible) | Uncomment in init.lua |
| **kickstart.plugins.autopairs** | Auto-close brackets/quotes | Uncomment in init.lua |
| **kickstart.plugins.indent_line** | Indentation guides | Uncomment in init.lua |
| **12 colorscheme plugins** | Only tokyonight-night is used | Remove unused ones to reduce startup time |

---

## Quick Wins (Priority Order)

1. **Remove** the EasyMotion line (`maps.lua:2`) — it's broken and penalises all `<leader>s*` keymaps
2. **Uncomment** `require 'kickstart.plugins.gitsigns'` (`init.lua:927`) — unlocks hunk-level git workflow
3. **Remove** `'tpope/vim-surround'` from `custom/plugins/init.lua` — conflicts with mini.surround
4. **Add** `vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>')` — trivial, very useful
5. **Set up** flash.nvim — replaces the broken EasyMotion intent
6. **Add** `<leader>st` → `:TodoTelescope` — finds all TODOs/FIXMEs across project
7. **Configure** harpoon — biggest workflow improvement for multi-file editing

local icons = {}

local data = {
	kind = {
		Break = "󰙧",
		Call = "󰃷",
		Case = "󰬶",
		Class = "󰠱",
		Color = "󰏘",
		Constant = "󰏿",
		Constructor = "",
		Continue = "󰞘",
		Declaration = "󰙠",
		Delete = "󱟁",
		Enum = "",
		EnumMember = "",
		Event = "",
		Field = "󰇽",
		File = "󰈙",
		Folder = "󰉋",
		Fragment = "",
		Function = "󰊕",
		Implementation = "",
		Interface = "",
		Keyword = "󰌋",
		List = "󰅪",
		Loop = "󰑖",
		Method = "󰆧",
		Module = "",
		Namespace = "󰌗",
		Operator = "󰆕",
		Package = "",
		Property = "󰜢",
		Reference = "",
		Regex = "",
		Snippet = "",
		Statement = "󰅩",
		Struct = "",
		Switch = "",
		Text = "󰉿",
		TypeParameter = "󰅲",
		Undefined = "",
		Unit = "",
		Value = "󰎠",
		Variable = "",
		-- ccls-specific icons
		Macro = "",
		Parameter = "",
		StaticMethod = "",
		Terminal = "",
		TypeAlias = "",
	},
	type = {
		Array = "󰅪",
		Boolean = "",
		Null = "󰟢",
		Number = "",
		Object = "󰅩",
		String = "󰉿",
	},
	documents = {
		Default = "",
		File = "",
		Files = "",
		FileFind = "󰈞",
		FileTree = "󰙅",
		Import = "",
		Symlink = "",
		Word = "",
	},
	git = {
		Add = "",
		Branch = "",
		Diff = "",
		Git = "󰊢",
		Ignore = "",
		Mod = "M",
		Mod_alt = "",
		Remove = "",
		Rename = "",
		Repo = "",
		Unmerged = "󰘬",
		Untracked = "󰞋",
		Unstaged = "",
		Staged = "",
		Conflict = "",
	},
	ui = {
		Accepted = "",
		ArrowClosed = "",
		ArrowOpen = "",
		BigCircle = "",
		BigUnfilledCircle = "",
		BookMark = "󰃃",
		Buffer = "󰓩",
		Bug = "",
		Calendar = "",
		Character = "",
		Check = "󰄳",
		ChevronRight = "",
		Circle = "",
		Close = "󰅖",
		Close_alt = "",
		CloudDownload = "",
		CodeAction = "󰌵",
		Comment = "󰅺",
		Dashboard = "",
		DoubleSeparator = "󰄾",
		Emoji = "󰱫",
		EmptyFolder = "",
		EmptyFolderOpen = "",
		File = "󰈤",
		Fire = "",
		Folder = "",
		FolderOpen = "",
		FolderWithHeart = "󱃪",
		Gear = "",
		History = "󰄉",
		Incoming = "󰏷",
		Indicator = "",
		Keyboard = "",
		Left = "",
		List = "",
		Lock = "󰍁",
		Modified = "✥",
		Modified_alt = "",
		NewFile = "",
		Newspaper = "",
		Note = "󰍨",
		Outgoing = "󰏻",
		Package = "",
		Pencil = "󰏫",
		Perf = "󰅒",
		Play = "",
		Project = "",
		Right = "",
		RootFolderOpened = "",
		Search = "󰍉",
		Separator = "",
		SignIn = "",
		SignOut = "",
		Sort = "",
		Spell = "󰓆",
		Square = "",
		Symlink = "",
		SymlinkFolder = "",
		Tab = "",
		Table = "",
		Telescope = "",
		Window = "",
	},
	diagnostics = {
		Error = "",
		Warning = "",
		Information = "",
		Question = "",
		Hint = "󰌵",
		-- Hollow version
		Error_alt = "󰅚",
		Warning_alt = "󰀪",
		Information_alt = "",
		Question_alt = "",
		Hint_alt = "󰌶",
	},
	misc = {
		Add = "+",
		Added = "",
		Campass = "󰀹",
		Code = "",
		Gavel = "",
		Ghost = "󰊠",
		Glass = "󰂖",
		Lego = "",
		LspAvailable = "󱜙",
		ManUp = "",
		Neovim = "",
		NoActiveLsp = "󱚧",
		PyEnv = "󰢩",
		Squirrel = "",
		Tag = "",
		Tree = "",
		Vbar = "│",
		Vim = "",
		Watch = "",
	},
	cmp = {
		buffer = "󰉿",
		latex_symbols = "",
		luasnip = "󰃐",
		nvim_lsp = "",
		nvim_lua = "",
		orgmode = "",
		path = "",
		spell = "󰓆",
		tmux = "",
		treesitter = "",
		undefined = "",
		-- Add source-specific icons here
		codeium = "",
		Codeium = "",
		copilot = "",
		copilot_alt = "",
		Copilot = "",
		Copilot_alt = "",
		TabNine = "",
		cmp_tabnine = "",
	},
	dap = {
		Breakpoint = "󰝥",
		BreakpointCondition = "󰟃",
		BreakpointRejected = "",
		LogPoint = "",
		Pause = "",
		Play = "",
		RunLast = "↻",
		StepBack = "",
		StepInto = "󰆹",
		StepOut = "󰆸",
		StepOver = "󰆷",
		Stopped = "",
		Terminate = "󰝤",
	},
}

---Get a specific icon set.
---@param category "kind"|"type"|"documents"|"git"|"ui"|"diagnostics"|"misc"|"cmp"|"dap"
---@param add_space? boolean @Add trailing whitespace after the icon.
function icons.get(category, add_space)
	if add_space then
		return setmetatable({}, {
			__index = function(_, key)
				return data[category][key] .. " "
			end,
		})
	else
		return data[category]
	end
end

return iconsreturn {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "tabpages", -- set to "tabs" to only show tabpages instead
      themable = true, -- allows highlight groups to be overriden i.e. sets highlights as default
      numbers = "ordinal",
      close_command = "bdelete! %d", -- can be a string | function, | false see "Mouse actions"
      right_mouse_command = "bdelete! %d", -- can be a string | function | false, see "Mouse actions"
      left_mouse_command = "buffer %d", -- can be a string | function, | false see "Mouse actions"
      middle_mouse_command = nil, -- can be a string | function, | false see "Mouse actions"
      indicator = {
        icon = "▎", -- this should be omitted if indicator style is not 'icon'
        style = "icon",
      },
      buffer_close_icon = "󰅖",
      modified_icon = "● ",
      close_icon = " ",
      left_trunc_marker = " ",
      right_trunc_marker = " ",
      --- name_formatter can be used to change the buffer's label in the bufferline.
      --- Please note some names can/will break the
      --- bufferline so use this at your discretion knowing that it has
      --- some limitations that will *NOT* be fixed.
      name_formatter = function(buf) -- buf contains:
        -- name                | str        | the basename of the active file
        -- path                | str        | the full path of the active file
        -- bufnr               | int        | the number of the active buffer
        -- buffers (tabs only) | table(int) | the numbers of the buffers in the tab
        -- tabnr (tabs only)   | int        | the "handle" of the tab, can be converted to its ordinal number using: `vim.api.nvim_tabpage_get_number(buf.tabnr)`
      end,
      max_name_length = 20,
      max_prefix_length = 13, -- prefix used when a buffer is de-duplicated
      truncate_names = true, -- whether or not tab names should be truncated
      tab_size = 20,
      diagnostics = "nvim_lsp",
      diagnostics_update_in_insert = false, -- only applies to coc
      diagnostics_update_on_event = true, -- use nvim's diagnostic handler
      -- The diagnostics indicator can be set to nil to keep the buffer name highlight but delete the highlighting
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        return "(" .. count .. ")"
      end,
      -- NOTE: this will be called a lot so don't do any heavy processing here
      custom_filter = function(buf_number, buf_numbers)
        -- filter out filetypes you don't want to see
        if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
          return true
        end
        -- filter out by buffer name
        if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
          return true
        end
        -- filter out based on arbitrary rules
        -- e.g. filter out vim wiki buffer from tabline in your work repo
        if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
          return true
        end
        -- filter out by it's index number in list (don't show first buffer)
        if buf_numbers[1] ~= buf_number then
          return true
        end
      end,
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          text_align = "center",
          separator = true,
        },
      },
      color_icons = true, -- whether or not to add the filetype icon highlightsi
      get_element_icon = function(element)
        -- element consists of {filetype: string, path: string, extension: string, directory: string}
        -- This can be used to change how bufferline fetches the icon
        -- for an element e.g. a buffer or a tab.
        -- e.g.
        local icon, hl = require("nvim-web-devicons").get_icon_by_filetype(element.filetype, { default = false })
        return icon, hl
        -- or
        -- local custom_map = {my_thing_ft: {icon = "my_thing_icon", hl}}
        -- return custom_map[element.filetype]
      end,
      show_buffer_icons = true,
      show_buffer_close_inons = true,
      show_close_icon = true,
      show_tab_indicators = true,
      show_duplicate_prefix = true,
      duplicate_across_groups = true,
      persist_buffer_sort = true,
      move_wraps_ast_ends = false,
      separator_style = "slant",
      enforce_regular_tabs = false,
      always_show_bufferline = true,
      auto_toggle_bufferline = false,
      hover = {
        enabled = true,
        delay = 200,
        reveal = { "close" },
      },
      sort_by = "insert_at_end",
    },
  },
}

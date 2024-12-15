function ColorMyPencils(color)
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {

     {
        "sainnhe/sonokai",
        config = function()
            -- Set up Sonokai with the desired style
            vim.g.sonokai_style = 'espresso' -- Choose one: 'default', 'atlantis', 'endromeda', 'shusia', 'espresso'
            -- Apply the colorscheme
            vim.cmd('colorscheme sonokai')

            -- -- Customize background brightness to low but not too dim
            -- vim.api.nvim_set_hl(0, "Normal", { bg = "#282828" }) -- Low brightness background
            -- vim.api.nvim_set_hl(0, "NormalNC", { bg = "#282828" }) -- For non-current windows
            -- vim.api.nvim_set_hl(0, "StatusLine", { bg = "#3c3c3c" }) -- Slightly lighter status line
        end
    },




    {
        "erikbackman/brightburn.vim",
    },

    {
        "folke/tokyonight.nvim",
        lazy = false,
        opts = {},
        config = function()
            -- ColorMyPencils()
        end
    },
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        config = function()
            require("gruvbox").setup({
                terminal_colors = true, -- add neovim terminal colors
                undercurl = true,
                underline = false,
                bold = true,
                italic = {
                    strings = false,
                    emphasis = false,
                    comments = false, operators = false, folds = false,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true, -- invert background for search, diffs, statuslines and errors
                contrast = "hard", -- can be "hard", "soft" or empty string
                palette_overrides = {},
                overrides = {},
                dim_inactive = true,
                transparent_mode = false,
            })
            -- ColorMyPencils("gruvbox")
        end,
    },
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
                transparent = true, -- Enable this to disable setting the background color
                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = false },
                    keywords = { italic = false },
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "dark", -- style for sidebars, see below
                    floats = "dark", -- style for floating windows
                },
            })
            -- ColorMyPencils("tokyonight")  -- Set the colorscheme to tokyonight
        end
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = false,
                styles = {
                    italic = false,
                },
            })
            -- ColorMyPencils("rose-pine")  -- Set the colorscheme to rose-pine
        end
    },


}

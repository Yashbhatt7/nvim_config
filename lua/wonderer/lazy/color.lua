-- Plugin setup using lazy.nvim
function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
        config = function()
            require("rose-pine").setup({
                disable_background = true,
            })

            function ColorMyPencils(color)
                color = color or "rose-pine"
                vim.cmd.colorscheme(color)

                vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
                vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
            end

            ColorMyPencils()
        end,
    },

    -- {
    --     "sainnhe/sonokai",
    --     config = function()
    --         -- Set up Sonokai with the desired style
    --         vim.g.sonokai_style = 'espresso' -- Choose one: 'default', 'atlantis', 'endromeda', 'shusia', 'espresso'
    --         -- Apply the colorscheme
    --         vim.cmd('colorscheme sonokai')
    --
    --         -- -- Customize background brightness to low but not too dim
    --         -- vim.api.nvim_set_hl(0, "Normal", { bg = "#282828" }) -- Low brightness background
    --         -- vim.api.nvim_set_hl(0, "NormalNC", { bg = "#282828" }) -- For non-current windows
    --         -- vim.api.nvim_set_hl(0, "StatusLine", { bg = "#3c3c3c" }) -- Slightly lighter status line
    --         vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
    --     end
    -- },
}


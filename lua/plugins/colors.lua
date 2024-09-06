function ColorPencils(color)
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", {bg="none"})
    vim.api.nvim_set_hl(0, "NormalFloat", {bg="none"})
end

return {
    {
        "folke/tokyonight.nvim",
        lazy=false,
        config=function()
            -- ColorPencils("tokyonight-moon")
        end,
    },
    {
        "catppuccin/nvim", name = "catppuccin",
        lazy=false,
        config=function()
            -- ColorPencils("catppuccin-mocha")
        end,
    },
    {
        "ellisonleao/gruvbox.nvim" ,
        lazy=false,
        config=function()
            ColorPencils("gruvbox")
        end,
    },
    {
        "savq/melange-nvim",
        lazy=false,
        config=function()
            -- ColorPencils("melange")
        end,
    },
    {
        "nyoom-engineering/oxocarbon.nvim",
        lazy=false,
        config=function()
            -- ColorPencils("oxocarbon")
        end,
    },
    {
        "AlexvZyl/nordic.nvim",
        lazy=false,
        config=function()
            -- ColorPencils("nordic")
        end,
    },
    {
        "rose-pine/neovim", name = "rose-pine",
        lazy=false,
        config=function()
            -- ColorPencils("rose-pine-moon")
        end,
    },
}


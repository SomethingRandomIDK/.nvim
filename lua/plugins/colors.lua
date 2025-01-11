function ColorPencils(color)
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", {bg="none"})
    vim.api.nvim_set_hl(0, "NormalFloat", {bg="none"})
    vim.api.nvim_set_hl(0, "NormalNC", {bg="none"})
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
            ColorPencils("catppuccin-mocha")
        end,
    },
    {
        "ellisonleao/gruvbox.nvim" ,
        lazy=false,
        config=function()
            -- ColorPencils("gruvbox")
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
    {
        "EdenEast/nightfox.nvim",
        lazy=false,
        config=function()
            -- ColorPencils("carbonfox")
        end,
    },
    {
        "eldritch-theme/eldritch.nvim",
        lazy=false,
        config=function()
            -- ColorPencils("eldritch")
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        lazy=false,
        config=function()
            -- ColorPencils("kanagawa-wave")
        end,
    },
    {
        "xero/miasma.nvim",
        lazy=false,
        config=function()
            -- ColorPencils("miasma")
        end,
    },
    {
        "dgox16/oldworld.nvim",
        lazy=false,
        config=function()
            -- ColorPencils("oldworld")
        end,
    },
}


return {
    "kdheepak/lazygit.nvim",
    config = function ()
        -- nvim v0.8.0
    require("lazy").setup({
    {
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
    })
    end,
}

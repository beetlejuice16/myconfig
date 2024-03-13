return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
        vim.g.mkdp_auto_close = 0
        vim.fn["mkdp#util#install"]()
    end,
}

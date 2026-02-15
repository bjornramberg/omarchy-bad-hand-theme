return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#1e1411",
                bg_dark = "#1e1411",
                bg_highlight = "#352924",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#bdb09d",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#9c8b74",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#352924",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#5a0a0a",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#821515",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#856839",
                -- green: Comments, strings, success states, git additions
                green = "#921416",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#e4d8c1",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#4d3a2b",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#c2b28c",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#ded2b3",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}

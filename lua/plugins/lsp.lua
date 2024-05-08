return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "saadparwaiz1/cmp_luasnip",
    "L3MON4D3/LuaSnip",
    "rafamadriz/friendly-snippets",
  },

  config = function()
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("user_lsp_attach", { clear = true }),
      callback = function(event)
        local map = function(keys, func, desc)
          vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
        end
        local builtin = require "telescope.builtin"

        map("gd", builtin.lsp_definitions, "goto definition")
        map("gD", vim.lsp.buf.declaration, "goto declaration")
        map("gr", builtin.lsp_references, "goto reference")
        map("gI", builtin.lsp_implementations, "goto implementation")
        map("<leader>D", builtin.lsp_type_definitions, "goto type definition")
        map("<leader>ds", builtin.lsp_document_symbols, "document symbols")
        map("<leader>ws", builtin.lsp_dynamic_workspace_symbols, "workspace symbols")
        map("<leader>rn", vim.lsp.buf.rename, "rename in scope")
        map("<leader>ca", vim.lsp.buf.code_action, "code action")
        map("K", vim.lsp.buf.hover, "hover documentation")
      end,
    })

    local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

    require("mason").setup {}
    require("mason-lspconfig").setup {
      ensure_installed = {
        "clangd",
        "pyright",
        "gopls",
        "rust_analyzer",
        "zls",

        -- web dev
        "html",
        "cssls",
        "tsserver",
      },
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup {
            capabilities = lsp_capabilities,
          }
        end,

        lua_ls = function()
          require("lspconfig").lua_ls.setup {
            capabilities = lsp_capabilities,
            settings = {
              Lua = {
                completion = {
                  callSnippet = "Replace",
                },
                diagnostics = {
                  globals = { "vim" },
                },
                workspace = {
                  library = {
                    vim.env.VIMRUNTIME,
                  },
                },
              },
            },
          }
        end,
      },
    }

    local luasnip = require "luasnip"
    local cmp = require "cmp"
    local cmp_select = { behavior = cmp.SelectBehavior.Select }

    -- this is the function that loads the extra snippets to luasnip
    -- from rafamadriz/friendly-snippets
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup {
      sources = {
        { name = "path" },
        { name = "nvim_lsp" },
        { name = "luasnip", keyword_length = 2 },
        { name = "buffer",  keyword_length = 3 },
      },
      mapping = cmp.mapping.preset.insert {
        ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
        ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-y>"] = cmp.mapping.confirm { select = true },
        ["<C-Space>"] = cmp.mapping.complete(),

        ["<C-h>"] = cmp.mapping(function()
          if luasnip.locally_jumpable(-1) then
            luasnip.jump(-1)
          end
        end, { 'i', 's' }),
        ["<C-l>"] = cmp.mapping(function()
          if luasnip.expand_or_locally_jumpable() then
            luasnip.expand_or_jump()
          end
        end, { 'i', 's' }),
      },
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
    }
  end,
}

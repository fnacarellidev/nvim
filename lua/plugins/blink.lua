local function cmp_func_with_no_auto_insert(cmp_func)
  cmp_func({
    auto_insert = false,
  })
end

return {
  'saghen/blink.cmp',
  dependencies = {
    'rafamadriz/friendly-snippets',
    {
      "folke/lazydev.nvim",
      ft = "lua", -- only load on lua files
      opts = {
        library = {
          -- See the configuration section for more details
          -- Load luvit types when the `vim.uv` word is found
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
      },
    }
  },
  version = '1.*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = 'none',
      ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
      ['<C-e>'] = { 'cancel' },
      ['<C-y>'] = { 'select_and_accept', 'fallback' },

      ['<C-p>'] = {
        function (cmp)
          cmp_func_with_no_auto_insert(cmp.select_prev)
        end
      },

      ['<C-n>'] = {
        function (cmp)
          cmp_func_with_no_auto_insert(cmp.select_next)
        end
      },

      ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
      ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },

      ['<Tab>'] = { 'snippet_forward', 'fallback' },
      ['<S-Tab>'] = { 'snippet_backward', 'fallback' },

      ['<C-k>'] = { 'show_signature', 'hide_signature', 'fallback' },
      ['<C-u>'] = { 'scroll_signature_up', 'fallback' },
      ['<C-d>'] = { 'scroll_signature_down', 'fallback' },
    },
    appearance = {
      nerd_font_variant = 'mono',
    },
    signature = {
      enabled = true,
    },
    completion = {
      ghost_text = {
        enabled = true
      },
      menu = {
        border = "rounded",
        scrollbar = false
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 50
      }
    },
    sources = {
      default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
      providers = {
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          -- make lazydev completions top priority (see `:h blink.cmp`)
          score_offset = 100,
        },
      },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}

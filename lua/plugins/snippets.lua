return {
  "L3MON4D3/LuaSnip",
  config = function()
    local luasnip = require("luasnip")
    luasnip.config.set_config({
      history = true,
      updateevents = "TextChanged,TextChangedI",
    })

    -- Load snippet collections
    require("luasnip.loaders.from_vscode").lazy_load()
    require("luasnip.loaders.from_snipmate").load({ paths = "./snippets" })
    luasnip.filetype_extend("typescript", { "javascript" })
  end,
}

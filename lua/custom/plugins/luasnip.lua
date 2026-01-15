local ls = require('luasnip')

require('luasnip.loaders.from_lua').load()

vim.keymap.set({'i', 's'}, '<C-N>', function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end, {silent = true})

vim.keymap.set({'i', 's'}, '<C-P>', function()
  if ls.choice_active() then
    ls.change_choice(-1)
  end
end, {silent = true})

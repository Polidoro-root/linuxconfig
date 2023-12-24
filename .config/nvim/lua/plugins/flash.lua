return {
  "folke/flash.nvim",
  keys = {
    -- disable the default flash keymap
    { "c-s", mode = { "c" }, false },
    { "r", mode = { "o" }, false },
    { "R", mode = { "x", "o" }, false },
    { "s", mode = { "n", "x", "o" }, false },
    { "S", mode = { "n", "x", "o" }, false },
  },
}

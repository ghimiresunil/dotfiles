return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    -- import comment plugin safely
    local comment = require("Comment")

    -- enable comment with default settings
    comment.setup({
      -- Additional configuration can be added here if needed
    })
  end,
}


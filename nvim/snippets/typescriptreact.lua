local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("typescriptreact", {
  s("tsrafce", {
    t({ "import React from 'react'", "", "type Props = {}", "", "const " }),
    i(1, "ComponentName"), -- First insert node for component name
    t({ " = (props: Props) => {", "  return (", "    <div>" }),
    i(1), -- Repeat the same component name
    t({ "</div>", "  )", "}", "", "export default " }),
    i(1), -- Repeat component name again
    t({ "" }),
  }),
})

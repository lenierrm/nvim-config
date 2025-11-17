local ls = require("luasnip")
local s = ls.s
local i = ls.insert_node
local t = ls.text_node
local fmt = require("luasnip.extras.fmt").fmt

return {
	s(
		"acf_cond",
		fmt(
			[[
    'conditional_logic' => array(
      array(
        array(
          'field'    => 'field_' . FIELD_BLOCK_NAME . '{1}',
          'operator' => '{2}',
          'value'    => '{3}',
        ),
      ),
    ),
  ]],
			{
				i(1, "field_name"),
				i(2, "operator"),
				i(3, "value"),
			}
		)
	),
}

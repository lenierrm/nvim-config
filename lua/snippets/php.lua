local ls = require("luasnip")
local s = ls.s
local i = ls.insert_node
local t = ls.text_node
local fmt = require("luasnip.extras.fmt").fmt

return {
	s(
		"acf_field_block_name",
		fmt(
			[[
        const FIELD_BLOCK_NAME = '{1}';
      ]],
			{
				i(1, "block_name"),
			}
		)
	),

	s(
		"acf_wrapper",
		fmt(
			[[
        'wrapper'       => array(
          'width' => '{1}',
        ),
      ]],
			{
				i(1, "value"),
			}
		)
	),

	s(
		"acf_conditional",
		fmt(
			[[
        'conditional_logic' => array(
          array(
            array(
              'field'    => 'field_' . FIELD_BLOCK_NAME . '{}',
              'operator' => '{}',
              'value'    => '{}',
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

	s(
		"acf_select",
		fmt(
			[[
        ${a} = array(
          'key'               => 'field_' . FIELD_BLOCK_NAME . '_{a}',
          'label'             => __( '{}', '{b}' ),
          'name'              => '{a}',
          'type'              => 'select',
          'choices'           => array(
            '${c}' => __( '{}', '{b}' ),
            '${}' => __( '{}', '{b}' ),
          ),
          'default_value'     => '{c}',
          'return_format'     => 'value',
        );
      ]],
			{
				a = i(1, "field_name"),
				i(2, "field label"),
				b = i(3, "text_domain"),
				c = i(4, "option-1"),
				i(5, "option 1 description"),
				i(6, "option-2"),
				i(7, "option 2 description"),
			},
			{
				repeat_duplicates = true,
			}
		)
	),

	s(
		"acf_text",
		fmt(
			[[
        ${a} = array(
          'key'               => 'field_' . FIELD_BLOCK_NAME . '_{a}',
          'name'              => '{a}',
          'label'             => __( '{}', '{}' ),
          'type'              => 'text',
        );
      ]],
			{
				a = i(1, "field_name"),
				i(2, "field label"),
				i(3, "text_domain"),
			},
			{
				repeat_duplicates = true,
			}
		)
	),

	s(
		"acf_color",
		fmt(
			[[
        ${a} = array(
          'key'           => 'field_' . FIELD_BLOCK_NAME . '_{a}',
          'name'          => '{a}',
          'label'         => __( '{}', '{}' ),
          'type'          => 'color_picker',
          'default_value' => '#{}',
        );
      ]],
			{
				a = i(1, "field_name"),
				i(2, "field label"),
				i(3, "text_domain"),
				i(4, "ffffff"),
			},
			{
				repeat_duplicates = true,
			}
		)
	),

	s(
		"acf_image",
		fmt(
			[[
        ${a} = array(
          'key'               => 'field_' . FIELD_BLOCK_NAME . '_{a}',
          'label'             => __( '{}', '{}' ),
          'name'              => '{a}',
          'type'              => 'image',
          'required'          => {},
          'return_format'     => 'id',
        );
      ]],
			{
				a = i(1, "field_name"),
				i(2, "field label"),
				i(3, "text_domain"),
				i(4, "1"),
			},
			{
				repeat_duplicates = true,
			}
		)
	),

	s(
		"acf_link",
		fmt(
			[[
        ${a} = array(
          'key'               => 'field_' . FIELD_BLOCK_NAME . '_{a}',
          'label'             => __( '{}', '{}' ),
          'name'              => '{a}',
          'type'              => 'link',
          'return_format'     => 'array',
        );
      ]],
			{
				a = i(1, "field_name"),
				i(2, "field label"),
				i(3, "text_domain"),
			},
			{
				repeat_duplicates = true,
			}
		)
	),

	s(
		"acf_video",
		fmt(
			[[
        ${a} = array(
          'key'               => 'field_' . FIELD_BLOCK_NAME . '_{a}',
          'name'              => '{a}',
          'label'             => __( '{}', '{b}' ),
          'type'              => 'file',
          'return_format'     => 'url',
          'library'           => 'all',
          'mime_types'        => 'mp4,webm,ogv',
          'required'          => {},
          'instructions'      => __( '{}', '{b}' ),
        );
      ]],
			{
				a = i(1, "field_name"),
				i(2, "field label"),
				b = i(3, "text_domain"),
				i(4, "1"),
				i(5, "Field intructions"),
			},
			{
				repeat_duplicates = true,
			}
		)
	),

	s(
		"acf_check_button",
		fmt(
			[[
        ${a} = array(
          'key'               => 'field_' . FIELD_BLOCK_NAME . '_{a}',
          'name'              => '{a}',
          'label'             => __( '{}', '{}' ),
          'type'              => 'true_false',
          'default_value'     => 0,
          'ui'                => 1,
        );
      ]],
			{
				a = i(1, "field_name"),
				i(2, "field label"),
				i(3, "text_domain"),
			},
			{
				repeat_duplicates = true,
			}
		)
	),

	s(
		"acf_number",
		fmt(
			[[
        ${a} = array(
          'key'           => 'field_' . FIELD_BLOCK_NAME . '_{a}',
          'name'          => '{a}',
          'label'         => __( '{}', '{}' ),
          'type'          => 'number',
          'default_value' => 5,
          'min'           => 1,
          'step'          => 1,
        );
      ]],
			{
				a = i(1, "field_name"),
				i(2, "field label"),
				i(3, "text_domain"),
			},
			{
				repeat_duplicates = true,
			}
		)
	),

	s(
		"acf_group",
		fmt(
			[[
        acf_add_local_field_group(
          array(
            'key'      => 'group_block_' . FIELD_BLOCK_NAME,
            'title'    => __( 'Block: {1}', '{2}' ),
            'fields'   => array(
              ${3},
              ${4},
            ),
            'location' => array(
              array(
                array(
                  'param'    => 'block',
                  'operator' => '==',
                  'value'    => '{5}/{6}',
                ),
              ),
            ),
          )
        );
      ]],
			{
				i(1, "group_name"),
				i(2, "text_domain"),
				i(3, "field_name_1"),
				i(4, "field_name_2"),
				i(5, "plugin_name"),
				i(6, "block_name"),
			}
		)
	),
}

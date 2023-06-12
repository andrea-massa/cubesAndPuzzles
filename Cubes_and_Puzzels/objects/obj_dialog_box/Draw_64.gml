/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 42318500
/// @DnDArgument : "var" "hide"
/// @DnDArgument : "value" "false"
if(hide == false)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 245DF1FB
	/// @DnDParent : 42318500
	/// @DnDArgument : "x" "672"
	/// @DnDArgument : "y" "152"
	/// @DnDArgument : "sprite" "spr_dialog_box"
	/// @DnDSaveInfo : "sprite" "spr_dialog_box"
	draw_sprite(spr_dialog_box, 0, 672, 152);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 4494EEB4
	/// @DnDParent : 42318500
	draw_set_colour($FFFFFFFF & $ffffff);
	var l4494EEB4_0=($FFFFFFFF >> 24);
	draw_set_alpha(l4494EEB4_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 03E7E86C
	/// @DnDParent : 42318500
	/// @DnDArgument : "font" "CPFont"
	/// @DnDSaveInfo : "font" "CPFont"
	draw_set_font(CPFont);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 2DE2C162
	/// @DnDParent : 42318500
	/// @DnDArgument : "x" "282"
	/// @DnDArgument : "y" "48"
	/// @DnDArgument : "xscale" "1.2"
	/// @DnDArgument : "yscale" "1.2"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "text" "speaker"
	draw_text_transformed(282, 48, "" + string(speaker), 1.2, 1.2, 0);

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 52911DDC
	/// @DnDParent : 42318500
	/// @DnDArgument : "code" "char_squence = string_copy(text_to_display, 0, ceil(counter))$(13_10)if counter < string_length(text_to_display) {$(13_10)	switch(text_speed) {$(13_10)		case 1:$(13_10)			counter += 0.4$(13_10)			break$(13_10)		case 2:$(13_10)			counter += 0.8$(13_10)			break$(13_10)		case 3:$(13_10)			counter += 1$(13_10)			break$(13_10)		default:$(13_10)			counter += 0.4$(13_10)			break$(13_10)	}$(13_10)}"
	char_squence = string_copy(text_to_display, 0, ceil(counter))
	if counter < string_length(text_to_display) {
		switch(text_speed) {
			case 1:
				counter += 0.4
				break
			case 2:
				counter += 0.8
				break
			case 3:
				counter += 1
				break
			default:
				counter += 0.4
				break
		}
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 4875ACF0
	/// @DnDParent : 42318500
	/// @DnDArgument : "x" "308"
	/// @DnDArgument : "y" "80"
	/// @DnDArgument : "xscale" "1.2"
	/// @DnDArgument : "yscale" "1.2"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "text" "char_squence"
	draw_text_transformed(308, 80, "" + string(char_squence), 1.2, 1.2, 0);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0304278F
	/// @DnDParent : 42318500
	/// @DnDArgument : "var" "counter"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "string_length(text_to_display)"
	if(counter >= string_length(text_to_display))
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 7E28C2B7
		/// @DnDParent : 0304278F
		/// @DnDArgument : "color" "$FF00FF00"
		draw_set_colour($FF00FF00 & $ffffff);
		var l7E28C2B7_0=($FF00FF00 >> 24);
		draw_set_alpha(l7E28C2B7_0 / $ff);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7E6D84AF
		/// @DnDParent : 0304278F
		/// @DnDArgument : "var" "auto_advance"
		/// @DnDArgument : "value" "false"
		if(auto_advance == false)
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 5F830808
			/// @DnDParent : 7E6D84AF
			/// @DnDArgument : "x" "1006"
			/// @DnDArgument : "y" "230"
			/// @DnDArgument : "xscale" "1.2"
			/// @DnDArgument : "yscale" "1.2"
			/// @DnDArgument : "caption" ""ENTER""
			draw_text_transformed(1006, 230, string("ENTER") + "", 1.2, 1.2, 0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 684B204C
			/// @DnDParent : 7E6D84AF
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "manager.can_move_to_next_box"
			manager.can_move_to_next_box = true;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 68E7142D
else
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 63EE82EB
	/// @DnDParent : 68E7142D
	/// @DnDArgument : "x" "672"
	/// @DnDArgument : "y" "-1000"
	/// @DnDArgument : "sprite" "spr_dialog_box"
	/// @DnDSaveInfo : "sprite" "spr_dialog_box"
	draw_sprite(spr_dialog_box, 0, 672, -1000);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 4D402756
	/// @DnDParent : 68E7142D
	draw_set_colour($FFFFFFFF & $ffffff);
	var l4D402756_0=($FFFFFFFF >> 24);
	draw_set_alpha(l4D402756_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 16D56804
	/// @DnDParent : 68E7142D
	/// @DnDArgument : "font" "CPFont"
	/// @DnDSaveInfo : "font" "CPFont"
	draw_set_font(CPFont);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 4A2CC1F2
	/// @DnDParent : 68E7142D
	/// @DnDArgument : "x" "282"
	/// @DnDArgument : "y" "-1000"
	/// @DnDArgument : "xscale" "1.2"
	/// @DnDArgument : "yscale" "1.2"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "text" "speaker"
	draw_text_transformed(282, -1000, "" + string(speaker), 1.2, 1.2, 0);

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 320A59D1
	/// @DnDParent : 68E7142D
	/// @DnDArgument : "code" "char_squence = string_copy(text_to_display, 0, ceil(counter))$(13_10)if counter < string_length(text_to_display) {$(13_10)	switch(text_speed) {$(13_10)		case 1:$(13_10)			counter += 0.4$(13_10)			break$(13_10)		case 2:$(13_10)			counter += 0.8$(13_10)			break$(13_10)		case 3:$(13_10)			counter += 1$(13_10)			break$(13_10)		default:$(13_10)			counter += 0.4$(13_10)			break$(13_10)	}$(13_10)}"
	char_squence = string_copy(text_to_display, 0, ceil(counter))
	if counter < string_length(text_to_display) {
		switch(text_speed) {
			case 1:
				counter += 0.4
				break
			case 2:
				counter += 0.8
				break
			case 3:
				counter += 1
				break
			default:
				counter += 0.4
				break
		}
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 4EB53AF0
	/// @DnDParent : 68E7142D
	/// @DnDArgument : "x" "308"
	/// @DnDArgument : "y" "-1000"
	/// @DnDArgument : "xscale" "1.2"
	/// @DnDArgument : "yscale" "1.2"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "text" "char_squence"
	draw_text_transformed(308, -1000, "" + string(char_squence), 1.2, 1.2, 0);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 488A5ABD
	/// @DnDParent : 68E7142D
	/// @DnDArgument : "var" "counter"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "string_length(text_to_display)"
	if(counter >= string_length(text_to_display))
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 71A68170
		/// @DnDParent : 488A5ABD
		/// @DnDArgument : "color" "$FF00FF00"
		draw_set_colour($FF00FF00 & $ffffff);
		var l71A68170_0=($FF00FF00 >> 24);
		draw_set_alpha(l71A68170_0 / $ff);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 50D9A61B
		/// @DnDParent : 488A5ABD
		/// @DnDArgument : "var" "auto_advance"
		/// @DnDArgument : "value" "false"
		if(auto_advance == false)
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 3E70657C
			/// @DnDParent : 50D9A61B
			/// @DnDArgument : "x" "1006"
			/// @DnDArgument : "y" "-1000"
			/// @DnDArgument : "xscale" "1.2"
			/// @DnDArgument : "yscale" "1.2"
			/// @DnDArgument : "caption" ""ENTER""
			draw_text_transformed(1006, -1000, string("ENTER") + "", 1.2, 1.2, 0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3A7BA6CA
			/// @DnDParent : 50D9A61B
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "manager.can_move_to_next_box"
			manager.can_move_to_next_box = false;
		}
	}
}
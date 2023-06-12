/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 5F606781
/// @DnDArgument : "x" "672"
/// @DnDArgument : "y" "152"
/// @DnDArgument : "sprite" "spr_dialog_box"
/// @DnDSaveInfo : "sprite" "spr_dialog_box"
draw_sprite(spr_dialog_box, 0, 672, 152);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 7EAF530B
draw_set_colour($FFFFFFFF & $ffffff);
var l7EAF530B_0=($FFFFFFFF >> 24);
draw_set_alpha(l7EAF530B_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 320EA03F
/// @DnDArgument : "font" "CPFont"
/// @DnDSaveInfo : "font" "CPFont"
draw_set_font(CPFont);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 3F56B7C6
/// @DnDArgument : "x" "282"
/// @DnDArgument : "y" "48"
/// @DnDArgument : "xscale" "1.2"
/// @DnDArgument : "yscale" "1.2"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "speaker"
draw_text_transformed(282, 48, "" + string(speaker), 1.2, 1.2, 0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4BD9B963
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
/// @DnDHash : 7FF2FFB4
/// @DnDArgument : "x" "308"
/// @DnDArgument : "y" "80"
/// @DnDArgument : "xscale" "1.2"
/// @DnDArgument : "yscale" "1.2"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "char_squence"
draw_text_transformed(308, 80, "" + string(char_squence), 1.2, 1.2, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2B8575FD
/// @DnDArgument : "var" "counter"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "string_length(text_to_display)"
if(counter >= string_length(text_to_display))
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 7A4D4D25
	/// @DnDParent : 2B8575FD
	/// @DnDArgument : "color" "$FF00FF00"
	draw_set_colour($FF00FF00 & $ffffff);
	var l7A4D4D25_0=($FF00FF00 >> 24);
	draw_set_alpha(l7A4D4D25_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 600F57A7
	/// @DnDParent : 2B8575FD
	/// @DnDArgument : "x" "1000"
	/// @DnDArgument : "y" "230"
	/// @DnDArgument : "xscale" "1.2"
	/// @DnDArgument : "yscale" "1.2"
	/// @DnDArgument : "caption" ""Y or N""
	draw_text_transformed(1000, 230, string("Y or N") + "", 1.2, 1.2, 0);
}
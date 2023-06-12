/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 1243F154
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6AFE8D7D
/// @DnDArgument : "color" "$FF000000"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF000000 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5F33F480
/// @DnDArgument : "x" "64"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "16"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "2"
/// @DnDArgument : "yscale" "2"
/// @DnDArgument : "caption" ""CH ""
/// @DnDArgument : "text" "chamber_number"
draw_text_transformed(x + 64, y + 16, string("CH ") + string(chamber_number), 2, 2, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 15DE136F
/// @DnDArgument : "x1" "32"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "64"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "208"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "80"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "value" "progress"
/// @DnDArgument : "barcol" "$00FFFFFF"
/// @DnDArgument : "mincol" "$FF000000"
/// @DnDArgument : "maxcol" "$FF000000"
draw_healthbar(x + 32, y + 64, x + 208, y + 80, progress, $FFFFFFFF & $FFFFFF, $FF000000 & $FFFFFF, $FF000000 & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($00FFFFFF>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1D898855
/// @DnDComment : Use the get_puzzle _elements function to set puzzle info
/// @DnDArgument : "x" "32"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "128"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "1.4"
/// @DnDArgument : "yscale" "1.4"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "text" "get_puzzle_elements(chamber_number)"
draw_text_transformed(x + 32, y + 128, "" + string(get_puzzle_elements(chamber_number)), 1.4, 1.4, 0);
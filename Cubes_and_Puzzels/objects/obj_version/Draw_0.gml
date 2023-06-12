/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 41603468
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 33D09F27
/// @DnDArgument : "font" "CPFont"
/// @DnDSaveInfo : "font" "CPFont"
draw_set_font(CPFont);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 33CFE2E1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "5"
/// @DnDArgument : "yscale" "5"
/// @DnDArgument : "caption" ""Version: ""
/// @DnDArgument : "text" ""ALPHA 1.0.0""
draw_text_transformed(x + 0, y + 0, string("Version: ") + string("ALPHA 1.0.0"), 5, 5, 0);
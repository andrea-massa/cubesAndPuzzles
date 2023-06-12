/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 597DA5D0
/// @DnDArgument : "expr" "isHover"
if(isHover)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2CC9FA0A
	/// @DnDParent : 597DA5D0
	/// @DnDArgument : "expr" "obj_grav_gun.object_held"
	/// @DnDArgument : "not" "1"
	if(!(obj_grav_gun.object_held))
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 0D4EB0E3
		/// @DnDParent : 2CC9FA0A
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "1.15"
		/// @DnDArgument : "yscale" "1.15"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "alpha" "3"
		/// @DnDArgument : "sprite" "spr_cube_highlight"
		/// @DnDArgument : "col" "$FF1875F7"
		/// @DnDSaveInfo : "sprite" "spr_cube_highlight"
		draw_sprite_ext(spr_cube_highlight, 0, x + 0, y + 0, 1.15, 1.15, image_angle + 0, $FF1875F7 & $ffffff, 3);
	}
}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 06A26352
draw_self();
/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 168405AC
/// @DnDArgument : "expr" "spawn_with_gun"
if(spawn_with_gun)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3CBEB1AB
	/// @DnDParent : 168405AC
	/// @DnDArgument : "expr" "spr_player_jump_end_noarm"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = spr_player_jump_end_noarm;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 566E8D2B
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4DA8094E
	/// @DnDParent : 566E8D2B
	/// @DnDArgument : "expr" "spr_player_jump_end"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = spr_player_jump_end;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 37D7F08C
/// @DnDArgument : "steps" "35"
/// @DnDArgument : "alarm" "3"
alarm_set(3, 35);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 448406CE
/// @DnDArgument : "expr" "-jump_height*4"
/// @DnDArgument : "var" "phy_speed_y"
phy_speed_y = -jump_height*4;
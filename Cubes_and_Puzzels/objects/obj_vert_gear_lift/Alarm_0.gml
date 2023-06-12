/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2D6996E6
/// @DnDArgument : "var" "direction_to_go"
/// @DnDArgument : "value" ""down""
if(direction_to_go == "down")
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 343AA7CF
	/// @DnDParent : 2D6996E6
	/// @DnDArgument : "expr" ""up""
	/// @DnDArgument : "var" "direction_to_go"
	direction_to_go = "up";

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 797E5BF8
	/// @DnDParent : 2D6996E6
	/// @DnDArgument : "imageind" "image_index"
	/// @DnDArgument : "spriteind" "spr_vert_gear_lift_up"
	/// @DnDSaveInfo : "spriteind" "spr_vert_gear_lift_up"
	sprite_index = spr_vert_gear_lift_up;
	image_index = image_index;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44C4760F
	/// @DnDParent : 2D6996E6
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "wait"
	wait = false;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 01DD8975
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 52975517
	/// @DnDParent : 01DD8975
	/// @DnDArgument : "expr" ""down""
	/// @DnDArgument : "var" "direction_to_go"
	direction_to_go = "down";

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1E51396A
	/// @DnDParent : 01DD8975
	/// @DnDArgument : "imageind" "image_index"
	/// @DnDArgument : "spriteind" "spr_vert_gear_lift_down"
	/// @DnDSaveInfo : "spriteind" "spr_vert_gear_lift_down"
	sprite_index = spr_vert_gear_lift_down;
	image_index = image_index;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 473D7737
	/// @DnDParent : 01DD8975
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "wait"
	wait = false;
}
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4AD2DB26
/// @DnDArgument : "var" "direction_to_go"
/// @DnDArgument : "value" ""left""
if(direction_to_go == "left")
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 522B2DD7
	/// @DnDParent : 4AD2DB26
	/// @DnDArgument : "expr" ""right""
	/// @DnDArgument : "var" "direction_to_go"
	direction_to_go = "right";

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 01E52537
	/// @DnDParent : 4AD2DB26
	/// @DnDArgument : "imageind" "image_index"
	/// @DnDArgument : "spriteind" "spr_horz_gear_lift_right"
	/// @DnDSaveInfo : "spriteind" "spr_horz_gear_lift_right"
	sprite_index = spr_horz_gear_lift_right;
	image_index = image_index;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 060C5A59
	/// @DnDParent : 4AD2DB26
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "wait"
	wait = false;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 29E72141
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 05B93A20
	/// @DnDParent : 29E72141
	/// @DnDArgument : "expr" ""left""
	/// @DnDArgument : "var" "direction_to_go"
	direction_to_go = "left";

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 73B6B497
	/// @DnDParent : 29E72141
	/// @DnDArgument : "imageind" "image_index"
	/// @DnDArgument : "spriteind" "spr_horz_gear_lift_left"
	/// @DnDSaveInfo : "spriteind" "spr_horz_gear_lift_left"
	sprite_index = spr_horz_gear_lift_left;
	image_index = image_index;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6BF9A8C5
	/// @DnDParent : 29E72141
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "wait"
	wait = false;
}
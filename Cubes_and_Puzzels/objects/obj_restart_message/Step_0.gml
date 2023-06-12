/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 027E50D7
/// @DnDArgument : "expr" "keyboard_check_pressed(ord("Y")) and counter >= string_length(text_to_display)"
if(keyboard_check_pressed(ord("Y")) and counter >= string_length(text_to_display))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 53785B0B
	/// @DnDParent : 027E50D7
	instance_destroy();

	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 669C356D
	/// @DnDParent : 027E50D7
	room_restart();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 06B9847E
/// @DnDArgument : "expr" "keyboard_check_pressed(ord("N")) and counter >= string_length(text_to_display)"
if(keyboard_check_pressed(ord("N")) and counter >= string_length(text_to_display))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 242C9E6A
	/// @DnDParent : 06B9847E
	instance_destroy();
}
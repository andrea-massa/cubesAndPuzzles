/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40FEA91B
/// @DnDArgument : "var" "spawner_who_spawned"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "noone"
if(!(spawner_who_spawned == noone))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3CCF42FA
	/// @DnDParent : 40FEA91B
	/// @DnDArgument : "expr" "noone"
	/// @DnDArgument : "var" "spawner_who_spawned.spawned_cube"
	spawner_who_spawned.spawned_cube = noone;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6969902C
	/// @DnDParent : 40FEA91B
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0D398A9D
else
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 72D8982B
	/// @DnDParent : 0D398A9D
	instance_destroy();
}
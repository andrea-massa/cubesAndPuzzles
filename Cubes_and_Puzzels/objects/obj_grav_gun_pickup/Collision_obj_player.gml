/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4A679737
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "other.spawn_with_gun"
other.spawn_with_gun = true;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 043803C2
/// @DnDArgument : "var" "object_to_trigger"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "noone"
if(!(object_to_trigger == noone))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 38DC3F4E
	/// @DnDParent : 043803C2
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "object_to_trigger.activate"
	object_to_trigger.activate = true;
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 76E99A11
instance_destroy();
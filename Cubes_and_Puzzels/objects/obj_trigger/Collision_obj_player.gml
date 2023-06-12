/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0B44E1C4
/// @DnDArgument : "var" "trigger_once"
/// @DnDArgument : "value" "true"
if(trigger_once == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7DA8DE58
	/// @DnDParent : 0B44E1C4
	/// @DnDArgument : "var" "can_trigger"
	/// @DnDArgument : "value" "true"
	if(can_trigger == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1DEF7C65
		/// @DnDParent : 7DA8DE58
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "object_to_trigger.activate"
		object_to_trigger.activate = true;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0F699021
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 149D7C08
	/// @DnDParent : 0F699021
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "object_to_trigger.activate"
	object_to_trigger.activate = true;
}
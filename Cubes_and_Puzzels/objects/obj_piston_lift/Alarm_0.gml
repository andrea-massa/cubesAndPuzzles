/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 752540F2
/// @DnDArgument : "var" "direction_to_go"
/// @DnDArgument : "value" ""down""
if(direction_to_go == "down")
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F44C22C
	/// @DnDParent : 752540F2
	/// @DnDArgument : "expr" ""up""
	/// @DnDArgument : "var" "direction_to_go"
	direction_to_go = "up";

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44638BD2
	/// @DnDParent : 752540F2
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "wait"
	wait = false;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2C041DAF
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 026BCF82
	/// @DnDParent : 2C041DAF
	/// @DnDArgument : "expr" ""down""
	/// @DnDArgument : "var" "direction_to_go"
	direction_to_go = "down";

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 01FAFD99
	/// @DnDParent : 2C041DAF
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "wait"
	wait = false;
}
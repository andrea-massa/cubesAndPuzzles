/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 617CACC0
/// @DnDArgument : "expr" "dim = 1"
if(dim = 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0EC0B9E7
	/// @DnDParent : 617CACC0
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "is_dim"
	is_dim = true;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 78819295
/// @DnDArgument : "expr" "dim = 0.4"
if(dim = 0.4)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 229320AD
	/// @DnDParent : 78819295
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "is_dim"
	is_dim = false;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 55520D6B
/// @DnDArgument : "expr" "is_dim"
if(is_dim)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AA1CE6E
	/// @DnDParent : 55520D6B
	/// @DnDArgument : "expr" "-.01"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "dim"
	dim += -.01;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 37978E8E
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E286317
	/// @DnDParent : 37978E8E
	/// @DnDArgument : "expr" ".01"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "dim"
	dim += .01;
}
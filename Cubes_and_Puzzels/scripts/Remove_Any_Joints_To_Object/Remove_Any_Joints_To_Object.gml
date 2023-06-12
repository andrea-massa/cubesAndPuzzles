/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 79C7930E
/// @DnDComment : while joints exist remove
/// @DnDInput : 2
/// @DnDArgument : "funcName" "remove_joints"
/// @DnDArgument : "arg" "gun"
/// @DnDArgument : "arg_1" "joint"
function remove_joints(gun, joint) 
{
	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 1E634342
	/// @DnDParent : 79C7930E
	/// @DnDArgument : "var" "joint"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "-1"
	while ((joint > -1)) {
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 1DFCA55C
		/// @DnDParent : 1E634342
		/// @DnDArgument : "function" "physics_joint_delete"
		/// @DnDArgument : "arg" "joint"
		physics_joint_delete(joint);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 136A6004
		/// @DnDParent : 1E634342
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "joint"
		joint += -1;
	}
}
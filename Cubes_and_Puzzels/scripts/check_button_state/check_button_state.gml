/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 46B6BF04
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_button_state "
/// @DnDArgument : "arg" "buttonActive "
function check_button_state (buttonActive ) 
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7F3F59C8
	/// @DnDParent : 46B6BF04
	/// @DnDArgument : "expr" "buttonActive"
	if(buttonActive)
	{
		/// @DnDAction : YoYo Games.Common.Return
		/// @DnDVersion : 1
		/// @DnDHash : 0DE4EE45
		/// @DnDParent : 7F3F59C8
		/// @DnDArgument : "value" "true"
		return true;
	}
}
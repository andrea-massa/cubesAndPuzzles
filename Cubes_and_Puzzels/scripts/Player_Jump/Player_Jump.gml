/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6C5AC9C0
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "jump"
function jump() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 41E9257E
	/// @DnDParent : 6C5AC9C0
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "isJumping"
	isJumping = true;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4A94C96F
	/// @DnDParent : 6C5AC9C0
	/// @DnDArgument : "expr" "spawn_with_gun"
	if(spawn_with_gun)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 43F4C9A5
		/// @DnDParent : 4A94C96F
		/// @DnDArgument : "expr" "sprite_index = spr_player_jump_start_noarm"
		/// @DnDArgument : "not" "1"
		if(!(sprite_index = spr_player_jump_start_noarm))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 203A9CD6
			/// @DnDParent : 43F4C9A5
			/// @DnDArgument : "expr" "spr_player_jump_start_noarm"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_player_jump_start_noarm;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1CEF9931
	/// @DnDParent : 6C5AC9C0
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 2E195D49
		/// @DnDParent : 1CEF9931
		/// @DnDArgument : "expr" "sprite_index = spr_player_jump_start"
		/// @DnDArgument : "not" "1"
		if(!(sprite_index = spr_player_jump_start))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 25BF5378
			/// @DnDParent : 2E195D49
			/// @DnDArgument : "expr" "spr_player_jump_start"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_player_jump_start;
		}
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 26C899EE
	/// @DnDParent : 6C5AC9C0
	/// @DnDArgument : "steps" "room_speed / 5"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, room_speed / 5);
}
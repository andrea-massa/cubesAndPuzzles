/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 63B7732C
/// @DnDArgument : "expr" "auto_advance and counter >= string_length(text_to_display)"
if(auto_advance and counter >= string_length(text_to_display))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7739DDE5
	/// @DnDParent : 63B7732C
	/// @DnDArgument : "var" "wait"
	/// @DnDArgument : "value" "false"
	if(wait == false)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 01E3B56D
		/// @DnDParent : 7739DDE5
		/// @DnDArgument : "expr" "manager.script_number_start > 35 and hideable"
		if(manager.script_number_start > 35 and hideable)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5D9D54AB
			/// @DnDParent : 01E3B56D
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "hide"
			hide = true;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 03DA2DF5
		/// @DnDParent : 7739DDE5
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4569EF20
			/// @DnDParent : 03DA2DF5
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "wait"
			wait = true;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 5B20B6AB
			/// @DnDParent : 03DA2DF5
			/// @DnDArgument : "steps" "70"
			alarm_set(0, 70);
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 796886A4
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 34700ADB
	/// @DnDParent : 796886A4
	/// @DnDArgument : "expr" "auto_advance == false and counter <= string_length(text_to_display)"
	if(auto_advance == false and counter <= string_length(text_to_display))
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 051D6803
		/// @DnDParent : 34700ADB
		/// @DnDArgument : "expr" "keyboard_check_pressed(vk_enter) and counter >= string_length(text_to_display)"
		if(keyboard_check_pressed(vk_enter) and counter >= string_length(text_to_display))
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 02F71AD3
			/// @DnDParent : 051D6803
			instance_destroy();
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3BB7FE00
			/// @DnDParent : 051D6803
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "manager.can_move_to_next_box"
			manager.can_move_to_next_box = true;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 08D32AB6
		/// @DnDParent : 34700ADB
		/// @DnDArgument : "expr" "keyboard_check_pressed(vk_enter)"
		if(keyboard_check_pressed(vk_enter))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 27AC47A9
			/// @DnDParent : 08D32AB6
			/// @DnDArgument : "expr" "string_length(text_to_display)"
			/// @DnDArgument : "var" "counter"
			counter = string_length(text_to_display);
		}
	}
}
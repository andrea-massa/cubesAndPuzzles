/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5B53B9C3
/// @DnDComment : if activate run dialog scripts
/// @DnDArgument : "var" "activate"
/// @DnDArgument : "value" "true"
if(activate == true)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 1D621CD3
	/// @DnDParent : 5B53B9C3
	/// @DnDArgument : "obj" "obj_dialog_box"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_dialog_box"
	var l1D621CD3_0 = false;
	l1D621CD3_0 = instance_exists(obj_dialog_box);
	if(!l1D621CD3_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A78DC17
		/// @DnDParent : 1D621CD3
		/// @DnDArgument : "var" "can_move_to_next_box"
		/// @DnDArgument : "value" "false"
		if(can_move_to_next_box == false)
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 3A2640A5
			/// @DnDComment : created dialog boxes and applies narrative script
			/// @DnDInput : 3
			/// @DnDParent : 5A78DC17
			/// @DnDArgument : "function" "stripted_dialog"
			/// @DnDArgument : "arg" "script_number_start"
			/// @DnDArgument : "arg_1" "self"
			/// @DnDArgument : "arg_2" "text_speed"
			stripted_dialog(script_number_start, self, text_speed);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4724E963
	/// @DnDComment : when dialog box finishes script allow player to press enter to move to next dialog box if possible
	/// @DnDParent : 5B53B9C3
	/// @DnDArgument : "var" "can_move_to_next_box"
	/// @DnDArgument : "value" "true"
	if(can_move_to_next_box == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 07C9F155
		/// @DnDParent : 4724E963
		/// @DnDArgument : "var" "auto_advance"
		/// @DnDArgument : "value" "true"
		if(auto_advance == true)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 782B7286
			/// @DnDParent : 07C9F155
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "script_number_start"
			script_number_start += 1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 669C3FFB
			/// @DnDParent : 07C9F155
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "can_move_to_next_box"
			can_move_to_next_box = false;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 7A100B76
		/// @DnDParent : 4724E963
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 441E0B50
			/// @DnDParent : 7A100B76
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "can_move_to_next_box"
			can_move_to_next_box = false;
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
			/// @DnDVersion : 1
			/// @DnDHash : 27915074
			/// @DnDParent : 7A100B76
			/// @DnDArgument : "key" "vk_enter"
			var l27915074_0;
			l27915074_0 = keyboard_check_pressed(vk_enter);
			if (l27915074_0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 637E847D
				/// @DnDParent : 27915074
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "script_number_start"
				script_number_start += 1;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2F3A06F7
	/// @DnDComment : if we run out of scripts to play activaate next mannager or object
	/// @DnDParent : 5B53B9C3
	/// @DnDArgument : "var" "script_number_start"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "script_number_end"
	if(script_number_start >= script_number_end)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 01CC8593
		/// @DnDParent : 2F3A06F7
		/// @DnDArgument : "var" "can_trigger"
		/// @DnDArgument : "value" "true"
		if(can_trigger == true)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5E3F0B4A
			/// @DnDParent : 01CC8593
			/// @DnDArgument : "var" "object_to_trigger"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "value" "noone"
			if(!(object_to_trigger == noone))
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6BE098EB
				/// @DnDParent : 5E3F0B4A
				/// @DnDArgument : "var" "object_to_trigger.activate"
				/// @DnDArgument : "value" "true"
				if(object_to_trigger.activate == true)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 27FAE76D
					/// @DnDParent : 6BE098EB
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "object_to_trigger.activate"
					object_to_trigger.activate = false;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 4EE99DCB
				/// @DnDParent : 5E3F0B4A
				else
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4838F2E6
					/// @DnDParent : 4EE99DCB
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "object_to_trigger.activate"
					object_to_trigger.activate = true;
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4A79DD99
				/// @DnDParent : 5E3F0B4A
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "var" "activate"
				activate = false;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 75D8024B
			/// @DnDParent : 01CC8593
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1C2656BD
				/// @DnDParent : 75D8024B
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "var" "activate"
				activate = false;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 300A0F12
		/// @DnDParent : 2F3A06F7
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 527E3EEE
			/// @DnDParent : 300A0F12
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "activate"
			activate = false;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5637F9FF
	/// @DnDComment : should this manager trigger object when it activates
	/// @DnDParent : 5B53B9C3
	/// @DnDArgument : "var" "trigger_object_first"
	/// @DnDArgument : "value" "true"
	if(trigger_object_first == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 767B3063
		/// @DnDParent : 5637F9FF
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "trigger_object_first"
		trigger_object_first = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5D2D9B83
		/// @DnDParent : 5637F9FF
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "can_trigger"
		can_trigger = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 369C8F2D
		/// @DnDParent : 5637F9FF
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "object_to_trigger.activate"
		object_to_trigger.activate = true;
	}
}
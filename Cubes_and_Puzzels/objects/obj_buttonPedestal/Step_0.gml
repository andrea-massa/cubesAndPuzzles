/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 02D114E0
/// @DnDComment : If player is close to it and presses$(13_10)E, it activates the button.
/// @DnDArgument : "expr" "instance_place(x, y, obj_player)"
if(instance_place(x, y, obj_player))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1DD90A17
	/// @DnDParent : 02D114E0
	/// @DnDArgument : "expr" "keyboard_check_pressed(ord("E"))"
	if(keyboard_check_pressed(ord("E")))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 22A96CE7
		/// @DnDParent : 1DD90A17
		/// @DnDArgument : "var" "object_to_trigger"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "noone"
		if(!(object_to_trigger == noone))
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 283F89FA
			/// @DnDParent : 22A96CE7
			/// @DnDArgument : "var" "one_shot"
			/// @DnDArgument : "value" "true"
			if(one_shot == true)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7994EC27
				/// @DnDParent : 283F89FA
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "object_to_trigger.activate"
				object_to_trigger.activate = true;
			
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 78A79DD8
				/// @DnDParent : 283F89FA
				/// @DnDArgument : "imageind" "1"
				/// @DnDArgument : "spriteind" "spr_pedestalButton"
				/// @DnDSaveInfo : "spriteind" "spr_pedestalButton"
				sprite_index = spr_pedestalButton;
				image_index = 1;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 1732E1E9
			/// @DnDParent : 22A96CE7
			else
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 14779D6D
				/// @DnDParent : 1732E1E9
				/// @DnDArgument : "var" "wait"
				/// @DnDArgument : "value" "false"
				if(wait == false)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 6D31469D
					/// @DnDParent : 14779D6D
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "object_to_trigger.activate"
					object_to_trigger.activate = true;
				
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 6BA7AC12
					/// @DnDParent : 14779D6D
					/// @DnDArgument : "imageind" "1"
					/// @DnDArgument : "spriteind" "spr_pedestalButton"
					/// @DnDSaveInfo : "spriteind" "spr_pedestalButton"
					sprite_index = spr_pedestalButton;
					image_index = 1;
				
					/// @DnDAction : YoYo Games.Instances.Set_Alarm
					/// @DnDVersion : 1
					/// @DnDHash : 6A8CE257
					/// @DnDParent : 14779D6D
					/// @DnDArgument : "steps" "time"
					alarm_set(0, time);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0A0FDF85
					/// @DnDParent : 14779D6D
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "wait"
					wait = true;
				}
			}
		}
	}
}
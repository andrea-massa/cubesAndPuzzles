/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 12B5E5AC
/// @DnDComment : if activate check for player
/// @DnDArgument : "var" "activate"
/// @DnDArgument : "value" "true"
if(activate == true)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 5646A6F9
	/// @DnDParent : 12B5E5AC
	/// @DnDArgument : "obj" "obj_player"
	/// @DnDSaveInfo : "obj" "obj_player"
	var l5646A6F9_0 = false;
	l5646A6F9_0 = instance_exists(obj_player);
	if(l5646A6F9_0)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 26754047
		/// @DnDParent : 5646A6F9
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_player"
		/// @DnDSaveInfo : "object" "obj_player"
		var l26754047_0 = instance_place(x + 0, y + 0, obj_player);
		if ((l26754047_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 071DE139
			/// @DnDComment : if player detected does this trigger only activate once
			/// @DnDParent : 26754047
			/// @DnDArgument : "var" "trigger_once"
			/// @DnDArgument : "value" "true"
			if(trigger_once == true)
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 48017EDB
				/// @DnDParent : 071DE139
				/// @DnDArgument : "var" "can_trigger"
				/// @DnDArgument : "value" "true"
				if(can_trigger == true)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5B8AE3A0
					/// @DnDParent : 48017EDB
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "can_trigger"
					can_trigger = false;
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0576E417
					/// @DnDParent : 48017EDB
					/// @DnDArgument : "var" "object_to_trigger.activate"
					/// @DnDArgument : "value" "true"
					if(object_to_trigger.activate == true)
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 7C9AFF36
						/// @DnDParent : 0576E417
						/// @DnDArgument : "expr" "false"
						/// @DnDArgument : "var" "object_to_trigger.activate"
						object_to_trigger.activate = false;
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 74A22DA4
					/// @DnDParent : 48017EDB
					else
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 40E6DC02
						/// @DnDParent : 74A22DA4
						/// @DnDArgument : "expr" "true"
						/// @DnDArgument : "var" "object_to_trigger.activate"
						object_to_trigger.activate = true;
					}
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 0C932886
			/// @DnDComment : trigger multiple with a delay (prevent glitches, even though sensor object should trigger once)
			/// @DnDParent : 26754047
			else
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6280B56E
				/// @DnDParent : 0C932886
				/// @DnDArgument : "var" "can_trigger"
				/// @DnDArgument : "value" "true"
				if(can_trigger == true)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 7C11B85C
					/// @DnDParent : 6280B56E
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "can_trigger"
					can_trigger = false;
				
					/// @DnDAction : YoYo Games.Instances.Set_Alarm
					/// @DnDVersion : 1
					/// @DnDHash : 3C0C3F35
					/// @DnDParent : 6280B56E
					/// @DnDArgument : "steps" "room_speed*3"
					alarm_set(0, room_speed*3);
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 71030433
					/// @DnDParent : 6280B56E
					/// @DnDArgument : "var" "object_to_trigger.activate"
					/// @DnDArgument : "value" "true"
					if(object_to_trigger.activate == true)
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 23226F99
						/// @DnDParent : 71030433
						/// @DnDArgument : "expr" "false"
						/// @DnDArgument : "var" "object_to_trigger.activate"
						object_to_trigger.activate = false;
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 0CDC04A9
					/// @DnDParent : 6280B56E
					else
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 307C7F81
						/// @DnDParent : 0CDC04A9
						/// @DnDArgument : "expr" "true"
						/// @DnDArgument : "var" "object_to_trigger.activate"
						object_to_trigger.activate = true;
					}
				}
			}
		}
	}
}
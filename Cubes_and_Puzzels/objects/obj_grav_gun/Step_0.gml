/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 400DA501
/// @DnDComment : Check if player exsits if they don't destroy instance
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l400DA501_0 = false;
l400DA501_0 = instance_exists(obj_player);
if(l400DA501_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14D7BDE8
	/// @DnDComment : make sure gun isn't locked at a certian angle
	/// @DnDParent : 400DA501
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "phy_fixed_rotation"
	phy_fixed_rotation = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 31214557
	/// @DnDComment : Clamp guns position to players physics posistion for both x and y
	/// @DnDParent : 400DA501
	/// @DnDArgument : "expr" "obj_player.phy_position_x"
	/// @DnDArgument : "var" "phy_position_x"
	phy_position_x = obj_player.phy_position_x;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 634F2493
	/// @DnDParent : 400DA501
	/// @DnDArgument : "expr" "obj_player.phy_position_y"
	/// @DnDArgument : "var" "phy_position_y"
	phy_position_y = obj_player.phy_position_y;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 1DCCE245
	/// @DnDComment : make gun point at mouse pos
	/// @DnDInput : 4
	/// @DnDParent : 400DA501
	/// @DnDArgument : "var" "phy_rotation"
	/// @DnDArgument : "function" "set_rotation"
	/// @DnDArgument : "arg" "phy_position_x"
	/// @DnDArgument : "arg_1" "phy_position_y"
	/// @DnDArgument : "arg_2" "mouse_x"
	/// @DnDArgument : "arg_3" "mouse_y"
	phy_rotation = set_rotation(phy_position_x, phy_position_y, mouse_x, mouse_y);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7A08DD08
	/// @DnDParent : 400DA501
	/// @DnDArgument : "expr" "object_held"
	/// @DnDArgument : "not" "1"
	if(!(object_held))
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 757076DB
		/// @DnDComment : Do grab object
		/// @DnDParent : 7A08DD08
		var l757076DB_0;
		l757076DB_0 = mouse_check_button_pressed(mb_left);
		if (l757076DB_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 146F9621
			/// @DnDParent : 757076DB
			/// @DnDArgument : "var" "check_for_physic_object_at_pos(mouse_x, mouse_y)"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "value" "noone"
			if(!(check_for_physic_object_at_pos(mouse_x, mouse_y) == noone))
			{
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 3EA1ABC8
				/// @DnDComment : See if object click is in range if so weld object to gun else do nothing
				/// @DnDInput : 5
				/// @DnDParent : 146F9621
				/// @DnDArgument : "var" "object_held"
				/// @DnDArgument : "function" "raycast2d"
				/// @DnDArgument : "arg" "mouse_x"
				/// @DnDArgument : "arg_1" "mouse_y"
				/// @DnDArgument : "arg_2" "check_for_physic_object_at_pos(mouse_x,mouse_y)"
				/// @DnDArgument : "arg_3" "256"
				/// @DnDArgument : "arg_4" "obj_grav_gun"
				object_held = raycast2d(mouse_x, mouse_y, check_for_physic_object_at_pos(mouse_x,mouse_y), 256, obj_grav_gun);
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 393B31DB
			/// @DnDComment : if gun is holding object uppdate flag
			/// @DnDParent : 757076DB
			/// @DnDArgument : "var" "object_held"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "value" "noone"
			if(!(object_held == noone))
			{
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 20B608F9
				/// @DnDParent : 393B31DB
				/// @DnDArgument : "soundid" "snd_cube_pickup"
				/// @DnDSaveInfo : "soundid" "snd_cube_pickup"
				audio_play_sound(snd_cube_pickup, 0, 0);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5476B721
				/// @DnDParent : 393B31DB
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "isHolding"
				isHolding = true;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1FD02474
	/// @DnDParent : 400DA501
	/// @DnDArgument : "expr" "isHolding"
	if(isHolding)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 5ED4A152
		/// @DnDParent : 1FD02474
		/// @DnDArgument : "key" "ord("Q")"
		var l5ED4A152_0;
		l5ED4A152_0 = keyboard_check_pressed(ord("Q"));
		if (l5ED4A152_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 562405F7
			/// @DnDParent : 5ED4A152
			/// @DnDArgument : "expr" "object_held != noone"
			if(object_held != noone)
			{
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 3F0299D4
				/// @DnDParent : 562405F7
				/// @DnDArgument : "soundid" "snd_cube_stasis"
				/// @DnDSaveInfo : "soundid" "snd_cube_stasis"
				audio_play_sound(snd_cube_stasis, 0, 0);
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 74A37F2B
				/// @DnDParent : 562405F7
				/// @DnDArgument : "expr" "object_held.isLocked"
				/// @DnDArgument : "not" "1"
				if(!(object_held.isLocked))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 6B4AA4C7
					/// @DnDParent : 74A37F2B
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "object_held.isLocked"
					object_held.isLocked = true;
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1
					/// @DnDHash : 26D96551
					/// @DnDParent : 74A37F2B
					/// @DnDArgument : "soundid" "snd_cube_stasis"
					/// @DnDSaveInfo : "soundid" "snd_cube_stasis"
					audio_play_sound(snd_cube_stasis, 0, 0);
				
					/// @DnDAction : YoYo Games.Common.Execute_Code
					/// @DnDVersion : 1
					/// @DnDHash : 33F1F41F
					/// @DnDParent : 74A37F2B
					/// @DnDArgument : "code" "for( i = 0 ; i < instance_number(obj_stasisCube); i += 1) {$(13_10)	if(object_held == instance_find(obj_stasisCube, i)) {$(13_10)		remove_joints(self, joints)$(13_10)		object_held = noone$(13_10)		isHolding = false$(13_10)	}$(13_10)}$(13_10)"
					for( i = 0 ; i < instance_number(obj_stasisCube); i += 1) {
						if(object_held == instance_find(obj_stasisCube, i)) {
							remove_joints(self, joints)
							object_held = noone
							isHolding = false
						}
					}
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 536D178F
				/// @DnDParent : 562405F7
				else
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 27834DCE
					/// @DnDParent : 536D178F
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "object_held.isLocked"
					object_held.isLocked = false;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 60C9CD31
		/// @DnDComment : Do drop object
		/// @DnDParent : 1FD02474
		/// @DnDArgument : "button" "mb_right"
		var l60C9CD31_0;
		l60C9CD31_0 = mouse_check_button_pressed(mb_right);
		if (l60C9CD31_0)
		{
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 54B9B1D6
			/// @DnDParent : 60C9CD31
			/// @DnDArgument : "code" "// remove all joints (Gamemaker sometimes make more than one joint$(13_10)remove_joints(obj_grav_gun,joints)$(13_10)object_held = noone$(13_10)isHolding = false$(13_10)audio_play_sound(snd_cube_drop,0,0)"
			// remove all joints (Gamemaker sometimes make more than one joint
			remove_joints(obj_grav_gun,joints)
			object_held = noone
			isHolding = false
			audio_play_sound(snd_cube_drop,0,0)
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 44610576
else
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0B295646
	/// @DnDParent : 44610576
	instance_destroy();
}
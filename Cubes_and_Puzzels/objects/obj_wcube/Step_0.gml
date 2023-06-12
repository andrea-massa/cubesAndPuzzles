/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6C3AE852
/// @DnDArgument : "code" "//clamp speed if not getting launched by a Player Launcher$(13_10)if (round(phy_speed_y) < 0) {$(13_10)	phy_speed_y += 1$(13_10)}$(13_10)$(13_10)"
//clamp speed if not getting launched by a Player Launcher
if (round(phy_speed_y) < 0) {
	phy_speed_y += 1
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0EBC1EB7
/// @DnDArgument : "var" "die"
/// @DnDArgument : "value" "false"
if(die == false)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 38E883B4
	/// @DnDParent : 0EBC1EB7
	/// @DnDArgument : "var" "isDying"
	/// @DnDArgument : "value" "false"
	if(isDying == false)
	{
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 232AB0D0
		/// @DnDComment : if cube touches fizzeler kill cube
		/// @DnDParent : 38E883B4
		/// @DnDArgument : "obj" "obj_fizzeler"
		/// @DnDSaveInfo : "obj" "obj_fizzeler"
		var l232AB0D0_0 = false;
		l232AB0D0_0 = instance_exists(obj_fizzeler);
		if(l232AB0D0_0)
		{
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 31E8906C
			/// @DnDParent : 232AB0D0
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "target" "fiz"
			/// @DnDArgument : "object" "obj_fizzeler"
			/// @DnDSaveInfo : "object" "obj_fizzeler"
			var l31E8906C_0 = instance_place(x + 0, y + 0, obj_fizzeler);
			fiz = l31E8906C_0;
			if ((l31E8906C_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2C877A71
				/// @DnDParent : 31E8906C
				/// @DnDArgument : "var" "fiz.activate"
				/// @DnDArgument : "value" "true"
				if(fiz.activate == true)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 64EF11DE
					/// @DnDParent : 2C877A71
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "die"
					die = true;
				
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 64048F93
					/// @DnDParent : 2C877A71
					/// @DnDArgument : "spriteind" "spr_cube_death"
					/// @DnDSaveInfo : "spriteind" "spr_cube_death"
					sprite_index = spr_cube_death;
					image_index = 0;
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1
					/// @DnDHash : 09FC433C
					/// @DnDParent : 2C877A71
					/// @DnDArgument : "soundid" "snd_fizzler"
					/// @DnDSaveInfo : "soundid" "snd_fizzler"
					audio_play_sound(snd_fizzler, 0, 0);
				
					/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
					/// @DnDVersion : 1
					/// @DnDHash : 2F76C877
					/// @DnDParent : 2C877A71
					image_speed = 1;
				
					/// @DnDAction : YoYo Games.Instances.Set_Alarm
					/// @DnDVersion : 1
					/// @DnDHash : 0A4CBA1D
					/// @DnDParent : 2C877A71
					/// @DnDArgument : "steps" "room_speed"
					alarm_set(0, room_speed);
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 1ADD7C7A
		/// @DnDParent : 38E883B4
		/// @DnDArgument : "obj" "obj_floor_button"
		/// @DnDSaveInfo : "obj" "obj_floor_button"
		var l1ADD7C7A_0 = false;
		l1ADD7C7A_0 = instance_exists(obj_floor_button);
		if(l1ADD7C7A_0)
		{
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 2D26FCA2
			/// @DnDParent : 1ADD7C7A
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "obj_floor_button"
			/// @DnDSaveInfo : "object" "obj_floor_button"
			var l2D26FCA2_0 = instance_place(x + 0, y + 1, obj_floor_button);
			if ((l2D26FCA2_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 77160257
				/// @DnDParent : 2D26FCA2
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "activate"
				activate = true;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 7D4B5FCC
			/// @DnDParent : 1ADD7C7A
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7307746A
				/// @DnDParent : 7D4B5FCC
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "var" "activate"
				activate = false;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2D3E29A0
		/// @DnDComment : if it is activated by a button set state (buttons check if cube is$(13_10) above) TODO check if the cube is not on a button set state back to off
		/// @DnDParent : 38E883B4
		/// @DnDArgument : "var" "activate"
		/// @DnDArgument : "value" "true"
		if(activate == true)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 3388D689
			/// @DnDParent : 2D3E29A0
			/// @DnDArgument : "spriteind" "spr_weighted_cube_on"
			/// @DnDSaveInfo : "spriteind" "spr_weighted_cube_on"
			sprite_index = spr_weighted_cube_on;
			image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 493865C6
		/// @DnDParent : 38E883B4
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 71882F3E
			/// @DnDParent : 493865C6
			/// @DnDArgument : "spriteind" "spr_weighted_cube_off"
			/// @DnDSaveInfo : "spriteind" "spr_weighted_cube_off"
			sprite_index = spr_weighted_cube_off;
			image_index = 0;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7E21EA1D
else
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 35A71601
	/// @DnDParent : 7E21EA1D
	/// @DnDArgument : "obj" "obj_grav_gun"
	/// @DnDSaveInfo : "obj" "obj_grav_gun"
	var l35A71601_0 = false;
	l35A71601_0 = instance_exists(obj_grav_gun);
	if(l35A71601_0)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 09504ECE
		/// @DnDParent : 35A71601
		/// @DnDArgument : "code" "// remove all joints (Gamemaker sometimes make more than one joint$(13_10)remove_joints(obj_grav_gun,obj_grav_gun.joints)$(13_10)obj_grav_gun.object_held = noone$(13_10)obj_grav_gun.isHolding =  false$(13_10)"
		// remove all joints (Gamemaker sometimes make more than one joint
		remove_joints(obj_grav_gun,obj_grav_gun.joints)
		obj_grav_gun.object_held = noone
		obj_grav_gun.isHolding =  false
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 15D62AB4
		/// @DnDParent : 35A71601
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "die"
		die = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 011FCB0D
		/// @DnDParent : 35A71601
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "isDying"
		isDying = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0F813A92
		/// @DnDParent : 35A71601
		/// @DnDArgument : "var" "phy_rotation"
		phy_rotation = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 166D156D
		/// @DnDParent : 35A71601
		/// @DnDArgument : "spriteind" "spr_cube_death"
		/// @DnDSaveInfo : "spriteind" "spr_cube_death"
		sprite_index = spr_cube_death;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 437BC7E2
		/// @DnDParent : 35A71601
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 2364BD97
		/// @DnDParent : 35A71601
		/// @DnDArgument : "steps" "room_speed"
		alarm_set(0, room_speed);
	}
}
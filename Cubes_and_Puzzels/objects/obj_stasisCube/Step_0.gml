/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7AAA9898
/// @DnDArgument : "code" "//clamp speed if not getting launched by a Player Launcher$(13_10)if (round(phy_speed_y) < 0) {$(13_10)	phy_speed_y += 1$(13_10)}$(13_10)"
//clamp speed if not getting launched by a Player Launcher
if (round(phy_speed_y) < 0) {
	phy_speed_y += 1
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 30AE0264
/// @DnDArgument : "var" "die"
/// @DnDArgument : "value" "false"
if(die == false)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 150D5F97
	/// @DnDParent : 30AE0264
	/// @DnDArgument : "var" "isDying"
	/// @DnDArgument : "value" "false"
	if(isDying == false)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 065460DC
		/// @DnDComment : If the state is "Locked" the cube will $(13_10)stay in place
		/// @DnDParent : 150D5F97
		/// @DnDArgument : "expr" "isLocked "
		if(isLocked )
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 79B471F8
			/// @DnDParent : 065460DC
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "phy_active"
			phy_active = false;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 3D6A7B59
			/// @DnDParent : 065460DC
			/// @DnDArgument : "imageind" "1"
			/// @DnDArgument : "spriteind" "spr_stasis_cube_off"
			/// @DnDSaveInfo : "spriteind" "spr_stasis_cube_off"
			sprite_index = spr_stasis_cube_off;
			image_index = 1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7BE8F8B6
			/// @DnDParent : 065460DC
			/// @DnDArgument : "var" "phy_rotation"
			phy_rotation = 0;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 18ABD1AB
			/// @DnDParent : 065460DC
			/// @DnDArgument : "var" "stasis_collider"
			/// @DnDArgument : "value" "noone"
			if(stasis_collider == noone)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 1C46808D
				/// @DnDParent : 18ABD1AB
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "stasis_collider"
				/// @DnDArgument : "objectid" "obj_ColiderStatis"
				/// @DnDSaveInfo : "objectid" "obj_ColiderStatis"
				stasis_collider = instance_create_layer(x + 0, y + 0, "Instances", obj_ColiderStatis);
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 12D99643
		/// @DnDParent : 150D5F97
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3DA20BB3
			/// @DnDParent : 12D99643
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "phy_active"
			phy_active = true;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 286C94E8
			/// @DnDParent : 12D99643
			/// @DnDArgument : "spriteind" "spr_stasis_cube_off"
			/// @DnDSaveInfo : "spriteind" "spr_stasis_cube_off"
			sprite_index = spr_stasis_cube_off;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 24833F97
			/// @DnDParent : 12D99643
			/// @DnDArgument : "code" "if(stasis_collider != noone) {$(13_10)	instance_destroy(stasis_collider)$(13_10)	stasis_collider = noone$(13_10)}"
			if(stasis_collider != noone) {
				instance_destroy(stasis_collider)
				stasis_collider = noone
			}
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 7B92A8BC
		/// @DnDComment : if cube touches fizzeler kill cube
		/// @DnDParent : 150D5F97
		/// @DnDArgument : "obj" "obj_fizzeler"
		/// @DnDSaveInfo : "obj" "obj_fizzeler"
		var l7B92A8BC_0 = false;
		l7B92A8BC_0 = instance_exists(obj_fizzeler);
		if(l7B92A8BC_0)
		{
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 5B09C5F7
			/// @DnDParent : 7B92A8BC
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "target" "fiz"
			/// @DnDArgument : "object" "obj_fizzeler"
			/// @DnDSaveInfo : "object" "obj_fizzeler"
			var l5B09C5F7_0 = instance_place(x + 0, y + 0, obj_fizzeler);
			fiz = l5B09C5F7_0;
			if ((l5B09C5F7_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 71929AF4
				/// @DnDParent : 5B09C5F7
				/// @DnDArgument : "var" "fiz.activate"
				/// @DnDArgument : "value" "true"
				if(fiz.activate == true)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 559316D6
					/// @DnDParent : 71929AF4
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "die"
					die = true;
				
					/// @DnDAction : YoYo Games.Common.Execute_Code
					/// @DnDVersion : 1
					/// @DnDHash : 1CB7AF16
					/// @DnDParent : 71929AF4
					/// @DnDArgument : "code" "if(stasis_collider != noone) {$(13_10)	instance_destroy(stasis_collider)$(13_10)	stasis_collider = noone$(13_10)}"
					if(stasis_collider != noone) {
						instance_destroy(stasis_collider)
						stasis_collider = noone
					}
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 526DFE54
					/// @DnDParent : 71929AF4
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "isDying"
					isDying = true;
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1
					/// @DnDHash : 4FADFB65
					/// @DnDParent : 71929AF4
					/// @DnDArgument : "soundid" "snd_fizzler"
					/// @DnDSaveInfo : "soundid" "snd_fizzler"
					audio_play_sound(snd_fizzler, 0, 0);
				
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 46E56A90
					/// @DnDParent : 71929AF4
					/// @DnDArgument : "spriteind" "spr_cube_death"
					/// @DnDSaveInfo : "spriteind" "spr_cube_death"
					sprite_index = spr_cube_death;
					image_index = 0;
				
					/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
					/// @DnDVersion : 1
					/// @DnDHash : 7CA3DE78
					/// @DnDParent : 71929AF4
					image_speed = 1;
				
					/// @DnDAction : YoYo Games.Instances.Set_Alarm
					/// @DnDVersion : 1
					/// @DnDHash : 70D3DB65
					/// @DnDParent : 71929AF4
					/// @DnDArgument : "steps" "room_speed"
					alarm_set(0, room_speed);
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1A8304BD
		/// @DnDComment : if it is activated by a button set state (buttons check if cube is$(13_10) above) TODO check if the cube is not on a button set state back to off
		/// @DnDParent : 150D5F97
		/// @DnDArgument : "var" "activate"
		/// @DnDArgument : "value" "true"
		if(activate == true)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 1BBF0A39
			/// @DnDParent : 1A8304BD
			/// @DnDArgument : "imageind" "image_index"
			/// @DnDArgument : "spriteind" "spr_stasis_cube_on"
			/// @DnDSaveInfo : "spriteind" "spr_stasis_cube_on"
			sprite_index = spr_stasis_cube_on;
			image_index = image_index;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 0FD96F9F
		/// @DnDParent : 150D5F97
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 6801BE69
			/// @DnDParent : 0FD96F9F
			/// @DnDArgument : "imageind" "image_index"
			/// @DnDArgument : "spriteind" "spr_stasis_cube_off"
			/// @DnDSaveInfo : "spriteind" "spr_stasis_cube_off"
			sprite_index = spr_stasis_cube_off;
			image_index = image_index;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4862D3A4
else
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 362C68EB
	/// @DnDParent : 4862D3A4
	/// @DnDArgument : "obj" "obj_grav_gun"
	/// @DnDSaveInfo : "obj" "obj_grav_gun"
	var l362C68EB_0 = false;
	l362C68EB_0 = instance_exists(obj_grav_gun);
	if(l362C68EB_0)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 0FEE0813
		/// @DnDParent : 362C68EB
		/// @DnDArgument : "code" "remove_joints(obj_grav_gun, obj_grav_gun.joints)$(13_10)obj_grav_gun.object_held = noone$(13_10)obj_grav_gun.isHolding = false"
		remove_joints(obj_grav_gun, obj_grav_gun.joints)
		obj_grav_gun.object_held = noone
		obj_grav_gun.isHolding = false
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 392B058E
	/// @DnDParent : 4862D3A4
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "die"
	die = false;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0C4200C1
	/// @DnDParent : 4862D3A4
	/// @DnDArgument : "code" "if(stasis_collider != noone) {$(13_10)	instance_destroy(stasis_collider)$(13_10)	stasis_collider = noone$(13_10)}"
	if(stasis_collider != noone) {
		instance_destroy(stasis_collider)
		stasis_collider = noone
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 20951B57
	/// @DnDParent : 4862D3A4
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "isDying"
	isDying = true;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5FB3D13F
	/// @DnDParent : 4862D3A4
	/// @DnDArgument : "spriteind" "spr_cube_death"
	/// @DnDSaveInfo : "spriteind" "spr_cube_death"
	sprite_index = spr_cube_death;
	image_index = 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6D205BD3
	/// @DnDParent : 4862D3A4
	image_speed = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 48D52230
	/// @DnDParent : 4862D3A4
	/// @DnDArgument : "steps" "room_speed"
	alarm_set(0, room_speed);
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0FE1E9BF
/// @DnDArgument : "obj" "obj_floor_button"
/// @DnDSaveInfo : "obj" "obj_floor_button"
var l0FE1E9BF_0 = false;
l0FE1E9BF_0 = instance_exists(obj_floor_button);
if(l0FE1E9BF_0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 21265CE4
	/// @DnDParent : 0FE1E9BF
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_floor_button"
	/// @DnDSaveInfo : "object" "obj_floor_button"
	var l21265CE4_0 = instance_place(x + 0, y + 1, obj_floor_button);
	if ((l21265CE4_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 66E998F3
		/// @DnDParent : 21265CE4
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "activate"
		activate = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3DA3E9FC
	/// @DnDParent : 0FE1E9BF
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 64C87407
		/// @DnDParent : 3DA3E9FC
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "activate"
		activate = false;
	}
}
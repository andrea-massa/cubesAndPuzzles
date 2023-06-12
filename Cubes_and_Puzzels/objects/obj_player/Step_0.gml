/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 62F7AB53
/// @DnDArgument : "code" "//update listener position (for fall off reference)$(13_10)audio_listener_position(self.x, self.y, 0)"
//update listener position (for fall off reference)
audio_listener_position(self.x, self.y, 0)

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 232B1DEA
/// @DnDComment : if player can spawn with a gun spawn it
/// @DnDArgument : "var" "spawn_with_gun"
/// @DnDArgument : "value" "true"
if(spawn_with_gun == true)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 0C21CCAD
	/// @DnDParent : 232B1DEA
	/// @DnDArgument : "obj" "obj_grav_gun"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_grav_gun"
	var l0C21CCAD_0 = false;
	l0C21CCAD_0 = instance_exists(obj_grav_gun);
	if(!l0C21CCAD_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5805FE8C
		/// @DnDParent : 0C21CCAD
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_grav_gun"
		/// @DnDArgument : "layer" ""fore_instances""
		/// @DnDSaveInfo : "objectid" "obj_grav_gun"
		instance_create_layer(x + 0, y + 0, "fore_instances", obj_grav_gun);
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 76F324DE
/// @DnDComment : Fix players angle to prevent player from falling over
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "phy_fixed_rotation"
phy_fixed_rotation = true;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7BF1FE1B
/// @DnDComment : clamp the players angle to a set angle Used later
/// @DnDArgument : "expr" "clamp_angle"
/// @DnDArgument : "var" "phy_rotation"
phy_rotation = clamp_angle;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4732ABEF
/// @DnDArgument : "expr" "allow_cheats == true and Debug == true"
if(allow_cheats == true and Debug == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 291B60C6
	/// @DnDParent : 4732ABEF
	/// @DnDArgument : "var" "Debug"
	/// @DnDArgument : "value" "true"
	if(Debug == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1A7AAAE9
		/// @DnDParent : 291B60C6
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "phy_active"
		phy_active = false;
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 2BB8AC26
		/// @DnDParent : 291B60C6
		/// @DnDArgument : "key" "ord("W")"
		var l2BB8AC26_0;
		l2BB8AC26_0 = keyboard_check(ord("W"));
		if (l2BB8AC26_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2486438D
			/// @DnDParent : 2BB8AC26
			/// @DnDArgument : "expr" "-20"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "phy_position_y"
			phy_position_y += -20;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 12CAB095
		/// @DnDParent : 291B60C6
		/// @DnDArgument : "key" "ord("S")"
		var l12CAB095_0;
		l12CAB095_0 = keyboard_check(ord("S"));
		if (l12CAB095_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1F05BDAE
			/// @DnDParent : 12CAB095
			/// @DnDArgument : "expr" "20"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "phy_position_y"
			phy_position_y += 20;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 606253AA
		/// @DnDParent : 291B60C6
		/// @DnDArgument : "key" "ord("A")"
		var l606253AA_0;
		l606253AA_0 = keyboard_check(ord("A"));
		if (l606253AA_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 43E4582B
			/// @DnDParent : 606253AA
			/// @DnDArgument : "expr" "-20"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "phy_position_x"
			phy_position_x += -20;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 7BAB176D
		/// @DnDParent : 291B60C6
		/// @DnDArgument : "key" "ord("D")"
		var l7BAB176D_0;
		l7BAB176D_0 = keyboard_check(ord("D"));
		if (l7BAB176D_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 21E1690B
			/// @DnDParent : 7BAB176D
			/// @DnDArgument : "expr" "20"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "phy_position_x"
			phy_position_x += 20;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 5A489815
		/// @DnDParent : 291B60C6
		/// @DnDArgument : "key" "ord("V")"
		var l5A489815_0;
		l5A489815_0 = keyboard_check_pressed(ord("V"));
		if (l5A489815_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 26423F26
			/// @DnDParent : 5A489815
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "Debug"
			Debug = false;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4B46DD28
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2F774184
	/// @DnDParent : 4B46DD28
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "phy_active"
	phy_active = true;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 099FFF7F
	/// @DnDComment : Prevent player movement if dialog is active or restart message is active
	/// @DnDParent : 4B46DD28
	/// @DnDArgument : "expr" "instance_exists(obj_dialog_box) or instance_exists(obj_restart_message) or instance_exists(obj_checkpoint_message)"
	/// @DnDArgument : "not" "1"
	if(!(instance_exists(obj_dialog_box) or instance_exists(obj_restart_message) or instance_exists(obj_checkpoint_message)))
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 06163339
		/// @DnDParent : 099FFF7F
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_Colider"
		/// @DnDSaveInfo : "object" "obj_Colider"
		var l06163339_0 = instance_place(x + 0, y + 1, obj_Colider);
		if ((l06163339_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0B9E17A9
			/// @DnDParent : 06163339
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "ignoreClamp"
			ignoreClamp = false;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 25B6E0E0
		/// @DnDComment : Noclip
		/// @DnDParent : 099FFF7F
		/// @DnDArgument : "key" "ord("V")"
		var l25B6E0E0_0;
		l25B6E0E0_0 = keyboard_check_pressed(ord("V"));
		if (l25B6E0E0_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 265B6F92
			/// @DnDParent : 25B6E0E0
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "Debug"
			Debug = true;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 10825FE3
		/// @DnDComment : Move player Left
		/// @DnDParent : 099FFF7F
		/// @DnDArgument : "key" "ord("A")"
		var l10825FE3_0;
		l10825FE3_0 = keyboard_check(ord("A"));
		if (l10825FE3_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 77ACBCFF
			/// @DnDInput : 2
			/// @DnDParent : 10825FE3
			/// @DnDArgument : "expr" "isJumping"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "expr_1" "isDying"
			/// @DnDArgument : "not_1" "1"
			if(!(isJumping) && !(isDying))
			{
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 7ED67DD4
				/// @DnDParent : 77ACBCFF
				/// @DnDArgument : "expr" "sprite_index == spr_player_walk"
				/// @DnDArgument : "not" "1"
				if(!(sprite_index == spr_player_walk))
				{
					/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 33A329B5
					/// @DnDParent : 7ED67DD4
					/// @DnDArgument : "expr" "spawn_with_gun"
					if(spawn_with_gun)
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 186481DA
						/// @DnDParent : 33A329B5
						/// @DnDArgument : "expr" "spr_player_walk_noarm"
						/// @DnDArgument : "var" "sprite_index"
						sprite_index = spr_player_walk_noarm;
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 5DAC56A6
					/// @DnDParent : 7ED67DD4
					else
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 61EA72EA
						/// @DnDParent : 5DAC56A6
						/// @DnDArgument : "expr" "spr_player_walk"
						/// @DnDArgument : "var" "sprite_index"
						sprite_index = spr_player_walk;
					}
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 32E2E52E
			/// @DnDParent : 10825FE3
			/// @DnDArgument : "expr" "-movement_speed"
			/// @DnDArgument : "var" "phy_speed_x"
			phy_speed_x = -movement_speed;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1089582F
			/// @DnDParent : 10825FE3
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "image_xscale"
			image_xscale = -1;
		
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 31252E5C
			/// @DnDParent : 10825FE3
			/// @DnDArgument : "x" "x + (sprite_width / 4)"
			/// @DnDArgument : "y" "y"
			/// @DnDArgument : "object" "obj_Colider"
			/// @DnDSaveInfo : "object" "obj_Colider"
			var l31252E5C_0 = instance_place(x + (sprite_width / 4), y, obj_Colider);
			if ((l31252E5C_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7498F1E4
				/// @DnDParent : 31252E5C
				/// @DnDArgument : "var" "phy_speed_x"
				phy_speed_x = 0;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 6D642725
		/// @DnDParent : 099FFF7F
		else
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 0BF15BE0
			/// @DnDComment : Move player Right
			/// @DnDParent : 6D642725
			/// @DnDArgument : "key" "ord("D")"
			var l0BF15BE0_0;
			l0BF15BE0_0 = keyboard_check(ord("D"));
			if (l0BF15BE0_0)
			{
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 132B2299
				/// @DnDInput : 2
				/// @DnDParent : 0BF15BE0
				/// @DnDArgument : "expr" "isJumping"
				/// @DnDArgument : "not" "1"
				/// @DnDArgument : "expr_1" "isDying"
				/// @DnDArgument : "not_1" "1"
				if(!(isJumping) && !(isDying))
				{
					/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 1490CE86
					/// @DnDParent : 132B2299
					/// @DnDArgument : "expr" "sprite_index == spr_player_walk"
					/// @DnDArgument : "not" "1"
					if(!(sprite_index == spr_player_walk))
					{
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 6541722E
						/// @DnDParent : 1490CE86
						/// @DnDArgument : "expr" "spawn_with_gun"
						if(spawn_with_gun)
						{
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 71A21FD4
							/// @DnDParent : 6541722E
							/// @DnDArgument : "expr" "spr_player_walk_noarm"
							/// @DnDArgument : "var" "sprite_index"
							sprite_index = spr_player_walk_noarm;
						}
					
						/// @DnDAction : YoYo Games.Common.Else
						/// @DnDVersion : 1
						/// @DnDHash : 5DCE81B7
						/// @DnDParent : 1490CE86
						else
						{
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 36ED2F29
							/// @DnDParent : 5DCE81B7
							/// @DnDArgument : "expr" "spr_player_walk"
							/// @DnDArgument : "var" "sprite_index"
							sprite_index = spr_player_walk;
						}
					}
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1C50B966
				/// @DnDParent : 0BF15BE0
				/// @DnDArgument : "expr" "movement_speed"
				/// @DnDArgument : "var" "phy_speed_x"
				phy_speed_x = movement_speed;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 711E2A27
				/// @DnDParent : 0BF15BE0
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "image_xscale"
				image_xscale = 1;
			
				/// @DnDAction : YoYo Games.Collisions.If_Object_At
				/// @DnDVersion : 1.1
				/// @DnDHash : 1E65E67F
				/// @DnDParent : 0BF15BE0
				/// @DnDArgument : "x" "x + (sprite_xoffset / 2)"
				/// @DnDArgument : "y" "y"
				/// @DnDArgument : "object" "obj_Colider"
				/// @DnDSaveInfo : "object" "obj_Colider"
				var l1E65E67F_0 = instance_place(x + (sprite_xoffset / 2), y, obj_Colider);
				if ((l1E65E67F_0 > 0))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4DBD0D8F
					/// @DnDParent : 1E65E67F
					/// @DnDArgument : "var" "phy_speed_x"
					phy_speed_x = 0;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 19A4F92F
			/// @DnDComment : Player doesn't move, go to idle sprite
			/// @DnDParent : 6D642725
			else
			{
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 2681BA77
				/// @DnDInput : 2
				/// @DnDParent : 19A4F92F
				/// @DnDArgument : "expr" "isJumping"
				/// @DnDArgument : "not" "1"
				/// @DnDArgument : "expr_1" "isDying"
				/// @DnDArgument : "not_1" "1"
				if(!(isJumping) && !(isDying))
				{
					/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 602EF172
					/// @DnDParent : 2681BA77
					/// @DnDArgument : "expr" "spawn_with_gun"
					if(spawn_with_gun)
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 7EE7377E
						/// @DnDParent : 602EF172
						/// @DnDArgument : "expr" "spr_player_idle_noarm"
						/// @DnDArgument : "var" "sprite_index"
						sprite_index = spr_player_idle_noarm;
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 080A9843
					/// @DnDParent : 2681BA77
					else
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 54CF96A8
						/// @DnDParent : 080A9843
						/// @DnDArgument : "expr" "spr_player_idle"
						/// @DnDArgument : "var" "sprite_index"
						sprite_index = spr_player_idle;
					}
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 0D9EFFD4
		/// @DnDComment : BUGGED load previous checkpoint if sav data don't exist restart room
		/// @DnDParent : 099FFF7F
		/// @DnDArgument : "key" "ord("R")"
		var l0D9EFFD4_0;
		l0D9EFFD4_0 = keyboard_check_pressed(ord("R"));
		if (l0D9EFFD4_0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2892CCD0
			/// @DnDParent : 0D9EFFD4
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_restart_message"
			/// @DnDArgument : "layer" ""dialog""
			/// @DnDSaveInfo : "objectid" "obj_restart_message"
			instance_create_layer(x + 0, y + 0, "dialog", obj_restart_message);
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 585F97B9
		/// @DnDComment : Jump!
		/// @DnDParent : 099FFF7F
		var l585F97B9_0;
		l585F97B9_0 = keyboard_check(vk_space);
		if (l585F97B9_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 50EFFC5E
			/// @DnDComment : Controls jumping interval
			/// @DnDInput : 2
			/// @DnDParent : 585F97B9
			/// @DnDArgument : "expr" "can_jump"
			/// @DnDArgument : "expr_1" "isDying"
			/// @DnDArgument : "not_1" "1"
			if(can_jump && !(isDying))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 27211B11
				/// @DnDParent : 50EFFC5E
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "var" "can_jump"
				can_jump = false;
			
				/// @DnDAction : YoYo Games.Instances.Set_Alarm
				/// @DnDVersion : 1
				/// @DnDHash : 46248918
				/// @DnDParent : 50EFFC5E
				/// @DnDArgument : "steps" "0.5 * room_speed"
				alarm_set(0, 0.5 * room_speed);
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 0E330EF2
				/// @DnDParent : 50EFFC5E
				/// @DnDArgument : "expr" "isJumping"
				/// @DnDArgument : "not" "1"
				if(!(isJumping))
				{
					/// @DnDAction : YoYo Games.Collisions.If_Object_At
					/// @DnDVersion : 1.1
					/// @DnDHash : 35CBCFAD
					/// @DnDComment : Check if player is on the ground
					/// @DnDParent : 0E330EF2
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y" "1"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "object" "obj_Colider"
					/// @DnDSaveInfo : "object" "obj_Colider"
					var l35CBCFAD_0 = instance_place(x + 0, y + 1, obj_Colider);
					if ((l35CBCFAD_0 > 0))
					{
						/// @DnDAction : YoYo Games.Common.Function_Call
						/// @DnDVersion : 1
						/// @DnDHash : 26A6CEA5
						/// @DnDParent : 35CBCFAD
						/// @DnDArgument : "function" "jump"
						jump();
					}
				
					/// @DnDAction : YoYo Games.Collisions.If_Object_At
					/// @DnDVersion : 1.1
					/// @DnDHash : 6EB753DB
					/// @DnDComment : Check if player is on the ground
					/// @DnDParent : 0E330EF2
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y" "1"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "object" "obj_floor_button"
					/// @DnDSaveInfo : "object" "obj_floor_button"
					var l6EB753DB_0 = instance_place(x + 0, y + 1, obj_floor_button);
					if ((l6EB753DB_0 > 0))
					{
						/// @DnDAction : YoYo Games.Common.Function_Call
						/// @DnDVersion : 1
						/// @DnDHash : 79D49D15
						/// @DnDParent : 6EB753DB
						/// @DnDArgument : "function" "jump"
						jump();
					}
				
					/// @DnDAction : YoYo Games.Collisions.If_Object_At
					/// @DnDVersion : 1.1
					/// @DnDHash : 06D46545
					/// @DnDComment : Check if player is on the ground
					/// @DnDParent : 0E330EF2
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y" "1"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "object" "obj_barrier"
					/// @DnDSaveInfo : "object" "obj_barrier"
					var l06D46545_0 = instance_place(x + 0, y + 1, obj_barrier);
					if ((l06D46545_0 > 0))
					{
						/// @DnDAction : YoYo Games.Common.Function_Call
						/// @DnDVersion : 1
						/// @DnDHash : 0C6B4386
						/// @DnDParent : 06D46545
						/// @DnDArgument : "function" "jump"
						jump();
					}
				}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5CCEFFB4
				/// @DnDComment : if the gun is holding object prevent jump with object else go $(13_10)ahead and jump
				/// @DnDParent : 50EFFC5E
				/// @DnDArgument : "var" "gun_object"
				/// @DnDArgument : "not" "1"
				/// @DnDArgument : "value" "noone"
				if(!(gun_object == noone))
				{
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1812A43E
					/// @DnDComment : if gun is not holding allow jump with object
					/// @DnDParent : 5CCEFFB4
					/// @DnDArgument : "var" "gun_object.isHolding"
					/// @DnDArgument : "value" "false"
					if(gun_object.isHolding == false)
					{
						/// @DnDAction : YoYo Games.Collisions.If_Object_At
						/// @DnDVersion : 1.1
						/// @DnDHash : 104FC239
						/// @DnDParent : 1812A43E
						/// @DnDArgument : "x_relative" "1"
						/// @DnDArgument : "y" "1"
						/// @DnDArgument : "y_relative" "1"
						/// @DnDArgument : "object" "obj_abstract_cube"
						/// @DnDSaveInfo : "object" "obj_abstract_cube"
						var l104FC239_0 = instance_place(x + 0, y + 1, obj_abstract_cube);
						if ((l104FC239_0 > 0))
						{
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 29B4E8AD
							/// @DnDParent : 104FC239
							/// @DnDArgument : "expr" "-jump_height"
							/// @DnDArgument : "var" "phy_speed_y"
							phy_speed_y = -jump_height;
						}
					}
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 7D55469B
				/// @DnDParent : 50EFFC5E
				else
				{
					/// @DnDAction : YoYo Games.Collisions.If_Object_At
					/// @DnDVersion : 1.1
					/// @DnDHash : 330CDC59
					/// @DnDParent : 7D55469B
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y" "2"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "object" "obj_abstract_cube"
					/// @DnDSaveInfo : "object" "obj_abstract_cube"
					var l330CDC59_0 = instance_place(x + 0, y + 2, obj_abstract_cube);
					if ((l330CDC59_0 > 0))
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 01593682
						/// @DnDParent : 330CDC59
						/// @DnDArgument : "expr" "-jump_height"
						/// @DnDArgument : "var" "phy_speed_y"
						phy_speed_y = -jump_height;
					}
				}
			
				/// @DnDAction : YoYo Games.Collisions.If_Object_At
				/// @DnDVersion : 1.1
				/// @DnDHash : 19EDA89D
				/// @DnDComment : Allow jump if on a lift
				/// @DnDParent : 50EFFC5E
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "1"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "object" "obj_piston_lift"
				/// @DnDSaveInfo : "object" "obj_piston_lift"
				var l19EDA89D_0 = instance_place(x + 0, y + 1, obj_piston_lift);
				if ((l19EDA89D_0 > 0))
				{
					/// @DnDAction : YoYo Games.Collisions.If_Object_At
					/// @DnDVersion : 1.1
					/// @DnDHash : 5E95125C
					/// @DnDParent : 19EDA89D
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y" "-1"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "object" "obj_piston_lift"
					/// @DnDArgument : "not" "1"
					/// @DnDSaveInfo : "object" "obj_piston_lift"
					var l5E95125C_0 = instance_place(x + 0, y + -1, obj_piston_lift);
					if (!(l5E95125C_0 > 0))
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 46EFADE2
						/// @DnDParent : 5E95125C
						/// @DnDArgument : "expr" "-jump_height"
						/// @DnDArgument : "var" "phy_speed_y"
						phy_speed_y = -jump_height;
					}
				}
			
				/// @DnDAction : YoYo Games.Collisions.If_Object_At
				/// @DnDVersion : 1.1
				/// @DnDHash : 5DE93D1C
				/// @DnDComment : Allow jump if on a lift
				/// @DnDParent : 50EFFC5E
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "1"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "object" "obj_vert_gear_lift"
				/// @DnDSaveInfo : "object" "obj_vert_gear_lift"
				var l5DE93D1C_0 = instance_place(x + 0, y + 1, obj_vert_gear_lift);
				if ((l5DE93D1C_0 > 0))
				{
					/// @DnDAction : YoYo Games.Collisions.If_Object_At
					/// @DnDVersion : 1.1
					/// @DnDHash : 5F1699D1
					/// @DnDParent : 5DE93D1C
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y" "-1"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "object" "obj_vert_gear_lift"
					/// @DnDArgument : "not" "1"
					/// @DnDSaveInfo : "object" "obj_vert_gear_lift"
					var l5F1699D1_0 = instance_place(x + 0, y + -1, obj_vert_gear_lift);
					if (!(l5F1699D1_0 > 0))
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 5A2DE4BE
						/// @DnDParent : 5F1699D1
						/// @DnDArgument : "expr" "-jump_height"
						/// @DnDArgument : "var" "phy_speed_y"
						phy_speed_y = -jump_height;
					}
				}
			
				/// @DnDAction : YoYo Games.Collisions.If_Object_At
				/// @DnDVersion : 1.1
				/// @DnDHash : 163C7560
				/// @DnDComment : Allow jump if on a lift
				/// @DnDParent : 50EFFC5E
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "1"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "object" "obj_horz_gear_lift"
				/// @DnDSaveInfo : "object" "obj_horz_gear_lift"
				var l163C7560_0 = instance_place(x + 0, y + 1, obj_horz_gear_lift);
				if ((l163C7560_0 > 0))
				{
					/// @DnDAction : YoYo Games.Collisions.If_Object_At
					/// @DnDVersion : 1.1
					/// @DnDHash : 5E23F24C
					/// @DnDParent : 163C7560
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y" "-1"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "object" "obj_horz_gear_lift"
					/// @DnDArgument : "not" "1"
					/// @DnDSaveInfo : "object" "obj_horz_gear_lift"
					var l5E23F24C_0 = instance_place(x + 0, y + -1, obj_horz_gear_lift);
					if (!(l5E23F24C_0 > 0))
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 70DD8101
						/// @DnDParent : 5E23F24C
						/// @DnDArgument : "expr" "-jump_height"
						/// @DnDArgument : "var" "phy_speed_y"
						phy_speed_y = -jump_height;
					}
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 6B573749
		/// @DnDComment : if on floor allow jump
		/// @DnDParent : 099FFF7F
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_Colider"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "object" "obj_Colider"
		var l6B573749_0 = instance_place(x + 0, y + 1, obj_Colider);
		if (!(l6B573749_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 12B05805
			/// @DnDParent : 6B573749
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "phy_speed_y"
			phy_speed_y += 1;
		}
	
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 6C7BB700
		/// @DnDComment : if player colides with hazard trigger kill player
		/// @DnDParent : 099FFF7F
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_hazard"
		/// @DnDSaveInfo : "object" "obj_hazard"
		var l6C7BB700_0 = instance_place(x + 0, y + 0, obj_hazard);
		if ((l6C7BB700_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 152A4CD6
			/// @DnDParent : 6C7BB700
			/// @DnDArgument : "var" "isDying"
			/// @DnDArgument : "value" "false"
			if(isDying == false)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1BC07DDE
				/// @DnDParent : 152A4CD6
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "isDying"
				isDying = true;
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 504E8E77
				/// @DnDParent : 152A4CD6
				/// @DnDArgument : "expr" "sprite_index = spr_player_death"
				/// @DnDArgument : "not" "1"
				if(!(sprite_index = spr_player_death))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5D53785D
					/// @DnDParent : 504E8E77
					/// @DnDArgument : "expr" "spr_player_death"
					/// @DnDArgument : "var" "sprite_index"
					sprite_index = spr_player_death;
				}
			
				/// @DnDAction : YoYo Games.Instances.Set_Alarm
				/// @DnDVersion : 1
				/// @DnDHash : 45A04336
				/// @DnDParent : 152A4CD6
				/// @DnDArgument : "steps" "40"
				/// @DnDArgument : "alarm" "1"
				alarm_set(1, 40);
			}
		}
	
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 435918B4
		/// @DnDComment : if player colides with laser field trigger kill player
		/// @DnDParent : 099FFF7F
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_laser_field"
		/// @DnDSaveInfo : "object" "obj_laser_field"
		var l435918B4_0 = instance_place(x + 0, y + 0, obj_laser_field);
		if ((l435918B4_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 10CB9327
			/// @DnDParent : 435918B4
			/// @DnDArgument : "var" "isDying"
			/// @DnDArgument : "value" "false"
			if(isDying == false)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 269AC662
				/// @DnDParent : 10CB9327
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "isDying"
				isDying = true;
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 4F9ACEE3
				/// @DnDParent : 10CB9327
				/// @DnDArgument : "expr" "sprite_index = spr_player_death"
				if(sprite_index = spr_player_death)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4E33D92A
					/// @DnDParent : 4F9ACEE3
					/// @DnDArgument : "expr" "spr_player_death"
					/// @DnDArgument : "var" "sprite_index"
					sprite_index = spr_player_death;
				}
			
				/// @DnDAction : YoYo Games.Instances.Set_Alarm
				/// @DnDVersion : 1
				/// @DnDHash : 457EE040
				/// @DnDParent : 10CB9327
				/// @DnDArgument : "steps" "40"
				/// @DnDArgument : "alarm" "1"
				alarm_set(1, 40);
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 50F8076B
		/// @DnDParent : 099FFF7F
		/// @DnDArgument : "code" "//clamp speed if not getting launched by a Player Launcher$(13_10)if (round(phy_speed_x)> 0 and ignoreClamp == false) {$(13_10)	phy_speed_x += -1 $(13_10)} else if (round(phy_speed_x) < 0 and ignoreClamp == false) {$(13_10)	phy_speed_x += 1$(13_10)} $(13_10)$(13_10)if (round(phy_speed_y) > jump_height and ignoreClamp == false) {$(13_10)	phy_speed_y += 1$(13_10)} "
		//clamp speed if not getting launched by a Player Launcher
		if (round(phy_speed_x)> 0 and ignoreClamp == false) {
			phy_speed_x += -1 
		} else if (round(phy_speed_x) < 0 and ignoreClamp == false) {
			phy_speed_x += 1
		} 
		
		if (round(phy_speed_y) > jump_height and ignoreClamp == false) {
			phy_speed_y += 1
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 575C03BD
	/// @DnDParent : 4B46DD28
	else
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 0EFB117C
		/// @DnDParent : 575C03BD
		/// @DnDArgument : "code" "//clamp speed if not getting launched by a Player Launcher$(13_10)if (round(phy_speed_y) > jump_height and ignoreClamp == false) {$(13_10)	phy_speed_y += 1$(13_10)} "
		//clamp speed if not getting launched by a Player Launcher
		if (round(phy_speed_y) > jump_height and ignoreClamp == false) {
			phy_speed_y += 1
		}
	}
}
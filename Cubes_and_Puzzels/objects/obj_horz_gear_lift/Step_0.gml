/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 246E758C
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l246E758C_0 = false;
l246E758C_0 = instance_exists(obj_player);
if(l246E758C_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 34E63702
	/// @DnDParent : 246E758C
	/// @DnDArgument : "var" "collision_activated"
	/// @DnDArgument : "value" "true"
	if(collision_activated == true)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 3EAF213C
		/// @DnDParent : 34E63702
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-4"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_player"
		/// @DnDSaveInfo : "object" "obj_player"
		var l3EAF213C_0 = instance_place(x + 0, y + -4, obj_player);
		if ((l3EAF213C_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7BA9CE26
			/// @DnDParent : 3EAF213C
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "activate"
			activate = true;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5E427954
		/// @DnDParent : 34E63702
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 509CAD6D
			/// @DnDParent : 5E427954
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "activate"
			activate = false;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 657D73AF
/// @DnDArgument : "var" "activate"
/// @DnDArgument : "value" "true"
if(activate == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25E4CD3E
	/// @DnDParent : 657D73AF
	/// @DnDArgument : "var" "start_left"
	/// @DnDArgument : "value" "false"
	if(start_left == false)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 06A7202A
		/// @DnDParent : 25E4CD3E
		/// @DnDArgument : "code" "if( direction_to_go == "left") {$(13_10)	if (phy_position_x-xstart <= -move_distance) {$(13_10)		phy_speed_x = 0$(13_10)		if (wait == false) {$(13_10)			image_speed = 0$(13_10)			alarm_set(0, 60)$(13_10)			wait = true$(13_10)		}$(13_10)	} else {$(13_10)		phy_speed_x = -move_speed$(13_10)		image_speed = move_speed$(13_10)	}$(13_10)} else { // we move up$(13_10)	if (phy_position_x >= xstart) {$(13_10)		phy_speed_x = 0$(13_10)		if (wait == false) {$(13_10)			image_speed = 0$(13_10)			alarm_set(0, 60)$(13_10)			wait = true$(13_10)		}$(13_10)	} else  {$(13_10)		phy_speed_x = move_speed$(13_10)		image_speed = move_speed$(13_10)}$(13_10)$(13_10)	$(13_10)}"
		if( direction_to_go == "left") {
			if (phy_position_x-xstart <= -move_distance) {
				phy_speed_x = 0
				if (wait == false) {
					image_speed = 0
					alarm_set(0, 60)
					wait = true
				}
			} else {
				phy_speed_x = -move_speed
				image_speed = move_speed
			}
		} else { // we move up
			if (phy_position_x >= xstart) {
				phy_speed_x = 0
				if (wait == false) {
					image_speed = 0
					alarm_set(0, 60)
					wait = true
				}
			} else  {
				phy_speed_x = move_speed
				image_speed = move_speed
		}
		
			
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5ED99A5D
	/// @DnDParent : 657D73AF
	else
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 0A0932F7
		/// @DnDParent : 5ED99A5D
		/// @DnDArgument : "code" "if( direction_to_go == "right") {$(13_10)	if (phy_position_x-xstart >= move_distance) {$(13_10)		phy_speed_x = 0$(13_10)		if (wait == false){$(13_10)			image_speed = 0$(13_10)			alarm_set(0, 60)$(13_10)			wait = true$(13_10)		}$(13_10)	} else {$(13_10)		phy_speed_x = move_speed$(13_10)		image_speed = abs(move_speed)$(13_10)	}$(13_10)} else { // we move up$(13_10)	if (phy_position_x <= xstart) {$(13_10)		phy_speed_x = 0$(13_10)		if (wait == false) {$(13_10)			image_speed = 0$(13_10)			alarm_set(0, 60)$(13_10)			wait = true$(13_10)		}$(13_10)	} else  {$(13_10)		phy_speed_x = -move_speed$(13_10)		image_speed = abs(move_speed)$(13_10)}$(13_10)$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)"
		if( direction_to_go == "right") {
			if (phy_position_x-xstart >= move_distance) {
				phy_speed_x = 0
				if (wait == false){
					image_speed = 0
					alarm_set(0, 60)
					wait = true
				}
			} else {
				phy_speed_x = move_speed
				image_speed = abs(move_speed)
			}
		} else { // we move up
			if (phy_position_x <= xstart) {
				phy_speed_x = 0
				if (wait == false) {
					image_speed = 0
					alarm_set(0, 60)
					wait = true
				}
			} else  {
				phy_speed_x = -move_speed
				image_speed = abs(move_speed)
		}
		
			
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 24BFBF66
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 65FD8B2B
	/// @DnDParent : 24BFBF66
	/// @DnDArgument : "var" "collision_activated"
	/// @DnDArgument : "value" "true"
	if(collision_activated == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5069389D
		/// @DnDParent : 65FD8B2B
		/// @DnDArgument : "var" "phy_speed_x"
		phy_speed_x = 0;
	}

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 562770C0
	/// @DnDParent : 24BFBF66
	/// @DnDArgument : "speed" "0"
	image_speed = 0;
}
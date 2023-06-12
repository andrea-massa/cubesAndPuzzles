/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6847B8EE
/// @DnDArgument : "var" "activate"
/// @DnDArgument : "value" "true"
if(activate == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32453FED
	/// @DnDParent : 6847B8EE
	/// @DnDArgument : "var" "start_down"
	/// @DnDArgument : "value" "false"
	if(start_down == false)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 32B640BE
		/// @DnDParent : 32453FED
		/// @DnDArgument : "code" "if( direction_to_go == "up") {$(13_10)	if (phy_position_y-ystart <= -move_distance) {$(13_10)		phy_speed_y = 0$(13_10)		if (wait == false) {$(13_10)			image_speed = 0$(13_10)			alarm_set(0, 60)$(13_10)			wait = true$(13_10)		}$(13_10)	} else {$(13_10)		phy_speed_y = -move_speed$(13_10)		image_speed = move_speed$(13_10)	}$(13_10)} else { // we move up$(13_10)	if (phy_position_y >= ystart) {$(13_10)		phy_speed_y = 0$(13_10)		if (wait == false) {$(13_10)			image_speed = 0$(13_10)			alarm_set(0, 60)$(13_10)			wait = true$(13_10)		}$(13_10)	} else  {$(13_10)		phy_speed_y = move_speed$(13_10)		image_speed = move_speed$(13_10)}$(13_10)$(13_10)	$(13_10)}"
		if( direction_to_go == "up") {
			if (phy_position_y-ystart <= -move_distance) {
				phy_speed_y = 0
				if (wait == false) {
					image_speed = 0
					alarm_set(0, 60)
					wait = true
				}
			} else {
				phy_speed_y = -move_speed
				image_speed = move_speed
			}
		} else { // we move up
			if (phy_position_y >= ystart) {
				phy_speed_y = 0
				if (wait == false) {
					image_speed = 0
					alarm_set(0, 60)
					wait = true
				}
			} else  {
				phy_speed_y = move_speed
				image_speed = move_speed
		}
		
			
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2366CECB
	/// @DnDParent : 6847B8EE
	else
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 153FF5F1
		/// @DnDParent : 2366CECB
		/// @DnDArgument : "code" "if( direction_to_go == "down") {$(13_10)	if (phy_position_y-ystart >= move_distance) {$(13_10)		phy_speed_y = 0$(13_10)		if (wait == false){$(13_10)			image_speed = 0$(13_10)			alarm_set(0, 60)$(13_10)			wait = true$(13_10)		}$(13_10)	} else {$(13_10)		phy_speed_y = move_speed$(13_10)		image_speed = abs(move_speed)$(13_10)	}$(13_10)} else { // we move up$(13_10)	if (phy_position_y <= ystart) {$(13_10)		phy_speed_y = 0$(13_10)		if (wait == false) {$(13_10)			image_speed = 0$(13_10)			alarm_set(0, 60)$(13_10)			wait = true$(13_10)		}$(13_10)	} else  {$(13_10)		phy_speed_y = -move_speed$(13_10)		image_speed = abs(move_speed)$(13_10)}$(13_10)$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)"
		if( direction_to_go == "down") {
			if (phy_position_y-ystart >= move_distance) {
				phy_speed_y = 0
				if (wait == false){
					image_speed = 0
					alarm_set(0, 60)
					wait = true
				}
			} else {
				phy_speed_y = move_speed
				image_speed = abs(move_speed)
			}
		} else { // we move up
			if (phy_position_y <= ystart) {
				phy_speed_y = 0
				if (wait == false) {
					image_speed = 0
					alarm_set(0, 60)
					wait = true
				}
			} else  {
				phy_speed_y = -move_speed
				image_speed = abs(move_speed)
		}
		
			
		}
	}
}
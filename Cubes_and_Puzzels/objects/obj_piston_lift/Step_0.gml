/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 76D09EE3
/// @DnDArgument : "var" "oneWay"
/// @DnDArgument : "value" "true"
if(oneWay == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1290270B
	/// @DnDComment : TODO if deactivated move to spawn posistion
	/// @DnDParent : 76D09EE3
	/// @DnDArgument : "var" "activate"
	/// @DnDArgument : "value" "true"
	if(activate == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3160A5E9
		/// @DnDParent : 1290270B
		/// @DnDArgument : "var" "direction_to_go"
		/// @DnDArgument : "value" ""down""
		if(direction_to_go == "down")
		{
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 57A9DC04
			/// @DnDParent : 3160A5E9
			/// @DnDArgument : "code" "if (phy_position_y-ystart >= move_distance) {$(13_10)	phy_speed_y = 0$(13_10)} else if (phy_position_y < ystart) {$(13_10)	phy_position_y = ystart$(13_10)} else {$(13_10)	phy_speed_y = move_speed$(13_10)}$(13_10)	$(13_10)	"
			if (phy_position_y-ystart >= move_distance) {
				phy_speed_y = 0
			} else if (phy_position_y < ystart) {
				phy_position_y = ystart
			} else {
				phy_speed_y = move_speed
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 47D82185
		/// @DnDParent : 1290270B
		else
		{
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 7621F275
			/// @DnDParent : 47D82185
			/// @DnDArgument : "code" "if (phy_position_y-ystart <= move_distance) {$(13_10)	phy_speed_y = 0$(13_10)} else if (phy_position_y > ystart) {$(13_10)	phy_position_y = ystart$(13_10)} else {$(13_10)	phy_speed_y = move_speed$(13_10)}$(13_10)	$(13_10)	"
			if (phy_position_y-ystart <= move_distance) {
				phy_speed_y = 0
			} else if (phy_position_y > ystart) {
				phy_position_y = ystart
			} else {
				phy_speed_y = move_speed
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 39F012F7
	/// @DnDParent : 76D09EE3
	else
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 2E69A7CD
		/// @DnDParent : 39F012F7
		/// @DnDArgument : "code" "if direction_to_go == "down" {$(13_10)	if round(phy_position_y - ystart) > 0 {$(13_10)		phy_speed_y = -move_speed$(13_10)	} else {$(13_10)		phy_speed_y = 0$(13_10)	}$(13_10)} else {$(13_10)	if round(phy_position_y - ystart) < 0 {$(13_10)		phy_speed_y = move_speed$(13_10)	} else {$(13_10)		phy_speed_y = 0$(13_10)	}$(13_10)}"
		if direction_to_go == "down" {
			if round(phy_position_y - ystart) > 0 {
				phy_speed_y = -move_speed
			} else {
				phy_speed_y = 0
			}
		} else {
			if round(phy_position_y - ystart) < 0 {
				phy_speed_y = move_speed
			} else {
				phy_speed_y = 0
			}
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4EEBDE7E
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 302CCC0D
	/// @DnDComment : TODO if deactivated move to spawn posistion
	/// @DnDParent : 4EEBDE7E
	/// @DnDArgument : "var" "activate"
	/// @DnDArgument : "value" "true"
	if(activate == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D6B85EC
		/// @DnDParent : 302CCC0D
		/// @DnDArgument : "var" "start_down"
		/// @DnDArgument : "value" "true"
		if(start_down == true)
		{
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 5BB6EA49
			/// @DnDParent : 6D6B85EC
			/// @DnDArgument : "code" "if( direction_to_go == "down") {$(13_10)	if (round(phy_position_y-ystart) >= move_distance) {$(13_10)		phy_speed_y = 0$(13_10)		if (wait == false) {$(13_10)			alarm_set(0, 60)$(13_10)			wait = true$(13_10)		}$(13_10)	} else {$(13_10)		phy_speed_y = move_speed$(13_10)	}$(13_10)} else { // we move up$(13_10)	if (phy_position_y < ystart) {$(13_10)		phy_speed_y = 0$(13_10)		if (wait == false) {$(13_10)			alarm_set(0, 60)$(13_10)			wait = true$(13_10)		}$(13_10)	} else  {$(13_10)		phy_speed_y = -move_speed$(13_10)}$(13_10)$(13_10)	$(13_10)}"
			if( direction_to_go == "down") {
				if (round(phy_position_y-ystart) >= move_distance) {
					phy_speed_y = 0
					if (wait == false) {
						alarm_set(0, 60)
						wait = true
					}
				} else {
					phy_speed_y = move_speed
				}
			} else { // we move up
				if (phy_position_y < ystart) {
					phy_speed_y = 0
					if (wait == false) {
						alarm_set(0, 60)
						wait = true
					}
				} else  {
					phy_speed_y = -move_speed
			}
			
				
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 662D6E63
		/// @DnDParent : 302CCC0D
		else
		{
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 6E2BFD6A
			/// @DnDParent : 662D6E63
			/// @DnDArgument : "code" "if( direction_to_go == "up") {$(13_10)	if (round(phy_position_y-ystart) <= -move_distance) {$(13_10)		phy_speed_y = 0$(13_10)		if (wait == false) {$(13_10)			alarm_set(0, 60)$(13_10)			wait = true$(13_10)		}$(13_10)	} else {$(13_10)		phy_speed_y = -move_speed$(13_10)	}$(13_10)} else { // we move up$(13_10)	if (phy_position_y >= ystart) {$(13_10)		phy_speed_y = 0$(13_10)		if (wait == false) {$(13_10)			alarm_set(0, 60)$(13_10)			wait = true$(13_10)		}$(13_10)	} else  {$(13_10)		phy_speed_y = move_speed$(13_10)}$(13_10)$(13_10)	$(13_10)}"
			if( direction_to_go == "up") {
				if (round(phy_position_y-ystart) <= -move_distance) {
					phy_speed_y = 0
					if (wait == false) {
						alarm_set(0, 60)
						wait = true
					}
				} else {
					phy_speed_y = -move_speed
				}
			} else { // we move up
				if (phy_position_y >= ystart) {
					phy_speed_y = 0
					if (wait == false) {
						alarm_set(0, 60)
						wait = true
					}
				} else  {
					phy_speed_y = move_speed
			}
			
				
			}
		}
	}
}
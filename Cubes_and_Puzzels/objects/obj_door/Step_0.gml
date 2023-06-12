/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 580605C2
/// @DnDComment : if activated mopen
/// @DnDArgument : "var" "activate"
/// @DnDArgument : "value" "true"
if(activate == true)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 675C8D63
	/// @DnDParent : 580605C2
	/// @DnDArgument : "code" "if (distance_to_point(xstart,ystart) >= move_distance) {$(13_10)	phy_speed_y = 0$(13_10)} else {$(13_10)	phy_speed_y = -move_speed$(13_10)}$(13_10)	$(13_10)	"
	if (distance_to_point(xstart,ystart) >= move_distance) {
		phy_speed_y = 0
	} else {
		phy_speed_y = -move_speed
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7C3FC3D6
/// @DnDComment : else close it if open otherwise don't move
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 43C98372
	/// @DnDParent : 7C3FC3D6
	/// @DnDArgument : "code" "if (phy_position_y < ystart) {$(13_10)	phy_speed_y = move_speed$(13_10)//make sure that we return to start$(13_10)} else if (phy_position_y < ystart){$(13_10)	phy_position_y = ystart$(13_10)} else {$(13_10)	phy_speed_y = 0	$(13_10)}$(13_10)$(13_10)	$(13_10)	"
	if (phy_position_y < ystart) {
		phy_speed_y = move_speed
	//make sure that we return to start
	} else if (phy_position_y < ystart){
		phy_position_y = ystart
	} else {
		phy_speed_y = 0	
	}
}
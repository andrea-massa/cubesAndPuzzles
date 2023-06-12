/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0088CAA5
/// @DnDComment : find an object and attaches it to player
/// @DnDInput : 6
/// @DnDArgument : "funcName" "raycast2d"
/// @DnDArgument : "arg" "mouseX"
/// @DnDArgument : "arg_1" "mouseY"
/// @DnDArgument : "arg_2" "object_to_detect"
/// @DnDArgument : "arg_3" "maxVal"
/// @DnDArgument : "arg_4" "gun"
/// @DnDArgument : "arg_5" "player"
function raycast2d(mouseX, mouseY, object_to_detect, maxVal, gun, player) 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 688364D3
	/// @DnDParent : 0088CAA5
	/// @DnDArgument : "code" "//check if the instance at mouse pos exists$(13_10)if (instance_place(mouseX, mouseY, object_to_detect)!=noone) {$(13_10)	//see if the istance to test for is withing pickup range$(13_10)	if(distance_to_object(object_to_detect) < maxVal){$(13_10)		object_id = instance_place(mouseX, mouseY, object_to_detect)$(13_10)		//clamp object distance from gun prevent weird colisions)$(13_10)		object_id.phy_position_x = 256 * cos(degtorad(gun.phy_rotation)) + gun.phy_position_x$(13_10)		object_id.phy_position_y = 256 * sin(degtorad(gun.phy_rotation)) + gun.phy_position_y$(13_10)		// set object rotation to gun rotation (prevent bug where object is not in front of gun)$(13_10)		object_id.phy_rotation = gun.phy_rotation$(13_10)		//create a weld between gun and object$(13_10)		joints = physics_joint_weld_create(gun, object_id,gun.phy_position_x,$(13_10)		gun.phy_position_y, 0,0, 0, true)$(13_10)		return object_id$(13_10)	} else {$(13_10)		// if object is out of range don't pick it up$(13_10)		return noone	$(13_10)	}$(13_10)}$(13_10)"
	//check if the instance at mouse pos exists
	if (instance_place(mouseX, mouseY, object_to_detect)!=noone) {
		//see if the istance to test for is withing pickup range
		if(distance_to_object(object_to_detect) < maxVal){
			object_id = instance_place(mouseX, mouseY, object_to_detect)
			//clamp object distance from gun prevent weird colisions)
			object_id.phy_position_x = 256 * cos(degtorad(gun.phy_rotation)) + gun.phy_position_x
			object_id.phy_position_y = 256 * sin(degtorad(gun.phy_rotation)) + gun.phy_position_y
			// set object rotation to gun rotation (prevent bug where object is not in front of gun)
			object_id.phy_rotation = gun.phy_rotation
			//create a weld between gun and object
			joints = physics_joint_weld_create(gun, object_id,gun.phy_position_x,
			gun.phy_position_y, 0,0, 0, true)
			return object_id
		} else {
			// if object is out of range don't pick it up
			return noone	
		}
	}
}
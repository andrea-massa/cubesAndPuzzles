/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1D52A35F
/// @DnDComment : Find and test all objects that match a certain type
/// @DnDInput : 2
/// @DnDArgument : "funcName" "check_for_physic_object_at_pos"
/// @DnDArgument : "arg" "x1"
/// @DnDArgument : "arg_1" "y1"
function check_for_physic_object_at_pos(x1, y1) 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1004AD90
	/// @DnDParent : 1D52A35F
	/// @DnDArgument : "code" "//TODO add case for any pick upable cubes / turrents$(13_10)if(instance_place(x1,y1, obj_wcube) != noone) {$(13_10)	return instance_place(x1,y1, obj_wcube)	$(13_10)} else if(instance_place(x1,y1, obj_stasisCube) != noone){$(13_10)	return instance_place(x1,y1, obj_stasisCube)	$(13_10)} else {$(13_10)	return noone$(13_10)}"
	//TODO add case for any pick upable cubes / turrents
	if(instance_place(x1,y1, obj_wcube) != noone) {
		return instance_place(x1,y1, obj_wcube)	
	} else if(instance_place(x1,y1, obj_stasisCube) != noone){
		return instance_place(x1,y1, obj_stasisCube)	
	} else {
		return noone
	}
}
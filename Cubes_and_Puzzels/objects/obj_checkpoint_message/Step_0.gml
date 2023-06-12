/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 55E5B677
/// @DnDArgument : "expr" "keyboard_check_released(ord("Y")) and counter >= string_length(text_to_display)"
if(keyboard_check_released(ord("Y")) and counter >= string_length(text_to_display))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 500669AA
	/// @DnDParent : 55E5B677
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 04AFA768
	/// @DnDParent : 55E5B677
	/// @DnDArgument : "obj" "obj_player"
	/// @DnDSaveInfo : "obj" "obj_player"
	var l04AFA768_0 = false;
	l04AFA768_0 = instance_exists(obj_player);
	if(l04AFA768_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 416B2A73
		/// @DnDParent : 04AFA768
		/// @DnDArgument : "expr" "obj_datastore.player_x"
		/// @DnDArgument : "var" "obj_player.phy_position_x"
		obj_player.phy_position_x = obj_datastore.player_x;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 679AB744
		/// @DnDParent : 04AFA768
		/// @DnDArgument : "expr" "datastore_object.player_y"
		/// @DnDArgument : "var" "obj_player.phy_position_y"
		obj_player.phy_position_y = datastore_object.player_y;
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 5731F120
		/// @DnDParent : 04AFA768
		/// @DnDArgument : "code" "//reset object posistion for obj_wcube$(13_10)$(13_10)//set a variable that hold number of active cubes$(13_10)for (i= 0; i < instance_number(obj_wcube); i+=1) {$(13_10)	inst = instance_find(obj_wcube, i )$(13_10)	inst.phy_position_x = inst.xstart$(13_10)	inst.phy_position_y = inst.ystart$(13_10)}$(13_10)"
		//reset object posistion for obj_wcube
		
		//set a variable that hold number of active cubes
		for (i= 0; i < instance_number(obj_wcube); i+=1) {
			inst = instance_find(obj_wcube, i )
			inst.phy_position_x = inst.xstart
			inst.phy_position_y = inst.ystart
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 006B1511
/// @DnDArgument : "expr" "keyboard_check_released(ord("N")) and counter >= string_length(text_to_display)"
if(keyboard_check_released(ord("N")) and counter >= string_length(text_to_display))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 21DED1D9
	/// @DnDParent : 006B1511
	instance_destroy();
}
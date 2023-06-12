/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 787C2150
/// @DnDArgument : "obj" "obj_datastore"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_datastore"
var l787C2150_0 = false;
l787C2150_0 = instance_exists(obj_datastore);
if(!l787C2150_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0F25E446
	/// @DnDParent : 787C2150
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_datastore"
	/// @DnDSaveInfo : "objectid" "obj_datastore"
	instance_create_layer(x + 0, y + 0, "Instances", obj_datastore);
}
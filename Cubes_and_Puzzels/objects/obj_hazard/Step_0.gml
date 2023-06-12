/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 09110D6D
/// @DnDArgument : "obj" "obj_wcube"
/// @DnDSaveInfo : "obj" "obj_wcube"
var l09110D6D_0 = false;
l09110D6D_0 = instance_exists(obj_wcube);
if(l09110D6D_0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 281BD6AD
	/// @DnDParent : 09110D6D
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "target" "cube"
	/// @DnDArgument : "object" "obj_wcube"
	/// @DnDSaveInfo : "object" "obj_wcube"
	var l281BD6AD_0 = instance_place(x + 0, y + 0, obj_wcube);
	cube = l281BD6AD_0;
	if ((l281BD6AD_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3F359C16
		/// @DnDParent : 281BD6AD
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "cube.die"
		cube.die = true;
	}
}
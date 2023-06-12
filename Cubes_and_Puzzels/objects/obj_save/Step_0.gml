/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2309ADAF
/// @DnDComment : see if checkpoint can be used
/// @DnDArgument : "var" "activate"
/// @DnDArgument : "value" "true"
if(activate == true)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 752EEB63
	/// @DnDComment : check if player exists
	/// @DnDParent : 2309ADAF
	/// @DnDArgument : "obj" "obj_player"
	/// @DnDSaveInfo : "obj" "obj_player"
	var l752EEB63_0 = false;
	l752EEB63_0 = instance_exists(obj_player);
	if(l752EEB63_0)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 11F49A75
		/// @DnDComment : if player colide save game
		/// @DnDParent : 752EEB63
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_player"
		/// @DnDSaveInfo : "object" "obj_player"
		var l11F49A75_0 = instance_place(x + 0, y + 0, obj_player);
		if ((l11F49A75_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 72FC5EF8
			/// @DnDParent : 11F49A75
			/// @DnDArgument : "function" "Save_game"
			/// @DnDArgument : "arg" "room"
			Save_game(room);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1697977F
			/// @DnDComment : disable checkpoint (prevent lag)
			/// @DnDParent : 11F49A75
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "activate"
			activate = false;
		}
	}
}
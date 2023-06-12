/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 728E6A56
/// @DnDComment : if player colides move to next room$(13_10)TODO change
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l728E6A56_0 = false;
l728E6A56_0 = instance_exists(obj_player);
if(l728E6A56_0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 49EB2991
	/// @DnDParent : 728E6A56
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_player"
	/// @DnDSaveInfo : "object" "obj_player"
	var l49EB2991_0 = instance_place(x + 0, y + 0, obj_player);
	if ((l49EB2991_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2ED75D0C
		/// @DnDParent : 49EB2991
		/// @DnDArgument : "var" "room_id"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "noone"
		if(!(room_id == noone))
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 264AED2F
			/// @DnDParent : 2ED75D0C
			/// @DnDArgument : "room" "room_id"
			room_goto(room_id);
		}
	}
}
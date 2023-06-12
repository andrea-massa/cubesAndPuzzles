/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6370C94F
/// @DnDArgument : "var" "activate"
/// @DnDArgument : "value" "true"
if(activate == true)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 1D01D466
	/// @DnDParent : 6370C94F
	/// @DnDArgument : "obj" "obj_player"
	/// @DnDSaveInfo : "obj" "obj_player"
	var l1D01D466_0 = false;
	l1D01D466_0 = instance_exists(obj_player);
	if(l1D01D466_0)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 2B50B079
		/// @DnDParent : 1D01D466
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "target" "p1"
		/// @DnDArgument : "object" "obj_player"
		/// @DnDSaveInfo : "object" "obj_player"
		var l2B50B079_0 = instance_place(x + 0, y + 0, obj_player);
		p1 = l2B50B079_0;
		if ((l2B50B079_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 11B94D5E
			/// @DnDParent : 2B50B079
			/// @DnDArgument : "var" "isFirstTouch"
			/// @DnDArgument : "value" "true"
			if(isFirstTouch == true)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0E31CF68
				/// @DnDParent : 11B94D5E
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "var" "isFirstTouch"
				isFirstTouch = false;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3263BF27
				/// @DnDParent : 11B94D5E
				/// @DnDArgument : "expr" "p1.phy_position_x"
				/// @DnDArgument : "var" "global_datastore.player_x"
				global_datastore.player_x = p1.phy_position_x;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2E5549CB
				/// @DnDParent : 11B94D5E
				/// @DnDArgument : "expr" "p1.phy_position_y"
				/// @DnDArgument : "var" "global_datastore.player_y"
				global_datastore.player_y = p1.phy_position_y;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 29C1CCA7
				/// @DnDParent : 11B94D5E
				/// @DnDArgument : "var" "other_checkpoint"
				/// @DnDArgument : "not" "1"
				/// @DnDArgument : "value" "noone"
				if(!(other_checkpoint == noone))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5890735B
					/// @DnDParent : 29C1CCA7
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "other_checkpoint.activate"
					other_checkpoint.activate = false;
				}
			}
		}
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 4B0BD440
/// @DnDArgument : "key" "ord("C")"
var l4B0BD440_0;
l4B0BD440_0 = keyboard_check_pressed(ord("C"));
if (l4B0BD440_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 69795EB8
	/// @DnDParent : 4B0BD440
	/// @DnDArgument : "var" "isFirstTouch"
	/// @DnDArgument : "value" "false"
	if(isFirstTouch == false)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 148E7307
		/// @DnDParent : 69795EB8
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_checkpoint_message"
		/// @DnDArgument : "layer" ""dialog""
		/// @DnDSaveInfo : "objectid" "obj_checkpoint_message"
		instance_create_layer(x + 0, y + 0, "dialog", obj_checkpoint_message);
	}
}
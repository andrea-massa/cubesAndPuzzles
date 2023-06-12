/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 46D57559
/// @DnDArgument : "expr" "output_object != noone"
if(output_object != noone)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1740389D
	/// @DnDComment : detect wether the connection at its input is activated or not
	/// @DnDParent : 46D57559
	/// @DnDArgument : "expr" "activate == true "
	if(activate == true )
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 4EFEFF59
		/// @DnDParent : 1740389D
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "spriteind" "spr_act_wire_turn"
		/// @DnDSaveInfo : "spriteind" "spr_act_wire_turn"
		sprite_index = spr_act_wire_turn;
		image_index = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0889DE47
		/// @DnDParent : 1740389D
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "output_object.activate"
		output_object.activate = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2B002CA5
	/// @DnDParent : 46D57559
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2D537C81
		/// @DnDParent : 2B002CA5
		/// @DnDArgument : "spriteind" "spr_act_wire_turn"
		/// @DnDSaveInfo : "spriteind" "spr_act_wire_turn"
		sprite_index = spr_act_wire_turn;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1D440C3F
		/// @DnDParent : 2B002CA5
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "output_object.activate"
		output_object.activate = false;
	}
}
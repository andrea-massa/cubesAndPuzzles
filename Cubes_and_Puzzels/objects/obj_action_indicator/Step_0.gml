/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 10D66C66
/// @DnDArgument : "expr" "output_object != noone"
if(output_object != noone)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1DAFE614
	/// @DnDComment : detect wether the connection at its input is activated or not
	/// @DnDParent : 10D66C66
	/// @DnDArgument : "expr" "activate == true"
	if(activate == true)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2371FDEF
		/// @DnDParent : 1DAFE614
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "spriteind" "spr_act_indicator"
		/// @DnDSaveInfo : "spriteind" "spr_act_indicator"
		sprite_index = spr_act_indicator;
		image_index = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 57C170BA
		/// @DnDParent : 1DAFE614
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "output_object.activate"
		output_object.activate = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2C5D8AD7
	/// @DnDParent : 10D66C66
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 16BCA7C0
		/// @DnDParent : 2C5D8AD7
		/// @DnDArgument : "spriteind" "spr_act_indicator"
		/// @DnDSaveInfo : "spriteind" "spr_act_indicator"
		sprite_index = spr_act_indicator;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 152F5132
		/// @DnDParent : 2C5D8AD7
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "output_object.activate"
		output_object.activate = false;
	}
}
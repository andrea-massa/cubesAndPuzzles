/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 27E27F67
/// @DnDArgument : "var" "output_object"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "noone"
if(!(output_object == noone))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2D4C2648
	/// @DnDParent : 27E27F67
	/// @DnDArgument : "var" "activate"
	/// @DnDArgument : "value" "true"
	if(activate == true)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 01054143
		/// @DnDParent : 2D4C2648
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "spriteind" "spr_act_wireless"
		/// @DnDSaveInfo : "spriteind" "spr_act_wireless"
		sprite_index = spr_act_wireless;
		image_index = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2E37DE26
		/// @DnDParent : 2D4C2648
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "output_object.activate"
		output_object.activate = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2C16DB63
	/// @DnDParent : 27E27F67
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 561E93E8
		/// @DnDParent : 2C16DB63
		/// @DnDArgument : "spriteind" "spr_act_wireless"
		/// @DnDSaveInfo : "spriteind" "spr_act_wireless"
		sprite_index = spr_act_wireless;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1F552A72
		/// @DnDParent : 2C16DB63
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "output_object.activate"
		output_object.activate = false;
	}
}
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 69570BB1
/// @DnDArgument : "var" "output_object"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "noone"
if(!(output_object == noone))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6C11A2C0
	/// @DnDParent : 69570BB1
	/// @DnDArgument : "var" "activate"
	/// @DnDArgument : "value" "false"
	if(activate == false)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1BCFBA6E
		/// @DnDParent : 6C11A2C0
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "spriteind" "spr_act_not_gate"
		/// @DnDSaveInfo : "spriteind" "spr_act_not_gate"
		sprite_index = spr_act_not_gate;
		image_index = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 767BBD65
		/// @DnDParent : 6C11A2C0
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "output_object.activate"
		output_object.activate = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 270E85D2
	/// @DnDParent : 69570BB1
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6156D975
		/// @DnDParent : 270E85D2
		/// @DnDArgument : "spriteind" "spr_act_not_gate"
		/// @DnDSaveInfo : "spriteind" "spr_act_not_gate"
		sprite_index = spr_act_not_gate;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1316CDFB
		/// @DnDParent : 270E85D2
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "output_object.activate"
		output_object.activate = false;
	}
}
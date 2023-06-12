/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3789835A
/// @DnDArgument : "expr" "output_object == noone and input1 == noone and input2 == noone"
/// @DnDArgument : "not" "1"
if(!(output_object == noone and input1 == noone and input2 == noone))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4694FA36
	/// @DnDParent : 3789835A
	/// @DnDArgument : "expr" "input1.activate and input2.activate"
	/// @DnDArgument : "not" "1"
	if(!(input1.activate and input2.activate))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6858DB97
		/// @DnDParent : 4694FA36
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "spriteind" "spr_act_nand_gate"
		/// @DnDSaveInfo : "spriteind" "spr_act_nand_gate"
		sprite_index = spr_act_nand_gate;
		image_index = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 26245931
		/// @DnDParent : 4694FA36
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "output_object.activate"
		output_object.activate = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 49C316C6
	/// @DnDParent : 3789835A
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 306CDE7F
		/// @DnDParent : 49C316C6
		/// @DnDArgument : "spriteind" "spr_act_nand_gate"
		/// @DnDSaveInfo : "spriteind" "spr_act_nand_gate"
		sprite_index = spr_act_nand_gate;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7FF354C2
		/// @DnDParent : 49C316C6
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "output_object.activate"
		output_object.activate = false;
	}
}
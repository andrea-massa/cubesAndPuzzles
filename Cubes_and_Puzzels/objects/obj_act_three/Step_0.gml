/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 38F240CD
/// @DnDArgument : "expr" "output_object != noone and output_object1 != noone"
if(output_object != noone and output_object1 != noone)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6738051D
	/// @DnDParent : 38F240CD
	/// @DnDArgument : "var" "activate"
	/// @DnDArgument : "value" "true"
	if(activate == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 25A49EFF
		/// @DnDParent : 6738051D
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "output_object.activate"
		output_object.activate = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 47F73191
		/// @DnDParent : 6738051D
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "output_object1.activate"
		output_object1.activate = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 201092D1
		/// @DnDParent : 6738051D
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "spriteind" "spr_act_wire_three_way"
		/// @DnDSaveInfo : "spriteind" "spr_act_wire_three_way"
		sprite_index = spr_act_wire_three_way;
		image_index = 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1444592A
	/// @DnDParent : 38F240CD
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 41F1AB9C
		/// @DnDParent : 1444592A
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "output_object.activate"
		output_object.activate = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 045F66D4
		/// @DnDParent : 1444592A
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "output_object1.activate"
		output_object1.activate = false;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 384492AE
		/// @DnDParent : 1444592A
		/// @DnDArgument : "spriteind" "spr_act_wire_three_way"
		/// @DnDSaveInfo : "spriteind" "spr_act_wire_three_way"
		sprite_index = spr_act_wire_three_way;
		image_index = 0;
	}
}
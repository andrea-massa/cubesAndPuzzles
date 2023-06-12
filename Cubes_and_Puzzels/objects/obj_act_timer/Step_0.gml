/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 77E1A163
/// @DnDArgument : "expr" "input_object != noone and output_object != noone"
if(input_object != noone and output_object != noone)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5A452C59
	/// @DnDParent : 77E1A163
	/// @DnDArgument : "expr" "input_object.activate == true"
	if(input_object.activate == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D25761D
		/// @DnDParent : 5A452C59
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "output_object.activate"
		output_object.activate = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 03F9FE7F
		/// @DnDParent : 5A452C59
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "activate"
		activate = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 047D641D
		/// @DnDParent : 5A452C59
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "spriteind" "spr_act_timer"
		/// @DnDSaveInfo : "spriteind" "spr_act_timer"
		sprite_index = spr_act_timer;
		image_index = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 404876D9
	/// @DnDParent : 77E1A163
	/// @DnDArgument : "expr" "activate == true and input_object.activate == false"
	if(activate == true and input_object.activate == false)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6AB44569
		/// @DnDParent : 404876D9
		/// @DnDArgument : "var" "wait"
		/// @DnDArgument : "value" "false"
		if(wait == false)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 0DE36210
			/// @DnDParent : 6AB44569
			/// @DnDArgument : "steps" "60"
			alarm_set(0, 60);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7BC3459D
			/// @DnDParent : 6AB44569
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "wait"
			wait = true;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6160E8AF
	/// @DnDParent : 77E1A163
	/// @DnDArgument : "expr" "activate == false"
	if(activate == false)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 493F9D61
		/// @DnDParent : 6160E8AF
		/// @DnDArgument : "spriteind" "spr_act_timer"
		/// @DnDSaveInfo : "spriteind" "spr_act_timer"
		sprite_index = spr_act_timer;
		image_index = 0;
	}
}
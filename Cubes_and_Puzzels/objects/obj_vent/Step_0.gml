/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 057A0433
/// @DnDComment : One activate play animation (this is all it does)
/// @DnDArgument : "var" "activate"
/// @DnDArgument : "value" "true"
if(activate == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F4C169F
	/// @DnDParent : 057A0433
	/// @DnDArgument : "var" "play_animation"
	/// @DnDArgument : "value" "true"
	if(play_animation == true)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 295DB927
		/// @DnDParent : 6F4C169F
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "spriteind" "spr_cube_dropper"
		/// @DnDSaveInfo : "spriteind" "spr_cube_dropper"
		sprite_index = spr_cube_dropper;
		image_index = 1;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 3324C7E5
		/// @DnDParent : 6F4C169F
		/// @DnDArgument : "steps" "60"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, 60);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5CA16C9D
		/// @DnDParent : 6F4C169F
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "play_animation"
		play_animation = false;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6198A706
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 380925FF
	/// @DnDParent : 6198A706
	/// @DnDArgument : "spriteind" "spr_cube_dropper"
	/// @DnDSaveInfo : "spriteind" "spr_cube_dropper"
	sprite_index = spr_cube_dropper;
	image_index = 0;
}
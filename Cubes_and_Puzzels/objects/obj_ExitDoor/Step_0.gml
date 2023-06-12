/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0D0887BD
/// @DnDComment : See if the doer has been activated
/// @DnDArgument : "var" "activate"
/// @DnDArgument : "value" "true"
if(activate == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32321F61
	/// @DnDComment : if door close open
	/// @DnDParent : 0D0887BD
	/// @DnDArgument : "var" "closed"
	/// @DnDArgument : "value" "true"
	if(closed == true)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 73B7A560
		/// @DnDParent : 32321F61
		/// @DnDArgument : "soundid" "snd_door_open"
		/// @DnDSaveInfo : "soundid" "snd_door_open"
		audio_play_sound(snd_door_open, 0, 0);
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3678D771
		/// @DnDParent : 32321F61
		/// @DnDArgument : "spriteind" "spr_ChamberDoorOpening"
		/// @DnDSaveInfo : "spriteind" "spr_ChamberDoorOpening"
		sprite_index = spr_ChamberDoorOpening;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 0AE0FE0D
		/// @DnDParent : 32321F61
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 568DA235
		/// @DnDParent : 32321F61
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "closed"
		closed = false;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5A20F63B
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 27ED407F
	/// @DnDComment : if open close
	/// @DnDParent : 5A20F63B
	/// @DnDArgument : "var" "closed"
	/// @DnDArgument : "value" "false"
	if(closed == false)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 491C695B
		/// @DnDParent : 27ED407F
		/// @DnDArgument : "soundid" "snd_door_close"
		/// @DnDSaveInfo : "soundid" "snd_door_close"
		audio_play_sound(snd_door_close, 0, 0);
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6887A2BF
		/// @DnDParent : 27ED407F
		/// @DnDArgument : "spriteind" "spr_ChamberDoorClosing"
		/// @DnDSaveInfo : "spriteind" "spr_ChamberDoorClosing"
		sprite_index = spr_ChamberDoorClosing;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 1FA60170
		/// @DnDParent : 27ED407F
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2D5B129A
		/// @DnDParent : 27ED407F
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "closed"
		closed = true;
	}
}
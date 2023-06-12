/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 5E8C494E
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l5E8C494E_0 = false;
l5E8C494E_0 = instance_exists(obj_player);
if(l5E8C494E_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1AD3D06C
	/// @DnDComment : is this emmitter active used for fizzlers
	/// @DnDParent : 5E8C494E
	/// @DnDArgument : "var" "activate"
	if(activate == 0)
	{
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 73479AB7
		/// @DnDParent : 1AD3D06C
		/// @DnDArgument : "soundid" "sound_to_play"
		/// @DnDArgument : "not" "1"
		var l73479AB7_0 = sound_to_play;
		if (!audio_is_playing(l73479AB7_0))
		{
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 6B3DB613
			/// @DnDParent : 73479AB7
			/// @DnDArgument : "code" "//start playing sound where the obj_audio_manager is$(13_10)audio_play_sound_at(sound_to_play, self.x, self.y, 1, obj_player , max_audiable_distance, 1 , loop, priority)"
			//start playing sound where the obj_audio_manager is
			audio_play_sound_at(sound_to_play, self.x, self.y, 1, obj_player , max_audiable_distance, 1 , loop, priority)
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 593F97A4
	/// @DnDParent : 5E8C494E
	else
	{
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 3D5AE5DB
		/// @DnDParent : 593F97A4
		/// @DnDArgument : "soundid" "sound_to_play"
		audio_stop_sound(sound_to_play);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1EDCFF6F
/// @DnDComment : if player doesn't exist stop the sound
else
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 699BDFE7
	/// @DnDParent : 1EDCFF6F
	/// @DnDArgument : "soundid" "sound_to_play"
	var l699BDFE7_0 = sound_to_play;
	if (audio_is_playing(l699BDFE7_0))
	{
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 159D9570
		/// @DnDParent : 699BDFE7
		/// @DnDArgument : "soundid" "sound_to_play"
		audio_stop_sound(sound_to_play);
	}
}
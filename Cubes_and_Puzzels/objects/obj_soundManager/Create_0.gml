/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 3D86DD74
audio_stop_all();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4AAE6960
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "MenuTitle"
if(room == MenuTitle)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3081D44C
	/// @DnDParent : 4AAE6960
	/// @DnDArgument : "soundid" "snd_chamber0"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "snd_chamber0"
	audio_play_sound(snd_chamber0, 0, 1);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 06DB40A5
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "Chamber01"
if(room == Chamber01)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 0D184167
	/// @DnDParent : 06DB40A5
	/// @DnDArgument : "soundid" "snd_chamber1"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "snd_chamber1"
	audio_play_sound(snd_chamber1, 0, 1);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 75485278
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "Chamber02"
if(room == Chamber02)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 32FC2A67
	/// @DnDParent : 75485278
	/// @DnDArgument : "soundid" "snd_chamber2"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "snd_chamber2"
	audio_play_sound(snd_chamber2, 0, 1);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 70FA02D2
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "Chamber03"
if(room == Chamber03)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 076B668D
	/// @DnDParent : 70FA02D2
	/// @DnDArgument : "soundid" "snd_chamber3"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "snd_chamber3"
	audio_play_sound(snd_chamber3, 0, 1);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 119B71E1
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "Chamber04"
if(room == Chamber04)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3587D60C
	/// @DnDParent : 119B71E1
	/// @DnDArgument : "soundid" "snd_chamber4"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "snd_chamber4"
	audio_play_sound(snd_chamber4, 0, 1);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 30CEC673
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "Chamber05"
if(room == Chamber05)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 24A41616
	/// @DnDParent : 30CEC673
	/// @DnDArgument : "soundid" "snd_chamber5"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "snd_chamber5"
	audio_play_sound(snd_chamber5, 0, 1);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 514361B1
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "ChamberNull"
if(room == ChamberNull)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 68DABB90
	/// @DnDParent : 514361B1
	/// @DnDArgument : "soundid" "snd_chamberNULL"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "snd_chamberNULL"
	audio_play_sound(snd_chamberNULL, 0, 1);
}
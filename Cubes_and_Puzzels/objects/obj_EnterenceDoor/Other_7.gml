/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 43831D7F
/// @DnDComment : Check if this door is an entrence
/// @DnDArgument : "var" "isEnterence"
/// @DnDArgument : "value" "true"
if(isEnterence == true)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6E4C03DE
	/// @DnDComment : spawn a player if door is open
	/// @DnDParent : 43831D7F
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "p1"
	/// @DnDArgument : "objectid" "obj_player"
	/// @DnDSaveInfo : "objectid" "obj_player"
	p1 = instance_create_layer(x + 0, y + 0, "Instances", obj_player);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B8ADF8B
	/// @DnDComment : Set the player to have a gun
	/// @DnDParent : 43831D7F
	/// @DnDArgument : "expr" "player_spawn_with_gun"
	/// @DnDArgument : "var" "p1.spawn_with_gun"
	p1.spawn_with_gun = player_spawn_with_gun;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3C1E391F
	/// @DnDParent : 43831D7F
	/// @DnDArgument : "spriteind" "spr_ChamberDoorClosing"
	/// @DnDSaveInfo : "spriteind" "spr_ChamberDoorClosing"
	sprite_index = spr_ChamberDoorClosing;
	image_index = 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 25EC73FD
	/// @DnDParent : 43831D7F
	image_speed = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E497004
	/// @DnDParent : 43831D7F
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "isEnterence"
	isEnterence = false;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 1E9107E8
	/// @DnDParent : 43831D7F
	/// @DnDArgument : "soundid" "snd_door_close"
	/// @DnDSaveInfo : "soundid" "snd_door_close"
	audio_play_sound(snd_door_close, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 6D3EA1D4
	/// @DnDComment : let door close animation play then disable door
	/// @DnDParent : 43831D7F
	/// @DnDArgument : "steps" "room_speed+30"
	alarm_set(0, room_speed+30);
}
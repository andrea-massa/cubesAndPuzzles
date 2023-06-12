/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 4493EF57
/// @DnDArgument : "soundid" "snd_playerExplosion"
/// @DnDSaveInfo : "soundid" "snd_playerExplosion"
audio_play_sound(snd_playerExplosion, 0, 0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 49FDEA97
/// @DnDArgument : "expr" "obj_datastore.player_x"
/// @DnDArgument : "var" "obj_player.phy_position_x"
obj_player.phy_position_x = obj_datastore.player_x;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 39702D55
/// @DnDArgument : "expr" "datastore_object.player_y"
/// @DnDArgument : "var" "obj_player.phy_position_y"
obj_player.phy_position_y = datastore_object.player_y;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3DB46EA5
/// @DnDArgument : "code" "//reset object posistion for obj_wcube$(13_10)$(13_10)//set a variable that hold number of active cubes$(13_10)for (i= 0; i < instance_number(obj_wcube); i+=1) {$(13_10)	inst = instance_find(obj_wcube, i )$(13_10)	inst.phy_position_x = inst.xstart$(13_10)	inst.phy_position_y = inst.ystart$(13_10)}$(13_10)"
//reset object posistion for obj_wcube

//set a variable that hold number of active cubes
for (i= 0; i < instance_number(obj_wcube); i+=1) {
	inst = instance_find(obj_wcube, i )
	inst.phy_position_x = inst.xstart
	inst.phy_position_y = inst.ystart
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3CD59903
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "isDying"
isDying = false;
/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 793A49C0
/// @DnDArgument : "code" "if(wait == false) {$(13_10)	//work around for 9-slice (since it doesn't work on animated sprites)$(13_10)	//simply apply the 9-slice for each frame of animation$(13_10)	sprite_set_nineslice(image_index, sprite_get_nineslice(image_index))$(13_10)	wait = true$(13_10)	alarm_set(0,room_speed)$(13_10)}	"
if(wait == false) {
	//work around for 9-slice (since it doesn't work on animated sprites)
	//simply apply the 9-slice for each frame of animation
	sprite_set_nineslice(image_index, sprite_get_nineslice(image_index))
	wait = true
	alarm_set(0,room_speed)
}
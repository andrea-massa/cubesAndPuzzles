/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 241B3779
/// @DnDArgument : "code" "if(wait == false) {$(13_10)	//work around for 9-slice (since it doesn't work on animated sprites)$(13_10)	//simply apply the 9-slice for each frame of animation$(13_10)	sprite_set_nineslice(image_index, sprite_get_nineslice(image_index))$(13_10)	wait = true$(13_10)	alarm_set(0,room_speed)$(13_10)}	"
if(wait == false) {
	//work around for 9-slice (since it doesn't work on animated sprites)
	//simply apply the 9-slice for each frame of animation
	sprite_set_nineslice(image_index, sprite_get_nineslice(image_index))
	wait = true
	alarm_set(0,room_speed)
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4A21DE96
/// @DnDArgument : "var" "input_object"
/// @DnDArgument : "value" "noone"
if(input_object == noone)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C68FFED
	/// @DnDParent : 4A21DE96
	/// @DnDArgument : "var" "activate"
	/// @DnDArgument : "value" "true"
	if(activate == true)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 59A80A48
		/// @DnDParent : 5C68FFED
		/// @DnDArgument : "imageind" "image_index"
		/// @DnDArgument : "spriteind" "spr_barrier"
		/// @DnDSaveInfo : "spriteind" "spr_barrier"
		sprite_index = spr_barrier;
		image_index = image_index;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7B0DE63B
		/// @DnDParent : 5C68FFED
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "phy_active"
		phy_active = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0D4D654F
		/// @DnDParent : 5C68FFED
		/// @DnDArgument : "expr" "xstart"
		/// @DnDArgument : "var" "phy_position_x"
		phy_position_x = xstart;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 482170BC
		/// @DnDParent : 5C68FFED
		/// @DnDArgument : "var" "sound_emitter"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "noone"
		if(!(sound_emitter == noone))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 40A7C5F7
			/// @DnDParent : 482170BC
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "sound_emitter.activate"
			sound_emitter.activate = true;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 14A7E119
	/// @DnDParent : 4A21DE96
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 04DF390A
		/// @DnDParent : 14A7E119
		/// @DnDArgument : "spriteind" "spr_fiz_las_bar_off"
		/// @DnDSaveInfo : "spriteind" "spr_fiz_las_bar_off"
		sprite_index = spr_fiz_las_bar_off;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4350A4F4
		/// @DnDParent : 14A7E119
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "phy_active"
		phy_active = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6BB459F4
		/// @DnDParent : 14A7E119
		/// @DnDArgument : "expr" "-1000"
		/// @DnDArgument : "var" "phy_position_x"
		phy_position_x = -1000;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 498F982B
		/// @DnDParent : 14A7E119
		/// @DnDArgument : "var" "sound_emitter"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "noone"
		if(!(sound_emitter == noone))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 73089A9C
			/// @DnDParent : 498F982B
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "sound_emitter.activate"
			sound_emitter.activate = false;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 192F6F79
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4CBDF6A0
	/// @DnDParent : 192F6F79
	/// @DnDArgument : "var" "input_object.activate"
	/// @DnDArgument : "value" "true"
	if(input_object.activate == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3D4BB1EA
		/// @DnDParent : 4CBDF6A0
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "activate"
		activate = false;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 20857AC2
		/// @DnDParent : 4CBDF6A0
		/// @DnDArgument : "spriteind" "spr_fiz_las_bar_off"
		/// @DnDSaveInfo : "spriteind" "spr_fiz_las_bar_off"
		sprite_index = spr_fiz_las_bar_off;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 62A1BCEB
		/// @DnDParent : 4CBDF6A0
		/// @DnDArgument : "expr" "-1000"
		/// @DnDArgument : "var" "phy_position_x"
		phy_position_x = -1000;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 63646141
		/// @DnDParent : 4CBDF6A0
		/// @DnDArgument : "var" "sound_emitter"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "noone"
		if(!(sound_emitter == noone))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0C9367F2
			/// @DnDParent : 63646141
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "sound_emitter.activate"
			sound_emitter.activate = false;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4B2FFF1E
	/// @DnDParent : 192F6F79
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0AE8C507
		/// @DnDParent : 4B2FFF1E
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "activate"
		activate = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 72DAB505
		/// @DnDParent : 4B2FFF1E
		/// @DnDArgument : "imageind" "image_index"
		/// @DnDArgument : "spriteind" "spr_barrier"
		/// @DnDSaveInfo : "spriteind" "spr_barrier"
		sprite_index = spr_barrier;
		image_index = image_index;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3F77FEE8
		/// @DnDParent : 4B2FFF1E
		/// @DnDArgument : "expr" "xstart"
		/// @DnDArgument : "var" "phy_position_x"
		phy_position_x = xstart;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 25B9A4AB
		/// @DnDParent : 4B2FFF1E
		/// @DnDArgument : "var" "sound_emitter"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "noone"
		if(!(sound_emitter == noone))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 479F6C19
			/// @DnDParent : 25B9A4AB
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "sound_emitter.activate"
			sound_emitter.activate = true;
		}
	}
}
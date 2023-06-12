/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5EF5BE39
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
/// @DnDHash : 07FFCAD5
/// @DnDArgument : "var" "input_object"
/// @DnDArgument : "value" "noone"
if(input_object == noone)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 264BA002
	/// @DnDParent : 07FFCAD5
	/// @DnDArgument : "var" "activate"
	/// @DnDArgument : "value" "true"
	if(activate == true)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 07B8C5AC
		/// @DnDParent : 264BA002
		/// @DnDArgument : "imageind" "image_index"
		/// @DnDArgument : "spriteind" "spr_laser_field"
		/// @DnDSaveInfo : "spriteind" "spr_laser_field"
		sprite_index = spr_laser_field;
		image_index = image_index;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 674A66D5
		/// @DnDParent : 264BA002
		/// @DnDArgument : "var" "sound_emitter"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "noone"
		if(!(sound_emitter == noone))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 162DE157
			/// @DnDParent : 674A66D5
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "sound_emitter.activate"
			sound_emitter.activate = true;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3AF54360
	/// @DnDParent : 07FFCAD5
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 45AC53B2
		/// @DnDParent : 3AF54360
		sprite_index = noone;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1B1B5FF8
		/// @DnDParent : 3AF54360
		/// @DnDArgument : "var" "sound_emitter"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "noone"
		if(!(sound_emitter == noone))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0B19C216
			/// @DnDParent : 1B1B5FF8
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "sound_emitter.activate"
			sound_emitter.activate = false;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 14603C2F
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1CD174BE
	/// @DnDParent : 14603C2F
	/// @DnDArgument : "var" "input_object.activate"
	/// @DnDArgument : "value" "true"
	if(input_object.activate == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 511517BC
		/// @DnDParent : 1CD174BE
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "activate"
		activate = false;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 164958E5
		/// @DnDParent : 1CD174BE
		sprite_index = noone;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 19AD777A
		/// @DnDParent : 1CD174BE
		/// @DnDArgument : "var" "sound_emitter"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "noone"
		if(!(sound_emitter == noone))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2D18618A
			/// @DnDParent : 19AD777A
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "sound_emitter.activate"
			sound_emitter.activate = false;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 63B9291A
	/// @DnDParent : 14603C2F
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4854695D
		/// @DnDParent : 63B9291A
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "activate"
		activate = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0AE73D42
		/// @DnDParent : 63B9291A
		/// @DnDArgument : "imageind" "image_index"
		/// @DnDArgument : "spriteind" "spr_laser_field"
		/// @DnDSaveInfo : "spriteind" "spr_laser_field"
		sprite_index = spr_laser_field;
		image_index = image_index;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1B72191E
		/// @DnDParent : 63B9291A
		/// @DnDArgument : "var" "sound_emitter"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "noone"
		if(!(sound_emitter == noone))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2847907D
			/// @DnDParent : 1B72191E
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "sound_emitter.activate"
			sound_emitter.activate = true;
		}
	}
}
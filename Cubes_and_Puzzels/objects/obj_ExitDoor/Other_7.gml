/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 578936B5
/// @DnDComment : if door open animation is done
/// @DnDArgument : "var" "closed"
/// @DnDArgument : "value" "false"
if(closed == false)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 37E67454
	/// @DnDComment : check if a exit trigger exist if not create
	/// @DnDParent : 578936B5
	/// @DnDArgument : "obj" "obj_exitTrigger"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_exitTrigger"
	var l37E67454_0 = false;
	l37E67454_0 = instance_exists(obj_exitTrigger);
	if(!l37E67454_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 180FACE6
		/// @DnDParent : 37E67454
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "exitT"
		/// @DnDArgument : "objectid" "obj_exitTrigger"
		/// @DnDSaveInfo : "objectid" "obj_exitTrigger"
		exitT = instance_create_layer(x + 0, y + 0, "Instances", obj_exitTrigger);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 480F46AE
		/// @DnDParent : 37E67454
		/// @DnDArgument : "expr" "next_room"
		/// @DnDArgument : "var" "exitT.room_id"
		exitT.room_id = next_room;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 5B252BA1
		/// @DnDApplyTo : {obj_exitTrigger}
		/// @DnDParent : 37E67454
		/// @DnDArgument : "xscale" "0.5"
		/// @DnDArgument : "yscale" "0.5"
		with(obj_exitTrigger) {
		image_xscale = 0.5;
		image_yscale = 0.5;
		}
	}

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2F7D2B76
	/// @DnDParent : 578936B5
	/// @DnDArgument : "spriteind" "spr_ChamberDoorOpen"
	/// @DnDSaveInfo : "spriteind" "spr_ChamberDoorOpen"
	sprite_index = spr_ChamberDoorOpen;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3E09539E
/// @DnDComment : if door animation is closing
else
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 12247EED
	/// @DnDComment : see if a exit trigger exist and remove
	/// @DnDParent : 3E09539E
	/// @DnDArgument : "obj" "obj_exitTrigger"
	/// @DnDSaveInfo : "obj" "obj_exitTrigger"
	var l12247EED_0 = false;
	l12247EED_0 = instance_exists(obj_exitTrigger);
	if(l12247EED_0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 76224DD8
		/// @DnDApplyTo : {obj_exitTrigger}
		/// @DnDParent : 12247EED
		with(obj_exitTrigger) instance_destroy();
	}

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3B256286
	/// @DnDParent : 3E09539E
	/// @DnDArgument : "spriteind" "spr_ChamberDoorClosed"
	/// @DnDSaveInfo : "spriteind" "spr_ChamberDoorClosed"
	sprite_index = spr_ChamberDoorClosed;
	image_index = 0;
}
/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6335A93C
/// @DnDArgument : "obj" "spawned_cube"
/// @DnDArgument : "not" "1"
var l6335A93C_0 = false;
l6335A93C_0 = instance_exists(spawned_cube);
if(!l6335A93C_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2947DBF3
	/// @DnDParent : 6335A93C
	/// @DnDArgument : "expr" "noone"
	/// @DnDArgument : "var" "spawned_cube"
	spawned_cube = noone;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 12F7EEB4
/// @DnDComment : if auto spawn is off see if spawner is activated and spawn a cube
/// @DnDArgument : "var" "activate"
/// @DnDArgument : "value" "true"
if(activate == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75A16BF8
	/// @DnDParent : 12F7EEB4
	/// @DnDArgument : "var" "cube_spawner"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "noone"
	if(!(cube_spawner == noone))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 06D71DAF
		/// @DnDParent : 75A16BF8
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "cube_spawner.activate"
		cube_spawner.activate = true;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4B5F815E
	/// @DnDComment : if cube does exist kill it esle spawn one
	/// @DnDParent : 12F7EEB4
	/// @DnDArgument : "var" "spawned_cube"
	/// @DnDArgument : "value" "noone"
	if(spawned_cube == noone)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 24929BA1
		/// @DnDParent : 4B5F815E
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "spawned_cube"
		/// @DnDArgument : "objectid" "cube_type"
		spawned_cube = instance_create_layer(x + 0, y + 0, "Instances", cube_type);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6FDA097E
		/// @DnDParent : 4B5F815E
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "activate"
		activate = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 64F60100
		/// @DnDParent : 4B5F815E
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "wait"
		wait = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 13008B99
		/// @DnDParent : 4B5F815E
		/// @DnDArgument : "steps" "60"
		alarm_set(0, 60);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 017E65E6
	/// @DnDParent : 12F7EEB4
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6E6F3501
		/// @DnDParent : 017E65E6
		/// @DnDArgument : "var" "wait"
		/// @DnDArgument : "value" "false"
		if(wait == false)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2DB7FCB2
			/// @DnDParent : 6E6F3501
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "spawned_cube.die"
			spawned_cube.die = true;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5269FC07
			/// @DnDParent : 6E6F3501
			/// @DnDArgument : "expr" "noone"
			/// @DnDArgument : "var" "spawned_cube"
			spawned_cube = noone;
		}
	}
}
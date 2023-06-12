/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 11230465
/// @DnDArgument : "var" "image_speed"
image_speed = 0;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 6BE6A12E
/// @DnDArgument : "expr" "slot"
var l6BE6A12E_0 = slot;
switch(l6BE6A12E_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 368ABDAB
	/// @DnDParent : 6BE6A12E
	/// @DnDArgument : "const" "1"
	case 1:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 37F7DB93
		/// @DnDParent : 368ABDAB
		/// @DnDArgument : "expr" ""save1.sav""
		/// @DnDArgument : "var" "this_slot"
		this_slot = "save1.sav";
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4C075E3A
	/// @DnDParent : 6BE6A12E
	/// @DnDArgument : "const" "2"
	case 2:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 37BA4C63
		/// @DnDParent : 4C075E3A
		/// @DnDArgument : "expr" ""save2.sav""
		/// @DnDArgument : "var" "this_slot"
		this_slot = "save2.sav";
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 19EB1BE0
	/// @DnDParent : 6BE6A12E
	/// @DnDArgument : "const" "3"
	case 3:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 28A50DCA
		/// @DnDParent : 19EB1BE0
		/// @DnDArgument : "expr" ""save3.sav""
		/// @DnDArgument : "var" "this_slot"
		this_slot = "save3.sav";
		break;
}

/// @DnDAction : YoYo Games.Files.If_File_Exists
/// @DnDVersion : 1
/// @DnDHash : 75219780
/// @DnDArgument : "file" "this_slot"
var l75219780_0 = file_exists(this_slot);
if(l75219780_0)
{
	/// @DnDAction : YoYo Games.Files.Open_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 54F7820A
	/// @DnDParent : 75219780
	/// @DnDArgument : "filename" "this_slot"
	ini_open(this_slot);

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 12D32B4C
	/// @DnDParent : 75219780
	/// @DnDArgument : "expr" "ini_read_real("Room", "RoomID", 0)"
	var l12D32B4C_0 = ini_read_real("Room", "RoomID", 0);
	switch(l12D32B4C_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 6AC0F886
		/// @DnDParent : 12D32B4C
		/// @DnDArgument : "const" "Chamber00"
		case Chamber00:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 21D3B021
			/// @DnDParent : 6AC0F886
			/// @DnDArgument : "expr" "00"
			/// @DnDArgument : "var" "room_name"
			room_name = 00;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 46881405
		/// @DnDParent : 12D32B4C
		/// @DnDArgument : "const" "Chamber01"
		case Chamber01:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 47CF4CBA
			/// @DnDParent : 46881405
			/// @DnDArgument : "expr" "01"
			/// @DnDArgument : "var" "room_name"
			room_name = 01;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2CA3ACD4
		/// @DnDParent : 12D32B4C
		/// @DnDArgument : "const" "Chamber02"
		case Chamber02:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7BFF0306
			/// @DnDParent : 2CA3ACD4
			/// @DnDArgument : "expr" "02"
			/// @DnDArgument : "var" "room_name"
			room_name = 02;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 657B88B3
		/// @DnDParent : 12D32B4C
		/// @DnDArgument : "const" "Chamber03"
		case Chamber03:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4FDCF4BB
			/// @DnDParent : 657B88B3
			/// @DnDArgument : "expr" "03"
			/// @DnDArgument : "var" "room_name"
			room_name = 03;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 098F41ED
		/// @DnDParent : 12D32B4C
		/// @DnDArgument : "const" "Chamber04"
		case Chamber04:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5A7BA81D
			/// @DnDParent : 098F41ED
			/// @DnDArgument : "expr" "04"
			/// @DnDArgument : "var" "room_name"
			room_name = 04;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 1BDC3518
		/// @DnDParent : 12D32B4C
		/// @DnDArgument : "const" "Chamber05"
		case Chamber05:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3BFE71A2
			/// @DnDParent : 1BDC3518
			/// @DnDArgument : "expr" "05"
			/// @DnDArgument : "var" "room_name"
			room_name = 05;
			break;
	}

	/// @DnDAction : YoYo Games.Files.Close_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 44C258E5
	/// @DnDParent : 75219780
	ini_close();
}
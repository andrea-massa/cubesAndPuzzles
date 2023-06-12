/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 54C9C2BA
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "get_puzzle_elements"
/// @DnDArgument : "arg" "chamber_number"
function get_puzzle_elements(chamber_number) 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 4C50130F
	/// @DnDParent : 54C9C2BA
	/// @DnDArgument : "code" "//chamber signs use string to represent which chamber it is in add more case for more chambers$(13_10)switch (chamber_number) {$(13_10)	case "0-1":$(13_10)		return "Movement Basics"$(13_10)	case "0-2":$(13_10)		return "Jump Basics"$(13_10)	case "1-1":$(13_10)		return "Jump with Hazard"$(13_10)	case "1-2":$(13_10)		return "Weighted Cube"$(13_10)	case "2-1":$(13_10)		return "Pedestal Button"$(13_10)	case "2-2":$(13_10)		return "GMG"$(13_10)	case "3-1":$(13_10)		return "Toxic Goo\nFizzler\nTimed Button\nFloor Button"$(13_10)	case "3-2":$(13_10)		return "Floor Button"$(13_10)	case "4-1":$(13_10)		return "Floor Button\nStasis Cube"$(13_10)	case "4-2":$(13_10)		return "Laser Field\nTimed Button\nGear Lift\nFizzler"$(13_10)	case "5":$(13_10)		return "Review Chamber\nBarrier"$(13_10)	case "???":$(13_10)		return "Special Surprize"$(13_10)	default :$(13_10)		return ""$(13_10)}"
	//chamber signs use string to represent which chamber it is in add more case for more chambers
	switch (chamber_number) {
		case "0-1":
			return "Movement Basics"
		case "0-2":
			return "Jump Basics"
		case "1-1":
			return "Jump with Hazard"
		case "1-2":
			return "Weighted Cube"
		case "2-1":
			return "Pedestal Button"
		case "2-2":
			return "GMG"
		case "3-1":
			return "Toxic Goo\nFizzler\nTimed Button\nFloor Button"
		case "3-2":
			return "Floor Button"
		case "4-1":
			return "Floor Button\nStasis Cube"
		case "4-2":
			return "Laser Field\nTimed Button\nGear Lift\nFizzler"
		case "5":
			return "Review Chamber\nBarrier"
		case "???":
			return "Special Surprize"
		default :
			return ""
	}
}
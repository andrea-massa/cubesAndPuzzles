/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 63ADCF99
/// @DnDComment : Sets a newly generated dialog box's values$(13_10)This function holds a dialogs for the game
/// @DnDInput : 3
/// @DnDArgument : "funcName" "stripted_dialog"
/// @DnDArgument : "arg" "dialog_number"
/// @DnDArgument : "arg_1" "manager_object"
/// @DnDArgument : "arg_2" "text_speed"
function stripted_dialog(dialog_number, manager_object, text_speed) 
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7BE95F34
	/// @DnDParent : 63ADCF99
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "object_to_modify"
	/// @DnDArgument : "objectid" "obj_dialog_box"
	/// @DnDArgument : "layer" ""dialog""
	/// @DnDSaveInfo : "objectid" "obj_dialog_box"
	object_to_modify = instance_create_layer(x + 0, y + 0, "dialog", obj_dialog_box);

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 4B527EF1
	/// @DnDParent : 63ADCF99
	/// @DnDArgument : "code" "object_to_modify.speaker = "PAIS"$(13_10)object_to_modify.auto_advance = manager_object.auto_advance$(13_10)object_to_modify.manager = manager_object$(13_10)object_to_modify.text_speed = text_speed$(13_10)// which dialog should the obj_dialog_box use$(13_10)// case 1-5 chamber 0-1 and 0-2$(13_10)switch(dialog_number){$(13_10)	case 1: {$(13_10)		object_to_modify.speaker = "???"$(13_10)		object_to_modify.text_to_display = "Welcome Physics Android 4323, To the Physics Laboratories Gravity\n" + $(13_10)										   "Manipulation Gun Training Coarse."$(13_10)		break$(13_10)	}$(13_10)	case 2: {$(13_10)		object_to_modify.text_to_display = "I am the Physics Accelerated Instruction System, but you can call\n" + $(13_10)										   "me PAIS for short."$(13_10)		break$(13_10)	}$(13_10)	case 3: {$(13_10)		object_to_modify.text_to_display = "Let's get you acquainted with movement. Press 'A' to move left and\n" +$(13_10)										   "Press 'D' to move right. Try moving to opposite side of the room."$(13_10)		break$(13_10)	}$(13_10)	case 4: {$(13_10)		object_to_modify.text_to_display = "Great. For the second part of the movement is the ability to jump.\n" +$(13_10)										   "Press 'SPACE' to jump. Please note you cannot jump super high."$(13_10)		break$(13_10)	}$(13_10)	case 5: {$(13_10)		object_to_modify.text_to_display = "Try using both your movement and jumping to reach the chamber exit."$(13_10)		break$(13_10)	}$(13_10)	case 6: {$(13_10)		object_to_modify.text_to_display = "For this test you must get acquainted with jumping over obstacles."$(13_10)		break$(13_10)	}$(13_10)	case 7: {$(13_10)		object_to_modify.text_to_display = "These obstacles can include bottomless pits, spikes, or toxic goo.\n" +$(13_10)										   "For instance, this test uses a pit with a bottom as a hazard." $(13_10)		break$(13_10)	}$(13_10)	case 8: {$(13_10)		object_to_modify.text_to_display = "If you happen to fall into the pit. A complimentary Lift will\n" + $(13_10)										   "retrieve you and bring you back to the top of the pit."$(13_10)	    break$(13_10)	}$(13_10)	case 9: {$(13_10)		object_to_modify.text_to_display = "Excellent Job. Now it is time to introduce Physic Cubes. Each cube\n" +$(13_10)										   "has unique porperties."$(13_10)		break$(13_10)	}$(13_10)	case 10: {$(13_10)		object_to_modify.text_to_display = "For instance the Weighted Cube seen to the right is quite heavy and\n" +$(13_10)										   "cannot be picked up by your hands. However, they can be pushed by\n" + $(13_10)										   "your body."$(13_10)		break$(13_10)	}$(13_10)	case 11: {$(13_10)		object_to_modify.text_to_display = "If you ever manage to get stuck. You can Press 'C' to restart the \n" + $(13_10)										   "current active part of the chamber, or 'R' to restart room."$(13_10)		break$(13_10)	}$(13_10)	case 12: {$(13_10)		object_to_modify.text_to_display = "Welcome to chamber 2, in this chamber we will be testing your ability\n" + $(13_10)										   "To interact with buttons."$(13_10)		break$(13_10)	}$(13_10)	case 13: {$(13_10)		object_to_modify.text_to_display = "Press 'E' when near a button to activate it. Try use this button to\n" + $(13_10)										   "see what it does."$(13_10)		break$(13_10)	}$(13_10)	case 14: {$(13_10)		object_to_modify.text_to_display = "Did you notice that the blue Wire changed to Orange. These Wires are\n" + $(13_10)										   "called Act Wires, they show what action the button does."$(13_10)		break$(13_10)	}$(13_10)	case 15: {$(13_10)		object_to_modify.text_to_display = "This button here is connected to a Cube Vent. These vents deliver\n" + $(13_10)										   "cubes to test chambers. If you ever get a cube stuck. You can press\n" +$(13_10)										   "again to respawn the cube."$(13_10)		break$(13_10)	}$(13_10)	case 16: {$(13_10)		object_to_modify.text_to_display = "Excellent Work so far android. It is now time for you to get the\n" + $(13_10)									       "Gravity Manipulator Gun! Also known as the GMG."$(13_10)		break$(13_10)	}$(13_10)	case 17: {$(13_10)		object_to_modify.text_to_display = "With it you can pick up physics object, such as the Weighted Cube. Go\n" +$(13_10)										   "and collect the gun from the Photonic Suspension Pedestal. Also don't\n" +$(13_10)										   "worry about the fall."$(13_10)		break$(13_10)	}$(13_10)	case 18: {$(13_10)		object_to_modify.text_to_display = "To Grab an object 'LEFT CLICK;' the object with the mouse. To Drop it\n" + $(13_10)										   "RIGHT CLICK the mouse. Please note that the GMG has a limited range.\n" + $(13_10)										   "Make sure your at least a half of a floor tile way."$(13_10)		break$(13_10)	}$(13_10)	case 19: {$(13_10)		object_to_modify.text_to_display = "This chamber will test you ability to combine advance movement with\n" + $(13_10)										   "the GMG. Please Note this chamber does have on hazard that can kill \n" + $(13_10)										   "you."$(13_10)		break$(13_10)	}$(13_10)	case 20: {$(13_10)		object_to_modify.text_to_display = "The Purple Goo in the bottom of the Pit will instantly dissolve any\n" +$(13_10)										   "object that touches it. Please avoid it at all cost, but don't worry\n" + $(13_10)										   "your hard drive is constantly backed up after every test."$(13_10)		break$(13_10)	}$(13_10)	case 21: {$(13_10)		object_to_modify.text_to_display = "This test also includes a Physic Object Fizzler. This fizzler will\n" +$(13_10)										   "destroy any object that touches it. Try using one of the Pedestal\n" +$(13_10)										   "Buttons to deactivate the fizzler."$(13_10)		break$(13_10)	}$(13_10)	case 22: {$(13_10)		object_to_modify.text_to_display = "You may have noticed the button on the floor. This Physics Floor \n" + $(13_10)										   "Button will only activate if something heavy is on it."$(13_10)		break$(13_10)	}$(13_10)	case 23: {$(13_10)		object_to_modify.text_to_display = "For this part of the chamber use the Weighted Cube to activate the\n " + $(13_10)										   "lift to the right of the chamber."$(13_10)		$(13_10)		break$(13_10)	}$(13_10)	case 24: {$(13_10)		object_to_modify.text_to_display = "Now it is time to introduce a new testing element. The Stasis Cube,\n"+$(13_10)									       "these cubes will freeze in place when you Press 'C' while holding\n " + $(13_10)										   "them."$(13_10)		break$(13_10)	}$(13_10)	case 25: {$(13_10)		object_to_modify.text_to_display = "You can use these cubes to navigate this test chamber. Please note\n" +$(13_10)										   "This test can take a long time to complete, please note the time it\n" + $(13_10)										   "takes you to complete this test is unlimited."$(13_10)		break$(13_10)	}$(13_10)	case 26: {$(13_10)		object_to_modify.text_to_display = "Excellent work. Since the previous part took so long to complete\n" + $(13_10)										   "this next part is quite simple. We will introduce the Gear Lift.\n" + $(13_10)										   "This lift will only move when powered and stop when not."$(13_10)		break$(13_10)	}$(13_10)	case 27: {$(13_10)		object_to_modify.text_to_display = "Be mindful this part contains a new hazard the Laser Field.\n" + $(13_10)										   "This densely packed laser grid will instantly slice through the\n" + $(13_10)										   "unique metal we used for your body. The field however will not\n" + $(13_10)										   "destroy most cubes."$(13_10)		break$(13_10)	}$(13_10)	case 28: {$(13_10)		object_to_modify.text_to_display = "Great work Physics Android 4323, for make your way to the final\n" + $(13_10)										   "test chamber. For this test we will review all that you learned\n" + $(13_10)										   "from the previous chambers."$(13_10)		break$(13_10)	}$(13_10)	case 29: {$(13_10)		object_to_modify.text_to_display = "However, we will only introduce only one major test Element the\n" + $(13_10)									       "Physics Barrier. This barrier blocks any physics object from \n" + $(13_10)										   "passing throw it. Be prepared for this test to get more difficult\n" + $(13_10)										   "as you progress."$(13_10)		break$(13_10)	}$(13_10)	case 30: {$(13_10)		object_to_modify.text_to_display = "Remember if you ever get stuck Press 'C' to go back to the previous\n" + $(13_10)										   "checkpoint."$(13_10)		break$(13_10)	}$(13_10)	case 31: {$(13_10)		object_to_modify.text_to_display = "Congratulation Physics Android 4323, for completing the Physics\n" + $(13_10)										   "Laboratories Gravity Manipulator Training Course."$(13_10)		break$(13_10)	}$(13_10)	case 32: {$(13_10)		object_to_modify.text_to_display = "Unfortunately you are no longer needed and will be recycled for\n" + $(13_10)										   "parts. But don't worry the recorded observations will be used to\n" + $(13_10)										   "teach future iterations of you Operating System."$(13_10)		break$(13_10)	}$(13_10)	case 33: {$(13_10)		object_to_modify.text_to_display = "We are sorry for not mentioning this earlier, but we wouldn't\n" + $(13_10)										   "get good testing results."$(13_10)		break$(13_10)	}$(13_10)	case 34: {$(13_10)		object_to_modify.text_to_display = "Goodbye Physics Android 4323, and Thank you for completing this\n" + $(13_10)										   "Training Course."$(13_10)		break$(13_10)	}$(13_10)	case 35: {$(13_10)		object_to_modify.text_to_display = "We have taken the liberty of disabling your movement systems to\n" +$(13_10)										   "prevent unwanted damage to your system. Goodbye."$(13_10)		object_to_modify.hideable = true								  $(13_10)		break$(13_10)	}$(13_10)	default: {$(13_10)		object_to_modify.speaker = "Error"$(13_10)		object_to_modify.text_to_display = "[Redacted]"$(13_10)		object_to_modify.manager = manager_object$(13_10)		object_to_modify.text_speed = text_speed	$(13_10)	}$(13_10)}$(13_10)"
	object_to_modify.speaker = "PAIS"
	object_to_modify.auto_advance = manager_object.auto_advance
	object_to_modify.manager = manager_object
	object_to_modify.text_speed = text_speed
	// which dialog should the obj_dialog_box use
	// case 1-5 chamber 0-1 and 0-2
	switch(dialog_number){
		case 1: {
			object_to_modify.speaker = "???"
			object_to_modify.text_to_display = "Welcome Physics Android 4323, To the Physics Laboratories Gravity\n" + 
											   "Manipulation Gun Training Coarse."
			break
		}
		case 2: {
			object_to_modify.text_to_display = "I am the Physics Accelerated Instruction System, but you can call\n" + 
											   "me PAIS for short."
			break
		}
		case 3: {
			object_to_modify.text_to_display = "Let's get you acquainted with movement. Press 'A' to move left and\n" +
											   "Press 'D' to move right. Try moving to opposite side of the room."
			break
		}
		case 4: {
			object_to_modify.text_to_display = "Great. For the second part of the movement is the ability to jump.\n" +
											   "Press 'SPACE' to jump. Please note you cannot jump super high."
			break
		}
		case 5: {
			object_to_modify.text_to_display = "Try using both your movement and jumping to reach the chamber exit."
			break
		}
		case 6: {
			object_to_modify.text_to_display = "For this test you must get acquainted with jumping over obstacles."
			break
		}
		case 7: {
			object_to_modify.text_to_display = "These obstacles can include bottomless pits, spikes, or toxic goo.\n" +
											   "For instance, this test uses a pit with a bottom as a hazard." 
			break
		}
		case 8: {
			object_to_modify.text_to_display = "If you happen to fall into the pit. A complimentary Lift will\n" + 
											   "retrieve you and bring you back to the top of the pit."
		    break
		}
		case 9: {
			object_to_modify.text_to_display = "Excellent Job. Now it is time to introduce Physic Cubes. Each cube\n" +
											   "has unique porperties."
			break
		}
		case 10: {
			object_to_modify.text_to_display = "For instance the Weighted Cube seen to the right is quite heavy and\n" +
											   "cannot be picked up by your hands. However, they can be pushed by\n" + 
											   "your body."
			break
		}
		case 11: {
			object_to_modify.text_to_display = "If you ever manage to get stuck. You can Press 'C' to restart the \n" + 
											   "current active part of the chamber, or 'R' to restart room."
			break
		}
		case 12: {
			object_to_modify.text_to_display = "Welcome to chamber 2, in this chamber we will be testing your ability\n" + 
											   "To interact with buttons."
			break
		}
		case 13: {
			object_to_modify.text_to_display = "Press 'E' when near a button to activate it. Try use this button to\n" + 
											   "see what it does."
			break
		}
		case 14: {
			object_to_modify.text_to_display = "Did you notice that the blue Wire changed to Orange. These Wires are\n" + 
											   "called Act Wires, they show what action the button does."
			break
		}
		case 15: {
			object_to_modify.text_to_display = "This button here is connected to a Cube Vent. These vents deliver\n" + 
											   "cubes to test chambers. If you ever get a cube stuck. You can press\n" +
											   "again to respawn the cube."
			break
		}
		case 16: {
			object_to_modify.text_to_display = "Excellent Work so far android. It is now time for you to get the\n" + 
										       "Gravity Manipulator Gun! Also known as the GMG."
			break
		}
		case 17: {
			object_to_modify.text_to_display = "With it you can pick up physics object, such as the Weighted Cube. Go\n" +
											   "and collect the gun from the Photonic Suspension Pedestal. Also don't\n" +
											   "worry about the fall."
			break
		}
		case 18: {
			object_to_modify.text_to_display = "To Grab an object 'LEFT CLICK;' the object with the mouse. To Drop it\n" + 
											   "RIGHT CLICK the mouse. Please note that the GMG has a limited range.\n" + 
											   "Make sure your at least a half of a floor tile way."
			break
		}
		case 19: {
			object_to_modify.text_to_display = "This chamber will test you ability to combine advance movement with\n" + 
											   "the GMG. Please Note this chamber does have on hazard that can kill \n" + 
											   "you."
			break
		}
		case 20: {
			object_to_modify.text_to_display = "The Purple Goo in the bottom of the Pit will instantly dissolve any\n" +
											   "object that touches it. Please avoid it at all cost, but don't worry\n" + 
											   "your hard drive is constantly backed up after every test."
			break
		}
		case 21: {
			object_to_modify.text_to_display = "This test also includes a Physic Object Fizzler. This fizzler will\n" +
											   "destroy any object that touches it. Try using one of the Pedestal\n" +
											   "Buttons to deactivate the fizzler."
			break
		}
		case 22: {
			object_to_modify.text_to_display = "You may have noticed the button on the floor. This Physics Floor \n" + 
											   "Button will only activate if something heavy is on it."
			break
		}
		case 23: {
			object_to_modify.text_to_display = "For this part of the chamber use the Weighted Cube to activate the\n " + 
											   "lift to the right of the chamber."
			
			break
		}
		case 24: {
			object_to_modify.text_to_display = "Now it is time to introduce a new testing element. The Stasis Cube,\n"+
										       "these cubes will freeze in place when you Press 'C' while holding\n " + 
											   "them."
			break
		}
		case 25: {
			object_to_modify.text_to_display = "You can use these cubes to navigate this test chamber. Please note\n" +
											   "This test can take a long time to complete, please note the time it\n" + 
											   "takes you to complete this test is unlimited."
			break
		}
		case 26: {
			object_to_modify.text_to_display = "Excellent work. Since the previous part took so long to complete\n" + 
											   "this next part is quite simple. We will introduce the Gear Lift.\n" + 
											   "This lift will only move when powered and stop when not."
			break
		}
		case 27: {
			object_to_modify.text_to_display = "Be mindful this part contains a new hazard the Laser Field.\n" + 
											   "This densely packed laser grid will instantly slice through the\n" + 
											   "unique metal we used for your body. The field however will not\n" + 
											   "destroy most cubes."
			break
		}
		case 28: {
			object_to_modify.text_to_display = "Great work Physics Android 4323, for make your way to the final\n" + 
											   "test chamber. For this test we will review all that you learned\n" + 
											   "from the previous chambers."
			break
		}
		case 29: {
			object_to_modify.text_to_display = "However, we will only introduce only one major test Element the\n" + 
										       "Physics Barrier. This barrier blocks any physics object from \n" + 
											   "passing throw it. Be prepared for this test to get more difficult\n" + 
											   "as you progress."
			break
		}
		case 30: {
			object_to_modify.text_to_display = "Remember if you ever get stuck Press 'C' to go back to the previous\n" + 
											   "checkpoint."
			break
		}
		case 31: {
			object_to_modify.text_to_display = "Congratulation Physics Android 4323, for completing the Physics\n" + 
											   "Laboratories Gravity Manipulator Training Course."
			break
		}
		case 32: {
			object_to_modify.text_to_display = "Unfortunately you are no longer needed and will be recycled for\n" + 
											   "parts. But don't worry the recorded observations will be used to\n" + 
											   "teach future iterations of you Operating System."
			break
		}
		case 33: {
			object_to_modify.text_to_display = "We are sorry for not mentioning this earlier, but we wouldn't\n" + 
											   "get good testing results."
			break
		}
		case 34: {
			object_to_modify.text_to_display = "Goodbye Physics Android 4323, and Thank you for completing this\n" + 
											   "Training Course."
			break
		}
		case 35: {
			object_to_modify.text_to_display = "We have taken the liberty of disabling your movement systems to\n" +
											   "prevent unwanted damage to your system. Goodbye."
			object_to_modify.hideable = true								  
			break
		}
		default: {
			object_to_modify.speaker = "Error"
			object_to_modify.text_to_display = "[Redacted]"
			object_to_modify.manager = manager_object
			object_to_modify.text_speed = text_speed	
		}
	}
}
/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 030C2256
/// @DnDArgument : "code" "if(instance_exists(obj_player) or instance_exists(obj_wcube) or instance_exists(obj_stasisCube)){$(13_10)	if(instance_place(self.x, self.y-5, obj_player) or instance_place(self.x, self.y-5, obj_wcube) or instance_place(self.x, self.y-5, obj_stasisCube)){$(13_10)		if(object_to_trigger != noone) {$(13_10)			image_index = 1$(13_10)			object_to_trigger.activate = true$(13_10)		}$(13_10)	} else {$(13_10)		if(object_to_trigger != noone) {$(13_10)			image_index = 0$(13_10)			object_to_trigger.activate = false$(13_10)		}$(13_10)	}$(13_10)}"
if(instance_exists(obj_player) or instance_exists(obj_wcube) or instance_exists(obj_stasisCube)){
	if(instance_place(self.x, self.y-5, obj_player) or instance_place(self.x, self.y-5, obj_wcube) or instance_place(self.x, self.y-5, obj_stasisCube)){
		if(object_to_trigger != noone) {
			image_index = 1
			object_to_trigger.activate = true
		}
	} else {
		if(object_to_trigger != noone) {
			image_index = 0
			object_to_trigger.activate = false
		}
	}
}
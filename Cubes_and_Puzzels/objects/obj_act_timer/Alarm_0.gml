/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6A21CE26
/// @DnDArgument : "expr" "time - 1"
/// @DnDArgument : "var" "time"
time = time - 1;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3F9D0EB5
/// @DnDArgument : "code" "$(13_10)$(13_10)$(13_10)avg_time = time / perma_time //new time / constant time$(13_10)if(avg_time <= 0.125) { // 0/8 of the time is left$(13_10)	if (time == 0 ){$(13_10)		self.time = perma_time$(13_10)		self.activate = false$(13_10)		output_object.activate = false$(13_10)		wait = false$(13_10)	} else {$(13_10)		self.image_index = 9$(13_10)		wait = false$(13_10)	}$(13_10)} else if (avg_time > 0.125 and avg_time <= 0.25) {// 1/8 of the time is left$(13_10)	self.image_index = 8$(13_10)	wait = false$(13_10)} else if (avg_time > 0.25 and avg_time <= 0.375) {// 2/8 of the time is left$(13_10)	self.image_index = 7$(13_10)	wait = false$(13_10)} else if (avg_time > 0.375 and avg_time <= 0.5) {// 3/8 of the time is left$(13_10)	self.image_index = 6$(13_10)	wait = false$(13_10)} else if (avg_time > 0.5 and avg_time <= 0.625) {// 4/8 of the time is left$(13_10)	self.image_index = 5$(13_10)	wait = false$(13_10)} else if (avg_time > 0.625 and avg_time <= 0.75) {// 5/8 of the time is left$(13_10)	self.image_index = 4$(13_10)	wait = false$(13_10)} else if (avg_time > 0.75 and avg_time <= 0.875) {// 6/8 of the time is left$(13_10)	self.image_index = 3$(13_10)	wait = false$(13_10)} else if (avg_time > 0.875 and avg_time <= 1) {// 7/8 of the time is left$(13_10)	self.image_index = 2$(13_10)	wait = false$(13_10)} else { // 8/8 or more time is left$(13_10)	self.image_index = 2$(13_10)	wait = false$(13_10)}"



avg_time = time / perma_time //new time / constant time
if(avg_time <= 0.125) { // 0/8 of the time is left
	if (time == 0 ){
		self.time = perma_time
		self.activate = false
		output_object.activate = false
		wait = false
	} else {
		self.image_index = 9
		wait = false
	}
} else if (avg_time > 0.125 and avg_time <= 0.25) {// 1/8 of the time is left
	self.image_index = 8
	wait = false
} else if (avg_time > 0.25 and avg_time <= 0.375) {// 2/8 of the time is left
	self.image_index = 7
	wait = false
} else if (avg_time > 0.375 and avg_time <= 0.5) {// 3/8 of the time is left
	self.image_index = 6
	wait = false
} else if (avg_time > 0.5 and avg_time <= 0.625) {// 4/8 of the time is left
	self.image_index = 5
	wait = false
} else if (avg_time > 0.625 and avg_time <= 0.75) {// 5/8 of the time is left
	self.image_index = 4
	wait = false
} else if (avg_time > 0.75 and avg_time <= 0.875) {// 6/8 of the time is left
	self.image_index = 3
	wait = false
} else if (avg_time > 0.875 and avg_time <= 1) {// 7/8 of the time is left
	self.image_index = 2
	wait = false
} else { // 8/8 or more time is left
	self.image_index = 2
	wait = false
}
/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 407B6635
/// @DnDArgument : "direction" "random(360)"
direction = random(360);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0142D746
/// @DnDArgument : "expr" "direction + 90"
/// @DnDArgument : "var" "image_angle"
image_angle = direction + 90;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4A999C1A
/// @DnDArgument : "steps" "5 * room_speed"
alarm_set(0, 5 * room_speed);
/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 0B1D53D0
/// @DnDArgument : "direction" "random(360)"
direction = random(360);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7110EF2B
/// @DnDArgument : "expr" "random(5)"
/// @DnDArgument : "var" "wind_speed"
wind_speed = random(5);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 70161447
/// @DnDArgument : "expr" "direction + 90"
/// @DnDArgument : "var" "image_angle"
image_angle = direction + 90;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0A2E9868
/// @DnDArgument : "steps" "5 * room_speed"
alarm_set(0, 5 * room_speed);
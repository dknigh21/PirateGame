/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 06FD8F82
/// @DnDArgument : "direction" "image_angle - 90"
direction = image_angle - 90;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7000BF5D
/// @DnDArgument : "code" "speed_calculated = clamp(sails + (abs(angle_difference(direction, obj_wind.direction)) / 100), min_speed, max_speed);$(13_10)$(13_10)if (sails > 0)$(13_10){$(13_10)	min_speed = 0.5;$(13_10)}$(13_10)else$(13_10){$(13_10)	min_speed = 0;$(13_10)}$(13_10)$(13_10)if (position_meeting(x,y,obj_shoreline))$(13_10){$(13_10)	max_speed = 1.5;$(13_10)}$(13_10)else if (position_meeting(x,y,obj_land))$(13_10){$(13_10)	max_speed = 0;$(13_10)}$(13_10)else$(13_10){$(13_10)	max_speed = 3;$(13_10)}$(13_10)$(13_10)"
speed_calculated = clamp(sails + (abs(angle_difference(direction, obj_wind.direction)) / 100), min_speed, max_speed);

if (sails > 0)
{
	min_speed = 0.5;
}
else
{
	min_speed = 0;
}

if (position_meeting(x,y,obj_shoreline))
{
	max_speed = 1.5;
}
else if (position_meeting(x,y,obj_land))
{
	max_speed = 0;
}
else
{
	max_speed = 3;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 06609DC5
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "speed_calculated"
if(!(speed == speed_calculated))
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 5D05B0E1
	/// @DnDParent : 06609DC5
	/// @DnDArgument : "code" "if (speed < (speed_calculated))$(13_10){$(13_10)	speed += momentum;	$(13_10)}$(13_10)else if (speed > (speed_calculated))$(13_10){$(13_10)	speed -= momentum;$(13_10)}"
	if (speed < (speed_calculated))
	{
		speed += momentum;	
	}
	else if (speed > (speed_calculated))
	{
		speed -= momentum;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 23E15C91
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6A25849D
	/// @DnDParent : 23E15C91
	/// @DnDArgument : "speed" "speed_calculated"
	speed = speed_calculated;
}

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 1B77B694
/// @DnDApplyTo : 868bf91b-4d7c-40a9-a6f6-6654de9013c7
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "60"
with(obj_player_controller) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var l1B77B694_0 = __dnd_health <= 60;
}
if(l1B77B694_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25D56343
	/// @DnDApplyTo : 281715f7-eecb-42ca-9be4-459855ba0c2b
	/// @DnDParent : 1B77B694
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "image_index"
	with(obj_player_ship) {
	image_index = 1;
	
	}
}

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 6A4DBAD8
/// @DnDApplyTo : 868bf91b-4d7c-40a9-a6f6-6654de9013c7
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "30"
with(obj_player_controller) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var l6A4DBAD8_0 = __dnd_health < 30;
}
if(l6A4DBAD8_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1EAFBFDE
	/// @DnDApplyTo : 281715f7-eecb-42ca-9be4-459855ba0c2b
	/// @DnDParent : 6A4DBAD8
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "image_index"
	with(obj_player_ship) {
	image_index = 2;
	
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 379B2097
/// @DnDArgument : "var" "speed"
if(speed == 0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1
	/// @DnDHash : 56D89DCC
	/// @DnDApplyTo : 281715f7-eecb-42ca-9be4-459855ba0c2b
	/// @DnDParent : 379B2097
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_land"
	/// @DnDSaveInfo : "object" "dc19d308-69be-40f5-9987-0caf91199373"
	with(obj_player_ship) {
	var l56D89DCC_0 = instance_place(x + 0, y + 0, obj_land);
	}
	if ((l56D89DCC_0 > 0))
	{
	
	}
}
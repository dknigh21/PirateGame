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

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 244A8519
/// @DnDArgument : "msg" "speed"
show_debug_message(string(speed));

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 75CBF4E8
/// @DnDArgument : "msg" "speed_calculated"
show_debug_message(string(speed_calculated));

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
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "60"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 60)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25D56343
	/// @DnDParent : 1B77B694
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "image_index"
	image_index = 1;
}

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 6A4DBAD8
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "30"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health < 30)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1EAFBFDE
	/// @DnDParent : 6A4DBAD8
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "image_index"
	image_index = 2;
}
/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 06FD8F82
/// @DnDDisabled : 1
/// @DnDArgument : "direction" "point_direction(x, y, obj_player_ship.x, obj_player_ship.y)"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 044A62ED
/// @DnDArgument : "expr" "direction + 90"
/// @DnDArgument : "var" "image_angle"
image_angle = direction + 90;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7000BF5D
/// @DnDArgument : "code" "speed_calculated = clamp(sails + (abs(angle_difference(direction, obj_wind.direction)) / 100), min_speed, max_speed);$(13_10)$(13_10)if (sails > 0)$(13_10){$(13_10)	min_speed = 0.5;$(13_10)}$(13_10)else$(13_10){$(13_10)	min_speed = 0;$(13_10)}$(13_10)$(13_10)if (place_meeting(x,y,obj_shoreline))$(13_10){$(13_10)	max_speed = 1.5;$(13_10)}$(13_10)else$(13_10){$(13_10)	max_speed = 3;$(13_10)}$(13_10)$(13_10)if (distance_to_object(obj_player_ship) < 50)$(13_10){$(13_10)	desired_direction = point_direction(x, y, obj_player_ship.x, obj_player_ship.y) - 90;$(13_10)}$(13_10)else$(13_10){$(13_10)	desired_direction = point_direction(x, y, obj_player_ship.x, obj_player_ship.y);$(13_10)}$(13_10)$(13_10)if (direction != desired_direction)$(13_10){$(13_10)	if (speed > 0)$(13_10)	{$(13_10)		direction += 0.75;$(13_10)	}$(13_10)}$(13_10)else$(13_10){$(13_10)	direction = desired_direction;$(13_10)}$(13_10)"
speed_calculated = clamp(sails + (abs(angle_difference(direction, obj_wind.direction)) / 100), min_speed, max_speed);

if (sails > 0)
{
	min_speed = 0.5;
}
else
{
	min_speed = 0;
}

if (place_meeting(x,y,obj_shoreline))
{
	max_speed = 1.5;
}
else
{
	max_speed = 3;
}

if (distance_to_object(obj_player_ship) < 50)
{
	desired_direction = point_direction(x, y, obj_player_ship.x, obj_player_ship.y) - 90;
}
else
{
	desired_direction = point_direction(x, y, obj_player_ship.x, obj_player_ship.y);
}

if (direction != desired_direction)
{
	if (speed > 0)
	{
		direction += 0.75;
	}
}
else
{
	direction = desired_direction;
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
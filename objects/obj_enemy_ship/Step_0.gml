/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 19AE9251
/// @DnDArgument : "code" "if (canRotate)$(13_10){$(13_10)	image_angle = point_direction(x, y, obj_player_ship.x, obj_player_ship.y) + 90;$(13_10)	direction = image_angle - 90;$(13_10)}$(13_10)$(13_10)speed_calculated = clamp(sails + (abs(angle_difference(direction, obj_wind.direction)) / 100), min_speed, max_speed);$(13_10)$(13_10)if (sails > 0)$(13_10){$(13_10)	min_speed = 0.5;$(13_10)}$(13_10)else$(13_10){$(13_10)	min_speed = 0;$(13_10)}$(13_10)$(13_10)if (position_meeting(x,y,obj_shoreline))$(13_10){$(13_10)	max_speed = 0.75;$(13_10)}$(13_10)else if (position_meeting(x,y,obj_land))$(13_10){$(13_10)	max_speed = 0;$(13_10)}$(13_10)else$(13_10){$(13_10)	max_speed = 1.75;$(13_10)}$(13_10)"
if (canRotate)
{
	image_angle = point_direction(x, y, obj_player_ship.x, obj_player_ship.y) + 90;
	direction = image_angle - 90;
}

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
	max_speed = 0.75;
}
else if (position_meeting(x,y,obj_land))
{
	max_speed = 0;
}
else
{
	max_speed = 1.75;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 07DC0268
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "speed_calculated"
if(!(speed == speed_calculated))
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 5E2EE27C
	/// @DnDParent : 07DC0268
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
/// @DnDHash : 3CF7DDFA
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 36D7A8B8
	/// @DnDParent : 3CF7DDFA
	/// @DnDArgument : "speed" "speed_calculated"
	speed = speed_calculated;
}

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 4279DF64
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "50"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 50)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48996265
	/// @DnDParent : 4279DF64
	/// @DnDArgument : "var" "speed"
	speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 27137F78
	/// @DnDParent : 4279DF64
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "canRotate"
	canRotate = false;
}
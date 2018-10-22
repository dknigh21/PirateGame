/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 6DA20E56
/// @DnDArgument : "var" "enemyAlive"
/// @DnDArgument : "object" "obj_enemy_ship"
/// @DnDSaveInfo : "object" "05e2cc29-f018-4555-86c6-332c5df265e3"
enemyAlive = instance_number(obj_enemy_ship);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 03F55828
alarm_set(0, 30);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 655E43F7
/// @DnDArgument : "var" "enemyAlive"
/// @DnDArgument : "op" "3"
if(enemyAlive <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4D55A7EA
	/// @DnDParent : 655E43F7
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "waveNumber"
	waveNumber += 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1671FA55
	/// @DnDParent : 655E43F7
	/// @DnDArgument : "expr" "waveNumber * 4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "enemySpawn"
	enemySpawn += waveNumber * 4;
}

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 3DA4B072
/// @DnDArgument : "cond" "i < enemySpawn"
for(i = 0; i < enemySpawn; i += 1) {
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0037157A
	/// @DnDParent : 3DA4B072
	/// @DnDArgument : "var" "pX"
	/// @DnDArgument : "value" "random(room_width)"
	var pX = random(room_width);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5719AC02
	/// @DnDParent : 3DA4B072
	/// @DnDArgument : "var" "pY"
	/// @DnDArgument : "value" "random(room_height)"
	var pY = random(room_height);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3E72B06B
	/// @DnDParent : 3DA4B072
	/// @DnDArgument : "xpos" "pX"
	/// @DnDArgument : "ypos" "pY"
	/// @DnDArgument : "objectid" "obj_enemy_ship"
	/// @DnDSaveInfo : "objectid" "05e2cc29-f018-4555-86c6-332c5df265e3"
	instance_create_layer(pX, pY, "Instances", obj_enemy_ship);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 18733060
/// @DnDArgument : "var" "enemySpawn"
enemySpawn = 0;
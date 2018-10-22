/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 52BC48AA
/// @DnDArgument : "var" "enemyAlive"
/// @DnDArgument : "object" "obj_enemy_ship"
/// @DnDSaveInfo : "object" "a133e5a2-3b0c-4683-a2b4-9ec72ce975e9"
enemyAlive = instance_number(obj_enemy_ship);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7492077A
/// @DnDInput : 2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "waveNumber"
/// @DnDArgument : "var_1" "enemySpawn"
waveNumber = 1;
enemySpawn = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2F5B351F
alarm_set(0, 30);
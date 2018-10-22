/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09841D55
/// @DnDArgument : "var" "speed"
if(speed == 0)
{
	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3410D791
	/// @DnDParent : 09841D55
	/// @DnDArgument : "objind" "obj_enemy_ship_dead"
	/// @DnDSaveInfo : "objind" "ff32e896-af77-4065-891a-d7bcd9f49447"
	instance_change(obj_enemy_ship_dead, true);
}
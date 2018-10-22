/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2A5B1267
instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 026FE6E1
/// @DnDApplyTo : 868bf91b-4d7c-40a9-a6f6-6654de9013c7
/// @DnDArgument : "not" "1"
/// @DnDArgument : "op" "3"
with(obj_player_controller) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var l026FE6E1_0 = __dnd_health <= 0;
}
if(!l026FE6E1_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 7D3F2B0B
	/// @DnDApplyTo : 868bf91b-4d7c-40a9-a6f6-6654de9013c7
	/// @DnDParent : 026FE6E1
	/// @DnDArgument : "health" "50"
	/// @DnDArgument : "health_relative" "1"
	with(obj_player_controller) {
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(50);
	}
}
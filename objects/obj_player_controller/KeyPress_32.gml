/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 31C7814B
/// @DnDApplyTo : 281715f7-eecb-42ca-9be4-459855ba0c2b
/// @DnDArgument : "health" "-10"
/// @DnDArgument : "health_relative" "1"
with(obj_player_ship) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-10);
}
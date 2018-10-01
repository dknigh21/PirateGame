/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 55C6D62D
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
draw_set_alpha(($FF000000 >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 33E3FDB3
/// @DnDArgument : "x" "5"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "caption" ""Sails: ""
/// @DnDArgument : "var" "obj_player_ship.sails"
draw_text(5, 50, string("Sails: ") + string(obj_player_ship.sails));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 7BB16236
/// @DnDArgument : "x" "5"
/// @DnDArgument : "y" "65"
/// @DnDArgument : "caption" ""Current Speed: ""
/// @DnDArgument : "var" "obj_player_ship.speed"
draw_text(5, 65, string("Current Speed: ") + string(obj_player_ship.speed));

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
/// @DnDVersion : 1
/// @DnDHash : 661A6BAE
/// @DnDApplyTo : 281715f7-eecb-42ca-9be4-459855ba0c2b
/// @DnDArgument : "x1" "5"
/// @DnDArgument : "y1" "5"
/// @DnDArgument : "x2" "100"
/// @DnDArgument : "y2" "10"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF00FF7F"
with(obj_player_ship) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(5, 5, 100, 10, __dnd_health, $FFFFFFFF, $FF0000FF & $FFFFFF, $FF00FF7F & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FF000000>>24) != 0));
}
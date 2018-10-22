/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 55C6D62D
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
draw_set_alpha(($FF000000 >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
/// @DnDVersion : 1
/// @DnDHash : 661A6BAE
/// @DnDArgument : "x1" "15"
/// @DnDArgument : "y1" "5"
/// @DnDArgument : "x2" "115"
/// @DnDArgument : "y2" "20"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF00FF7F"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
draw_healthbar(15, 5, 115, 20, __dnd_health, $FFFFFFFF, $FF0000FF & $FFFFFF, $FF00FF7F & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FF000000>>24) != 0));
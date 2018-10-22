/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 17A7DDC1
/// @DnDArgument : "x" "1650"
/// @DnDArgument : "y" "15"
/// @DnDArgument : "caption" ""Wind Direction""
draw_text(1650, 15, string("Wind Direction") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 42764D61
/// @DnDArgument : "x" "1750"
/// @DnDArgument : "y" "100"
/// @DnDArgument : "xscale" "1.75"
/// @DnDArgument : "yscale" "1.75"
/// @DnDArgument : "rot" "obj_wind.direction + 90"
/// @DnDArgument : "sprite" "spr_wind_arrow"
/// @DnDSaveInfo : "sprite" "d2875770-f953-4bea-8c00-9f58a34670ab"
draw_sprite_ext(spr_wind_arrow, 0, 1750, 100, 1.75, 1.75, obj_wind.direction + 90, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);
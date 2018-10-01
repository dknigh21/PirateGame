/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 4F62BFDC
/// @DnDArgument : "x" "obj_player_ship.x"
/// @DnDArgument : "y" "obj_player_ship.y"
x = obj_player_ship.x;
y = obj_player_ship.y;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2DFCBFDD
/// @DnDArgument : "expr" "obj_player_ship.image_angle"
/// @DnDArgument : "var" "image_angle"
image_angle = obj_player_ship.image_angle;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 7D77CE16
/// @DnDArgument : "yscale" "obj_player_ship.sails + 0.1"
image_xscale = 1;
image_yscale = obj_player_ship.sails + 0.1;
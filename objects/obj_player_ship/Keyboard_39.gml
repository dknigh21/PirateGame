/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 071EC55B
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "op" "2"
if(speed > 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 3A62AAA3
	/// @DnDParent : 071EC55B
	/// @DnDArgument : "angle" "-0.75"
	/// @DnDArgument : "angle_relative" "1"
	image_angle += -0.75;
}
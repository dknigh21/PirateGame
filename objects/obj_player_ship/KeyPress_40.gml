/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 50E09BF6
/// @DnDArgument : "var" "sails"
/// @DnDArgument : "op" "2"
if(sails > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6DEDA97B
	/// @DnDParent : 50E09BF6
	/// @DnDArgument : "expr" "-0.25"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "sails"
	sails += -0.25;
}
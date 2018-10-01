/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2FD2B2DA
/// @DnDArgument : "var" "sails"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(sails < 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2BD2881E
	/// @DnDParent : 2FD2B2DA
	/// @DnDArgument : "expr" "0.25"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "sails"
	sails += 0.25;
}
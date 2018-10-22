/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6076A180
/// @DnDArgument : "code" "if (alarm[0] == -1)$(13_10){$(13_10)	if (image_alpha > 0)$(13_10)	{$(13_10)		image_alpha -= 0.005;$(13_10)	}$(13_10)	else if (image_alpha <= 0)$(13_10)	{$(13_10)		instance_destroy();$(13_10)	}$(13_10)}"
if (alarm[0] == -1)
{
	if (image_alpha > 0)
	{
		image_alpha -= 0.005;
	}
	else if (image_alpha <= 0)
	{
		instance_destroy();
	}
}
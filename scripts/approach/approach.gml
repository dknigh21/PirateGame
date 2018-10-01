/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 027F97F2
/// @DnDArgument : "code" "//approach(start, end, shift);$(13_10)$(13_10)if(argument0 < argument1){$(13_10)    return min(argument0 + argument2, argument1); $(13_10)}else{$(13_10)    return max(argument0 - argument2, argument1);$(13_10)}$(13_10)"
//approach(start, end, shift);

if(argument0 < argument1){
    return min(argument0 + argument2, argument1); 
}else{
    return max(argument0 - argument2, argument1);
}
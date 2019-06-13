/// EaseInOutBounce(time,start,end,duration)
if (argument0 < argument3*0.5) 
{
    return (EaseInBounce(argument0*2, 0, (argument2-argument1), argument3)*0.5 + argument1);
}

return (EaseOutBounce(argument0*2 - argument3, 0, (argument2-argument1), argument3)*0.5 + (argument2-argument1)*0.5 + argument1);


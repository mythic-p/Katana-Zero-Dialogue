/// EaseInCirc(time,start,end,duration)
// This is a really radical curve... haha hidden programmer joke.
argument0 /= argument3;
return (argument2-argument1) * (1 - sqrt(1 - argument0 * argument0)) + argument1;


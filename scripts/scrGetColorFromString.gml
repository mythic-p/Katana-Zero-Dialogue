/// scrGetColorFromString(str)
var _str = argument0;
switch _str
{
    case 'white': return c_white;
    case 'red': return c_red;
    case 'aqua': return c_aqua;
    case 'black': return c_black;
    case 'blue': return c_blue;
    case 'green': return c_green;
    case 'yellow': return c_yellow;
    case 'ltyellow': return make_color_rgb(255,235,205);
    case 'gray': return c_gray;
    case 'dkgray': return c_dkgray;
    case 'ltgray': return c_ltgray;
    case 'rainbow': return 99999;
    default: show_error('Unknown color name!', 1); return -1;
}

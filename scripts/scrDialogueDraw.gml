/// scrDialogueDraw()
// the main function of dialogue drawing
// will not start drawing until speaker != noone
if speaker == noone return -1;
draw_set_alpha(1)
draw_set_color(c_black);
// draw the triangle first
draw_triangle(triSideX[0], triSideY[0], triSideX[1], triSideY[1], triSideX[2], triSideY[2], 0);
// draw the roundrect
draw_roundrect(rectPos[0], rectPos[1], triSideX[0] + rectSize[0] / 2, triSideY[1], 0);
// reset
draw_set_color(c_white);

///used in enemy move states
var dir = point_direction(x, y, targetx, targety);
var hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir);

//has enemy face left or right when moving.
//change later to use sprites
image_xscale = sign(hspd); 

phy_position_x += hspd;
phy_position_y += vspd;

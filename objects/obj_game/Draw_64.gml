

////time counter display
draw_rectangle_color(1, 1, 981, 84, c_black,c_black,c_black,c_black,false);
draw_text_transformed(16, 1, string("Time Until Next Round: ") + string(floor(time/room_speed)), 4, 4, 0);


////healthchip text
draw_rectangle_color(3370, 1, 3840, 84, c_black,c_black,c_black,c_black,false);
draw_text_transformed(3380, 1, string("Health Chips"), 4, 4, 0);


////extra life text and sprite
draw_rectangle_color(1780, 118, 1940, 268, c_black,c_black,c_black,c_black,false);
draw_sprite(spr_extra_life, 0, 1600, 1);
draw_text_transformed(1800, 128,  string("x") + string(robolives), 6, 6, 0);


////surf chip drawing
draw_rectangle_color(2220, 0, 2800, 84, c_black,c_black,c_black,c_black,false);
draw_text_transformed(2240, 1, string("Surf Chip Ready"), 4, 4, 0);
if obj_roboGhost.sword_surf_ready draw_sprite(spr_surf_chip, -1, 2800, 1);



////number of chips you have
draw_rectangle_color(2220, 170, 2560, 270, c_black,c_black,c_black,c_black,false);
draw_text_transformed(2240, 160, string("Chips x") + string(chips), 4, 4, 0);
draw_sprite(spr_chip, -1, 2100, 180);


//draw health chips
var xStart = 256;
var yStart = 0;
var xoffset = 3840;

for (var i=0; i<MaxHp; i++)
{
	draw_sprite(spr_health_chipdead, 0, (xStart*i)+xoffset, yStart)
}


for (var i=0; i<hp; i++)
{
	draw_sprite(spr_health_chip, 0, (xStart*i)+xoffset, yStart)
}

draw_rectangle_color(54, 160, 380, 220, c_black,c_black,c_black,c_black,false);
draw_text_transformed(64, 150, string("Kills: ") + string(kills), 4, 4, 0);
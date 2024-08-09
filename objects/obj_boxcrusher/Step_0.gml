if (y == ystart && obj_player1.boxxed == 0 && obj_player1.state != states.boxxedpep && obj_player1.state != states.boxxedpepspin && obj_player1.state != states.boxxedpepjump && (obj_player1.x > (x - 50) && obj_player1.x < (x + 50)) && (obj_player1.y > y && obj_player1.y < (y + 200)))
{
	vsp = 10;
	sprite_index = spr_boxcrusher_fall;
}
if sprite_index == spr_boxcrusher_fall && grounded
{
	GamepadSetVibration(0, 1, 1, 0.65);
	fmod_event_one_shot_3d("event:/sfx/pep/groundpound", x, y);
	with obj_camera
	{
		shake_mag = 10;
		shake_mag_acc = 30 / room_speed;
	}
	vsp = 0;
	image_index = 0;
	sprite_index = spr_boxcrusher_land;
}
if (sprite_index == spr_boxcrusher_land && floor(image_index) == image_number - 1)
{
	sprite_index = spr_boxcrusher_idle;
	gobackup = true;
}
if gobackup == 1
	y = Approach(y, ystart, 2);
if y == ystart
	gobackup = false;
scr_collide();

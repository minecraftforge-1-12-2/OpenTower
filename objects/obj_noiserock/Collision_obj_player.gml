if falling == 1 && vsp > 0
{
	hit = true;
	instance_create(x, y, obj_stompeffect);
	obj_player1.image_index = 0;
	obj_player1.state = states.stunned;
	obj_player1.sprite_index = spr_player_stunned;
	vsp = -5;
	falling = false;
	with obj_camera
	{
		shake_mag = 10;
		shake_mag_acc = 30 / room_speed;
	}
}

/// @description steam is handled here.
fmod_set_listener_attributes(0, (camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2)), (camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2)))
fmod_studio_system_update(); 
steam_update();
if !global.steam_api
{
	if steam_initialised()
	{
		if steam_stats_ready()
			global.steam_api = true;
	}
}
else if room != Loadiingroom
{
	if steam_is_screenshot_requested()
	{
		var date = date_current_datetime();
		var name = concat("PizzaTower_", global.screenshotcount++, date_get_second(date), date_get_minute(date), date_get_month(date), date_get_year(date), ".png");
		name = concat("screenshots/", name);
		//trace("Screenshot saved ", name);
		screen_save(name);
		steam_send_screenshot(name, window_get_width(), window_get_height());
	}
}
for(var i = 0;i < array_length(global.instances); i++)
{
	var inst = global.instances[i]
	if (!fmod_studio_event_instance_is_valid(inst) || !fmod_event_instance_is_playing(inst))
		array_delete(global.instances, i, 1)
}

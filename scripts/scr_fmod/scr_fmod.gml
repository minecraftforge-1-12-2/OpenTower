#macro fmod_set_parameter fmod_studio_system_set_parameter_by_name
#macro fmod_get_parameter fmod_studio_system_get_parameter_by_name
#macro fmod_event_instance_set_parameter fmod_studio_event_instance_set_parameter_by_name
#macro fmod_event_instance_get_parameter fmod_studio_event_instance_get_parameter_by_name
#macro fmod_event_instance_get_paused fmod_studio_event_instance_get_paused
#macro fmod_event_instance_release fmod_studio_event_instance_release
#macro fmod_event_instance_get_timeline_pos fmod_studio_event_instance_get_timeline_position
#macro fmod_event_instance_set_timeline_pos fmod_studio_event_instance_set_timeline_position
function fmod_set_listener_attributes(listener, dx, dy)
{
	var attributes = {
		position: {x: 0, y: 0, z: 0},
		velocity: {x: 0, y: 0, z: 0},
		forward: {x:0,y:0,z:1.0},
		up: {x:0,y:1.0,z:0},
	}
	attributes.position.x = dx
	attributes.position.y = dy
	fmod_studio_system_set_listener_attributes(listener, attributes);
}
function fmod_event_create_instance(event)
{
	var eventdesc = fmod_studio_system_get_event(event)
	var instance = fmod_studio_event_description_create_instance(eventdesc)
	return instance
}
function fmod_event_instance_play(instance)
{
	array_push(global.instances, instance)
	fmod_studio_event_instance_start(instance);
}
function fmod_event_instance_stop(instance, mode)
{
	fmod_studio_event_instance_stop(instance, mode)
}
function fmod_event_instance_set_3d_attributes(instance, dx = x, dy = y)
{
	var attributes = {
		position: {x: 0, y: 0, z: 0},
		velocity: {x: 0, y: 0, z: 0},
		forward: {x:0,y:0,z:1.0},
		up: {x:0,y:1.0,z:0},
	}
	attributes.position.x = dx
	attributes.position.y = dy
	fmod_studio_event_instance_set_3d_attributes(instance, attributes)
}
function fmod_event_one_shot(event)
{
	var eventdesc = fmod_studio_system_get_event(event)
	var instance = fmod_studio_event_description_create_instance(eventdesc)
	fmod_studio_event_instance_start(instance)
	array_push(global.instances, instance)
	fmod_studio_event_instance_release(instance)
}
function fmod_event_one_shot_3d(event, dx = x, dy = y)
{
	trace(event)
	var eventdesc = fmod_studio_system_get_event(event)
	var instance = fmod_studio_event_description_create_instance(eventdesc)
	var attributes = {
		position: {x: 0, y: 0, z: 0},
		velocity: {x: 0, y: 0, z: 0},
		forward: {x:0,y:0,z:1.0},
		up: {x:0,y:1.0,z:0},
	}
	attributes.position.x = dx
	attributes.position.y = dy
	fmod_studio_event_instance_set_3d_attributes(instance, attributes)
	fmod_studio_event_instance_start(instance)
	array_push(global.instances, instance)
	fmod_studio_event_instance_release(instance)
}
function fmod_event_instance_set_paused_all(pause)
{
	if pause
	{
		pausedinst = []
		for (var i = 0; i < array_length(global.instances); i++) {
	        var instance = global.instances[i]
			array_push(pausedinst, instance)
	        fmod_studio_event_instance_set_paused(instance, pause);
		}
	}
	else
	{
		for (var i = 0; i < array_length(pausedinst); i++) {
	        var instance = pausedinst[i]
	        fmod_studio_event_instance_set_paused(instance, pause);
		}
		array_pop(pausedinst)
	}
}
function fmod_event_get_length(event)
{
	var eventdesc = fmod_studio_system_get_event(event)
	return fmod_studio_event_description_get_length(eventdesc)
}
function fmod_event_instance_set_paused(event, pause)
{
	fmod_studio_event_instance_set_paused(event, pause)
}
function fmod_event_instance_is_playing(event)
{
	return fmod_studio_event_instance_get_playback_state(event) != FMOD_STUDIO_PLAYBACK_STATE.STOPPED && fmod_studio_event_instance_get_playback_state(event) != FMOD_STUDIO_PLAYBACK_STATE.STOPPING
}
#region instance manipulation

function fmod_event_create_instance(event)
{
	var eventdesc = fmod_studio_system_get_event(event)
	var instance = fmod_studio_event_description_create_instance(eventdesc)
	return instance
}

function fmod_event_instance_play(inst)
{
	array_push(global.instances, inst)
	fmod_studio_event_instance_start(inst);
}

function fmod_event_instance_stop(inst, mode)
{
	fmod_studio_event_instance_stop(inst, mode)
}

function fmod_event_instance_release(inst)
{
	fmod_studio_event_instance_release(inst)
}

#endregion

#region one shots

function fmod_event_one_shot(event)
{
	var inst = fmod_event_create_instance(event)
	fmod_studio_event_instance_start(inst)
	array_push(global.instances, inst)
	fmod_event_instance_release(inst)
}

function fmod_event_one_shot_3d(event, dx = x, dy = y)
{
	var inst = fmod_event_create_instance(event)
	fmod_event_instance_set_3d_attributes(inst, dx, dy)
	fmod_studio_event_instance_start(inst)
	array_push(global.instances, inst)
	fmod_event_instance_release(inst)
}

#endregion

#region getters

function fmod_event_instance_is_playing(inst)
{
	return fmod_studio_event_instance_get_playback_state(inst) != FMOD_STUDIO_PLAYBACK_STATE.STOPPED && fmod_studio_event_instance_get_playback_state(inst) != FMOD_STUDIO_PLAYBACK_STATE.STOPPING
}

function fmod_event_get_length(event)
{
	var eventdesc = fmod_studio_system_get_event(event)
	return fmod_studio_event_description_get_length(eventdesc)
}

function fmod_event_instance_get_parameter(inst, name)
{
	return fmod_studio_event_instance_get_parameter_by_name(inst, name)
}

function fmod_event_instance_get_paused(inst) 
{
	return fmod_studio_event_instance_get_paused(inst)
}

function fmod_get_parameter(name)
{
	return fmod_studio_system_get_parameter_by_name(name)
}

function fmod_event_instance_get_timeline_pos(inst) 
{
	return fmod_studio_event_instance_get_timeline_position(inst)
}

#endregion

#region setters

//listener attributes
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

//instance attributes
function fmod_event_instance_set_3d_attributes(inst, dx = x, dy = y)
{
	var attributes = {
		position: {x: 0, y: 0, z: 0},
		velocity: {x: 0, y: 0, z: 0},
		forward: {x:0,y:0,z:1.0},
		up: {x:0,y:1.0,z:0},
	}
	attributes.position.x = dx
	attributes.position.y = dy
	fmod_studio_event_instance_set_3d_attributes(inst, attributes)
}

//pause all instances from an array
function fmod_event_instance_set_paused_all(pause)
{
	if pause
	{
		pausedinst = []
		for (var i = 0; i < array_length(global.instances); i++) {
	        var inst = global.instances[i]
			array_push(pausedinst, inst)
	        fmod_event_instance_set_paused(inst, pause);
		}
	}
	else
	{
		for (var i = 0; i < array_length(pausedinst); i++) {
	        var inst = pausedinst[i]
	        fmod_event_instance_set_paused(inst, pause);
		}
		array_pop(pausedinst)
	}
}

function fmod_event_instance_set_timeline_pos(inst)
{
	fmod_studio_event_instance_set_timeline_position(inst)
}

function fmod_event_instance_set_paused(inst, pause)
{
	fmod_studio_event_instance_set_paused(inst, pause)
}

function fmod_set_parameter(name, value, ignore_seek_speed)
{
	fmod_studio_system_set_parameter_by_name(name, value, ignore_seek_speed);
}
	
function fmod_event_instance_set_parameter(inst, name, value, ignore_seek_speed)
{
	fmod_studio_event_instance_set_parameter_by_name(inst, name, value, ignore_seek_speed);
}

#endregion
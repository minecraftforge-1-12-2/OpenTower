#macro fmod_set_parameter fmod_studio_system_set_parameter_by_name
#macro fmod_event_instance_set_parameter fmod_studio_event_instance_set_parameter_by_name
#macro fmod_event_instance_is_playing fmod_studio_event_instance_is_valid
#macro fmod_event_instance_stop fmod_studio_event_instance_stop
#macro fmod_event_instance_get_parameter fmod_studio_event_instance_get_parameter_by_name
#macro fmod_event_instance_get_paused fmod_studio_event_instance_get_paused
#macro fmod_event_instance_release fmod_studio_event_instance_release
#macro fmod_event_instance_get_timeline_pos fmod_studio_event_instance_get_timeline_position
#macro fmod_event_instance_set_timeline_pos fmod_studio_event_instance_set_timeline_position
function fmod_event_create_instance(event)
{
	var eventdesc = fmod_studio_system_get_event(event)
	var instance = fmod_studio_event_description_create_instance(eventdesc)
	return instance
}
function fmod_event_instance_play(instance)
{
	fmod_studio_event_instance_start(instance)
}
function fmod_event_instance_set_3d_attributes(event, dx, dy)
{
	var Struct_3D_ATTRIBUTES = {
		position: {x: dx,y: dy, z: 0},
		velocity: {x:0,y:0,z:0},
		forward: {x:0,y:0,z:0},
		up: {x:0,y:0,z:0},
	}
	fmod_studio_event_instance_set_3d_attributes(event, Struct_3D_ATTRIBUTES)
}
function fmod_event_one_shot(event)
{
	var eventdesc = fmod_studio_system_get_event(event)
	var instance = fmod_studio_event_description_create_instance(eventdesc)
	fmod_studio_event_instance_start(instance)
	fmod_studio_event_instance_release(instance)
}
function fmod_event_one_shot_3d(event, dx, dy)
{
	var eventdesc = fmod_studio_system_get_event(event)
	var instance = fmod_studio_event_description_create_instance(eventdesc)
	var Struct_3D_ATTRIBUTES = {
		position: {x: dx,y: dy, z: 0},
		velocity: {x:0,y:0,z:0},
		forward: {x:0,y:0,z:0},
		up: {x:0,y:0,z:0},
	}
	fmod_studio_event_instance_set_3d_attributes(instance, Struct_3D_ATTRIBUTES)
	fmod_studio_event_instance_start(instance)
	fmod_studio_event_instance_release(instance)
}
function fmod_event_instance_set_paused_all(pause)
{
	fmod_studio_bus_set_paused(0, pause)
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
	return fmod_studio_event_instance_get_playback_state(event) == FMOD_STUDIO_PLAYBACK_STATE.PLAYING
}
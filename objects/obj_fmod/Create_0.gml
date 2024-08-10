/// @description load banks / define sounds.
var _max_channels = 256;
var _flags_core = FMOD_INIT.NORMAL;
var _flags_studio = FMOD_STUDIO_INIT.LIVEUPDATE;

#macro USE_FMOD_STUDIO true
velocity = {x:0,y:0,z:0}
forward = {x:0,y:0,z:0}
up = {x:0,y:0,z:0}
if (USE_FMOD_STUDIO) {
	fmod_studio_system_create();	
	show_debug_message("fmod_studio_system_create: " + string(fmod_last_result()));
	
	fmod_studio_system_init(_max_channels, _flags_studio, _flags_core);
	show_debug_message("fmod_studio_system_init: " + string(fmod_last_result()));

	fmod_main_system = fmod_studio_system_get_core_system();
}

var plat = "Desktop";
var path = concat(working_directory, "sound/", plat);
master_bank_index = fmod_studio_system_load_bank_file(concat(path, "/Master.bank"),FMOD_STUDIO_LOAD_BANK.NORMAL);
show_debug_message("master: " + string(fmod_last_result()));
master_strings_bank_index = fmod_studio_system_load_bank_file(concat(path, "/Master.strings.bank"),FMOD_STUDIO_LOAD_BANK.NORMAL);
show_debug_message("masterstrings: " + string(fmod_last_result()));
music_bank_index = fmod_studio_system_load_bank_file(concat(path, "/music.bank"),FMOD_STUDIO_LOAD_BANK.NORMAL);
show_debug_message("music: " + string(fmod_last_result()));
sfx_bank_index = fmod_studio_system_load_bank_file(concat(path, "/sfx.bank"),FMOD_STUDIO_LOAD_BANK.NORMAL);
show_debug_message("sfx: " + string(fmod_last_result()));

global.sound_map = ds_map_create();
global.steam_api = false;
global.screenshotcount = 0;

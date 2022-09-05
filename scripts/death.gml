// called when the character gets KO'd
holding_wt = false;

if get_player_color(player) == 16 {
	sound_play(sound_get("geese_death"), false, noone, 1);
	}
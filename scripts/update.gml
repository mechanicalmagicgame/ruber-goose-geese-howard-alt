//update

timer++;

//munophone
user_event(14);

//char height
var start_char_height = 48;
if state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND {
    char_height = start_char_height;
    height_timer = 0;
} else if state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND {
    switch attack {
        case AT_USPECIAL:
        var end_char_height = 80;
        if window > 1 && window != 4 {
        	height_timer++;
            char_height = clamp(ease_quadOut(start_char_height, end_char_height, clamp(height_timer, 0, 4), 4), start_char_height, end_char_height);
        } else if window > 1 {
        	height_timer = 0;
            char_height = clamp(ease_quadIn(end_char_height, start_char_height, clamp(window_timer, 0, 10), 10), start_char_height, end_char_height);
        }
        break;
    }
}

if wt_destroyed_timer > 0 {
	wt_destroyed_timer--;
	if move_cooldown[AT_DSPECIAL] < 2 move_cooldown[AT_DSPECIAL] = 2;
}

//codec stuff
if ("trummel_id" in self) {
	with trummel_id {
		if codec_handler.page == 1 || codec_handler.page == 5 {
			if codec_handler.state == 2 && codec_handler.state_timer == 8 {
				with other {
					sound_play(sound_get("honk_01"), false, 0);
				}
			}
		}
	}
}

switch get_player_color(player) {
	case 8: honk_sfx = sound_get("falco_0" + string(random_func_2(player, 6, true)+1)) break; //hands of my cawk
	
	case 9: //SNAAAAAAAKE
	switch random_func_2(player, 2, true) { 
		case 0: honk_sfx = sound_get("snake_there"); break;
		case 1: honk_sfx = sound_get("snake_now"); break;
	}
	break;
	
	case 10: honk_sfx = sound_get("squack" + string(random_func_2(player, 3, true)+1)) break; //bird up
	case 11: honk_sfx = sound_get("sans_speak") break; //sans
	case 14: honk_sfx = sound_get("honk2_0" + string(random_func_2(player, 5, true)+1)) break; //player 2
	case 16: honk_sfx = sound_get("geese_0" + string(random_func_2(player, 3, true)+1)) break; //geese howard

	default: honk_sfx = sound_get("honk_0" + string(random_func_2(player, 5, true)+1)) break;
}

if !(state == PS_ATTACK_GROUND && attack == AT_TAUNT) {
	sound_stop(sound_get("sans_earrape"));
}

/*
if (state == PS_ATTACK_GROUND) && (attack == AT_UTILT) && ((window == 1 && window_timer >= 4) || window == 2 || (window == 3 && window_timer <= 2)) {
    if (char_height < 76) {
        char_height += 8;
    }
} else {
    if (char_height > 48) {
        char_height -= 8;
    }
}
*/

//print_debug(get_state_name(state))
//print_debug(sprite_get_name(sprite_index));

//print_debug(string(sprite_index == sprite_get("idle")))

//RAINBOWS
if !("hue" in self) hue = 0
if get_player_color(player) = 13 {
	hue+=.5 
	if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb1=make_color_rgb(255, 128, 0);
	color_rgb2=make_color_rgb(224, 100, 17);
	//make a gamemaker color variable using chosen color
	hue1=(color_get_hue(color_rgb1)+hue) mod 255;
	hue2=(color_get_hue(color_rgb2)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv1=make_color_hsv(hue1,color_get_saturation(color_rgb1),color_get_value(color_rgb1)); 
	color_hsv2=make_color_hsv(hue2,color_get_saturation(color_rgb2),color_get_value(color_rgb2)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(13,2,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	set_color_profile_slot(13,3,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
	//set the new color using rgb values from the gamemaker color
}
init_shader();

num_wt = 0;
num_wt_article = 0;
with obj_article1 {
    if player_id == other.id {
        other.num_wt++;
        other.num_wt_article++;
    }
}
if holding_wt {
    num_wt++;
}

var minDist = 1000000000;
var minID = undefined;
with obj_article1 {
    if player_id == other.id {
        var currentDist = abs(point_distance(x, y, other.x, other.y));
        if currentDist < minDist {
            minDist = currentDist;
            minID = id;
        }
    }
}

wt_closest = minID;

if num_wt >= 1 && !holding_wt {
    with obj_article1 {
        if player_id == other.id {
            if colour == "yellow" {
                other.next_colour = "blue";
            } else {
                other.next_colour = "yellow";
            }
        }
    }
}

if state == PS_HITSTUN || state == PS_HITSTUN_LAND {
	wt_hitbox_size = 0;
}

if num_wt >= num_wt_max && !holding_wt {
    if move_cooldown[AT_DSPECIAL] < 2 move_cooldown[AT_DSPECIAL] = 2;
}

if holding_wt {
    move_cooldown[AT_TAUNT] = 5;
    switch state {
        case PS_IDLE: wt_sprite = sprite_get("idle_wt") break;
        case PS_CROUCH: wt_sprite = sprite_get("crouch_wt") break;
        case PS_WALK: wt_sprite = sprite_get("walk_wt") break;
        case PS_WALK_TURN: wt_sprite = sprite_get("walkturn_wt") break;
        case PS_DASH_START: wt_sprite = sprite_get("dashstart_wt") break;
        case PS_DASH: wt_sprite = sprite_get("dash_wt") break;
        case PS_DASH_TURN: wt_sprite = sprite_get("dashturn_wt") break;
        case PS_DASH_STOP: wt_sprite = sprite_get("dashstop_wt") break;
        
        case PS_HITSTUN:
        if sprite_index == sprite_get("hurt") {wt_sprite = sprite_get("hurt_wt")}
        else if sprite_index == sprite_get("bighurt") {wt_sprite = sprite_get("bighurt_wt")}
        else if sprite_index == sprite_get("uphurt") {wt_sprite = sprite_get("uphurt_wt")}
        else if sprite_index == sprite_get("downhurt") {wt_sprite = sprite_get("downhurt_wt")}
        else if sprite_index == sprite_get("spinhurt") {wt_sprite = sprite_get("spinhurt_wt")}
        break;
        
        
        case PS_HITSTUN_LAND: wt_sprite = sprite_get("hurtground_wt") break;
        case PS_PRATFALL: wt_sprite = sprite_get("pratfall_wt") break;
        
        case PS_ATTACK_AIR:
        case PS_ATTACK_GROUND:
        switch attack {
            case AT_JAB: wt_sprite = sprite_get("jab_wt") break;
            case AT_FTILT: wt_sprite = sprite_get("ftilt_wt") break;
            case AT_UTILT: wt_sprite = sprite_get("utilt_wt") break;
            case AT_DTILT: wt_sprite = sprite_get("dtilt_wt") break;
            case AT_DATTACK: wt_sprite = sprite_get("dattack_wt") break;
            case AT_NAIR: wt_sprite = sprite_get("nair_wt") break;
            case AT_FAIR: wt_sprite = sprite_get("fair_wt") break;
            case AT_BAIR: wt_sprite = sprite_get("bair_wt") break;
            case AT_UAIR: wt_sprite = sprite_get("uair_wt") break;
            case AT_DAIR: wt_sprite = sprite_get("dair_wt") break;
            case AT_NSPECIAL: wt_sprite = sprite_get("nspecial_wt") break;
            case AT_NSPECIAL_2: wt_sprite = sprite_get("nspecial_charge_wt") break;
            case AT_FSPECIAL: wt_sprite = sprite_get("fspecial_wt") break;
            case AT_DSPECIAL: wt_sprite = sprite_get("dspecial_wt") break;
            case AT_DSPECIAL: wt_sprite = sprite_get("dspecial_wt") break;
            
            case AT_USPECIAL:
            if free {
                wt_sprite = sprite_get("uspecial_air_wt")
            } else {
                wt_sprite = sprite_get("uspecial_wt")
            }
            break;
            
            default: wt_sprite = asset_get("empty_sprite") break;
        }
        break;
        
        default:
        if sprite_index == sprite_get("jumpstart") && !free {wt_sprite = sprite_get("jumpstart_wt")}
        else if sprite_index == sprite_get("spinhurt") {wt_sprite = sprite_get("spinhurt_wt")}
        else if sprite_index == sprite_get("idle") {wt_sprite = sprite_get("idle_wt")}
        else if sprite_index == sprite_get("jump") {wt_sprite = sprite_get("jump_wt")}
        else {wt_sprite = asset_get("empty_sprite")}
        break;
    }
} else {
    switch state {
        case PS_ATTACK_AIR:
        case PS_ATTACK_GROUND:
        switch attack {
            case AT_DAIR: non_sprite = sprite_get("dair_hammer") break;
            case AT_UAIR: non_sprite = sprite_get("uair_bat") break;
            case AT_NSPECIAL: non_sprite = sprite_get("nspecial_vfx") break;
            case AT_NSPECIAL_2: non_sprite = sprite_get("nspecial_charge_vfx") break;
            case AT_FSPECIAL: non_sprite = sprite_get("fspecial_lid") break;
            case AT_DSPECIAL: non_sprite = sprite_get("dspecial_wt") break;
            case AT_DSPECIAL_2: non_sprite = sprite_get("dspecial_2_vfx") break;
            
            default: non_sprite = asset_get("empty_sprite") break;
        }
        break;
        
        default: non_sprite = asset_get("empty_sprite") break;
    }
}

if state == PS_PARRY_START || state == PS_PARRY {
	hurtboxID.sprite_index = sprite_get("parry_hurtbox");
}

if blue_colour == undefined {
    var bcol_r = get_color_profile_slot_r(get_player_color(player), 5);
    var bcol_g = get_color_profile_slot_g(get_player_color(player), 5);
    var bcol_b = get_color_profile_slot_b(get_player_color(player), 5);
    blue_colour = array_create(3);
    blue_colour = [bcol_r, bcol_g, bcol_b];
}
if yellow_colour == undefined {
    var ycol_r = get_color_profile_slot_r(get_player_color(player), 6);
    var ycol_g = get_color_profile_slot_g(get_player_color(player), 6);
    var ycol_b = get_color_profile_slot_b(get_player_color(player), 6);
    yellow_colour = array_create(3);
    yellow_colour = [ycol_r, ycol_g, ycol_b];
}
if hold_colour == "blue" {
    if get_player_color(player) == 0 {
        set_article_color_slot(7, blue_colour[0], blue_colour[1], blue_colour[2], 1);
    }
    set_article_color_slot(5, blue_colour[0], blue_colour[1], blue_colour[2], 1);
} else if hold_colour == "yellow" {
    set_article_color_slot(5, yellow_colour[0], yellow_colour[1], yellow_colour[2], 1);
}

//runes
if has_rune("B") {
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -17);
}
if has_rune("C") {
	aerial_throws = true;
}
if has_rune("D") {
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.05);
}
if has_rune("H") {
	set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 4);
}
if has_rune("I") {
	max_djumps = 5;
}
if has_rune("J") {
	set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 1.0);
}
if has_rune("L") {
	num_wt_max = 4;
}
if has_rune("O") {
	set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 70);
}

//nair boost only once per airtime
if !nair_boost && !free {
	nair_boost = true;
}

//fspecial command grab
if fspec_grapple_id != undefined {
	fspec_grapple_id.x = x + spr_dir*50;
	fspec_grapple_id.y = y;
	if !free || (fspec_grapple_id.state != PS_HITSTUN && fspec_grapple_id.state != PS_HITSTUN_LAND) || !(attack == AT_FSPECIAL && window == 2 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
		fspec_grapple_id = undefined;
	}
}

//uair bonk
with oPlayer if id != other.id && activated_kill_effect && triggers_kill_effect {
    with other sound_play(sound_get("bonk"))
    triggers_kill_effect = false;
}

//final smash
if trigger_fs {
	if fs_scene != 0 {
		state = PS_LANDING_LAG;
		has_airdodge = false;
	}
	fs_scene_timer++;
	hsp = 0;
	vsp = 0;
	switch fs_scene {
		case 0:
		if fs_scene_timer == 60 { fs_scene++; fs_scene_timer = 0; }

		break;
		case 1:
		if fs_scene_timer == 60 { fs_scene++; fs_scene_timer = 0; }
		if fs_scene_timer == 24 sound_play(asset_get("sfx_kragg_rock_shatter"))
		break;
		
		case 2:
		if fs_scene_timer == 20 { fs_scene++; fs_scene_timer = 0; }
		break;
		
		case 3:
		if fs_scene_timer == 10 { fs_scene++; fs_scene_timer = 0; }
		
		if fs_scene_timer mod 10 == 0 sound_play(honk_sfx, false, false, 1);
		if fs_scene_timer mod 7 == 0 sound_play(honk_sfx, false, false, 0.7);
		if fs_scene_timer mod 13 == 0 sound_play(honk_sfx, false, false, 0.5);
		break;
		
		case 4:
		if fs_scene_timer == 100 { fs_scene++; fs_scene_timer = 0; }
		if fs_scene_timer mod 10 == 0 sound_play(honk_sfx, false, false, 1);
		if fs_scene_timer mod 7 == 0 sound_play(honk_sfx, false, false, 0.7);
		if fs_scene_timer mod 13 == 0 sound_play(honk_sfx, false, false, 0.5);
		break;
		
		case 5:
		if fs_scene_timer == 30 take_damage(fs_hit_player.player, player, 30);
		if fs_scene_timer == 80 { fs_scene++; fs_scene_timer = 0; }
		if fs_scene_timer mod 10 == 0 sound_play(honk_sfx, false, false, 0.4);
		if fs_scene_timer mod 7 == 0 sound_play(honk_sfx, false, false, 0.2);
		if fs_scene_timer mod 13 == 0 sound_play(honk_sfx, false, false, 0.1);
		
		if fs_scene_timer mod 10 == 0 sound_play(asset_get("sfx_kragg_rock_pillar"), false, false, 0.4, 1.0);
		if fs_scene_timer mod 7 == 0 sound_play(asset_get("sfx_kragg_rock_pillar"), false, false, 0.2, 0.9);
		if fs_scene_timer mod 13 == 0 sound_play(asset_get("sfx_kragg_rock_pillar"), false, false, 0.1, 0.8);
		break;
		
		case 6:
		if fs_scene_timer == 1 create_hitbox(49, 2, x, y)
		fs_hit_player = undefined;
		trigger_fs = false;
		fs_scene = 0;
		fs_scene_timer = 0;
		has_airdodge = true;
		has_walljump = true;
		djumps = 0;
		break;
	}
}
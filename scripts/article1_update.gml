//article1_update
timer++;

player = orig_player;

with player_id {
    switch get_player_color(player) {
        case 8:
        other.honk_sfx = sound_get("shine")
        other.shockwave_small_vfx = hit_fx_create(sprite_get("shine_small"), 12)
        other.shockwave_large_vfx = hit_fx_create(sprite_get("shine_large"), 12);
        break; //hands of my cawk
        case 9: other.honk_sfx = sound_get("snake_explosion") break; //SNAAAAAAAKE
        case 10: other.honk_sfx = sound_get("squack" + string(random_func_2(other.id mod 200, 2, true)+4)) break; //bird up
        case 11: other.honk_sfx = sound_get("sans_trombone") break; //sans
        
        default: other.honk_sfx = sound_get("honk_wt_0" + string(random_func_2(other.id mod 200, 3, true)+1)) break;
    }
}

if free {
    if has_rune("A") {
        vsp += 0.1;
    } else {
        vsp += 0.3;
    }
    hsp *= 0.99;
} else {
    vsp = 0;
    if abs(hsp) < 0.5 {
        hsp = 0;
    } else {
        hsp *= 0.75;
    }
}

if place_meeting(x, y, asset_get("plasma_field_obj")) {
    disabled_timer = (timer mod 10) + 10;
}


near_player = false;
if point_distance(x, y, player_id.x, player_id.y - 20) <= 70 {
    near_player = true;
}

if near_player && timer > 20 && id == player_id.wt_closest {
    image_index = 1;
} else {
    image_index = 0;
}

//hitbox detection
var hitbox = instance_place(x, y, pHitBox);
if hitbox != noone && hitbox.type == 1 && (hitbox.player_id != player_id || has_rune("E")) {
    if disabled_timer == 0 && hitbox.player_id != player_id && !has_rune("K") {
        disabled_timer = 120;
        sound_play(sound_get("pshh"));
    }
    
    if !(hitbox.player_id != player_id && has_rune("K")) {
        hsp = hitbox.kb_value*hitbox.spr_dir*dcos(hitbox.kb_angle);
        vsp = 0.5*hitbox.kb_value*-dsin(hitbox.kb_angle);
    }
}

if disabled_timer > 0 && disabled_timer mod 60 == 0 {
    sound_play(sound_get("static"));
}

if disabled_timer > 0 {
    disabled_timer--;
}

//honk hitboxes
if disabled_timer == 0 {
    if player_id.holding_wt && player_id.num_wt_article >= 1 { //holding wt and another one exists
        spawn_shockwave();
    } else if near_player && player_id.num_wt_article >= 2 { //standing near a wt and at least 2 exist
        with obj_article1 {
            if player_id == other.player_id && id != player_id.wt_closest && disabled_timer == 0 {
                spawn_shockwave();
            }
        }
    }
}

//blastzone destroy
if (x > player_id.room_width + 10) || (x < -10) || (y > player_id.room_height + 50) {
    if !player_id.holding_wt player_id.wt_destroyed_timer = 60;
    sound_play(sound_get("pshh"))
    instance_destroy();
    exit;
}
#define spawn_shockwave
var volume = 0.5;
if get_player_color(player_id.player) == 10 { //bird up
    volume = 0.3;
}
switch player_id.wt_hitbox_size {
    case 1:
    var hitbox = create_hitbox(AT_NSPECIAL, 2, x, y - 5);
        hitbox.wt = id;
    var _fx = spawn_hit_fx(x, y - 5, shockwave_small_vfx);
    sound_play(honk_sfx, 0, false, volume);
    break;
    
    case 2:
    var hitbox = create_hitbox(AT_NSPECIAL_2, 2, x, y - 5);
        hitbox.wt = id;
    var _fx = spawn_hit_fx(x, y - 5, shockwave_large_vfx);
    sound_play(honk_sfx, 0, false, volume + 0.2 + 0.3*(player_id.strong_charge/60));
    disabled_timer = 60;
    break;
}

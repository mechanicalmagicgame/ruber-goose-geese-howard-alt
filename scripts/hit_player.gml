//hit_player

if my_hitboxID.attack == AT_DAIR && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 5) {
    hit_player_obj.should_make_shockwave = false;
}

if my_hitboxID.attack == AT_USPECIAL && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 3) {
    //sound_play(asset_get("sfx_bird_screech"));
}

/*
if my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 3 {
    hit_player_obj.should_make_shockwave = false;
    hit_player_obj.orig_knock = 7;
    if my_hitboxID.hitbox_timer <= 1 {
        fspec_grapple_id = hit_player_obj.id;
        fspec_grapple_hitbox = my_hitboxID.id;
    }
}
*/


//damage bonus
var wt_attacks = [AT_JAB, AT_FTILT, AT_DTILT, AT_UTILT, AT_UAIR, AT_FAIR, AT_DAIR, AT_FSPECIAL, AT_USPECIAL];
var damage_bonus = 0;
for (var i = 0; i < array_length(wt_attacks); i++) {
    if my_hitboxID.attack == wt_attacks[i] {
        if !(my_hitboxID.attack == AT_DAIR && (my_hitboxID.hbox_num == 6 || my_hitboxID.hbox_num == 7)) {
            damage_bonus = -1;
            break;
        }
    }
}
if holding_wt && damage_bonus != 0 {
    take_damage(hit_player_obj.player, player, damage_bonus)
}


if my_hitboxID.attack == 49 && my_hitboxID.hbox_num == 1 {
    trigger_fs = true;
    fs_scene = 0;
    fs_scene_timer = 0;
    fs_hit_player = hit_player_obj.id;
}

if my_hitboxID.attack == 49 && my_hitboxID.hbox_num == 2 {
    trigger_fs = false;
    fs_scene = 0;
    fs_scene_timer = 0;
    fs_hit_player = undefined;
}

hit_player_obj.triggers_kill_effect = (my_hitboxID.attack == AT_UAIR && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2));

if my_hitboxID.attack == AT_USPECIAL && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 3) {
    sound_play(asset_get("sfx_blow_heavy1"))
}

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 && hitstop > 0 {
    sound_play(asset_get("sfx_absa_singlezap1"))
    spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 301)
}
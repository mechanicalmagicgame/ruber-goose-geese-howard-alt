// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH)

if attack == AT_NSPECIAL {
    if window == 1 && window_timer == 1 {
        wt_hitbox_size = 0;
    }
    if window == 1 && window_timer == 6 && special_down {
        set_attack(AT_NSPECIAL_2);
        hurtboxID.sprite_index = get_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE);
    }
    
    if window == 1 && !special_down {
        window = 2;
        window_timer = 0;
    }
    
    if window == 2 && window_timer == 1 {
        if has_rune("M") {
            wt_hitbox_size = 2;
        } else {
            wt_hitbox_size = 1;
        }
    } else {
        wt_hitbox_size = 0;
    }
    
    var volume = 0.6;
    if get_player_color(player) == 10 { //bird up
        volume = 0.5;
    }
    
    if window == 2 && window_timer == 0 && !hitpause {
        sound_play(honk_sfx, 0, false, volume);
    }
}

if attack == AT_DSPECIAL_2 {
    if window == 1 {
        attack_end();
        window = 2;
        window_timer = 0;
    }
    
    if window == 2 && window_timer == 0 && !hitpause {
        sound_play(honk_sfx, 0, false, 0.6);
    }
    
    if window == 2 && window_timer == 8 {
        state = PS_CROUCH;
        state_timer = 10;
    }
}

if attack == AT_NSPECIAL_2 {
    can_move = false;
    if special_down {
        strong_down = true;
    } else {
        strong_down = false;
        attack_down = false;
    }
    
    if window == 2 && window_timer == 1 {
        wt_hitbox_size = 2;
    } else {
        wt_hitbox_size = 0;
    }
    
    if window == 2 && window_timer == 1 && !hitpause {
        sound_play(honk_sfx, 0, false, 0.7 + 0.3*(strong_charge/60));
        if has_rune("O") {
            var mult = 2;
        } else {
            var mult = 3;
        }
        set_hitbox_value(AT_NSPECIAL_2, 2, HG_EXTRA_HITPAUSE, floor(strong_charge/mult));
    }
}

if attack == AT_DATTACK {
    can_move = false;
}

if attack == AT_JAB {
    if was_parried {
        was_parried = false;
    }
}

if attack == AT_NAIR {
    if window == 2 && attack_down && nair_boost {
        if has_rune("F") {
            vsp -= 1;
        } else {
            vsp -= 0.5;
        }
    } else if window == 3 && nair_boost {
        nair_boost = false;
    }
}

if attack == AT_DAIR {
    can_move = false;
    if window == 2 && state_timer >= 30 {
        can_jump = true;
    }
    
    if window == 2 && window_timer == get_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH) {
        attack_end();
    }
    
    if window == 3 && window_timer == 0 && !hitpause {
        destroy_hitboxes();
        sound_play(asset_get("sfx_bird_upspecial"))
    }
}

if attack == AT_USPECIAL {
    can_wall_jump = true;
    if window <= 3 {
        can_move = false;
    }
    
    if window == 1 {
        if window_timer == (holding_wt ? 12 : 10) {
            sound_play(asset_get("sfx_ori_glide_featherout"))
        }
        hsp *= 0.97;
        vsp *= 0.95;
        
        if !free && window_timer == window_length {
            spawn_base_dust(x, y, "land", spr_dir)
        }
    }
    
    if vsp < 0 && vsp > -7 && window >= 3 {
        destroy_hitboxes();
    }
}

if attack == AT_FSPECIAL {
    can_wall_jump = true;
    
    if (window == 4 || window == 5) && free {
        state = PS_IDLE_AIR;
        hurtboxID.sprite_index = hurtbox_spr;
        state_timer = 0;
    }
    
    if window == 2 && !free {
        window = 4;
        window_timer = 0;
    }
    
    
    if window == 1 {
        can_move = false;
        attack_end();
    }
    
    if window == 3 {
        if state_timer >= 50 && !was_parried {
            can_jump = true;
            can_attack = true;
            //can_special = true;
            can_airdodge = true;
        }
    }
}

//wt attack modifiers
if window == 1 && window_timer == 1 {
    if attack == AT_JAB {
        if holding_wt {
            set_hitbox_value(AT_JAB, 1, HG_WINDOW, 10);
            set_hitbox_value(AT_JAB, 2, HG_WINDOW, 2);
            if !has_rune("G") {
                set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 5);
                set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 3);
            }
        } else {
            reset_hitbox_value(AT_JAB, 1, HG_WINDOW);
            reset_hitbox_value(AT_JAB, 2, HG_WINDOW);
            reset_window_value(AT_JAB, 1, AG_WINDOW_LENGTH);
            reset_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME);
        }
    }
    
    if attack == AT_FTILT {
        if holding_wt && !throwing_wt {
            set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 10);
            set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
            if !has_rune("G") {
                set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 9);
                set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 7);
            }
        } else {
            if throwing_wt {
                set_hitbox_value(AT_FTILT, 1, HG_HIT_LOCKOUT, 10);
            } else {
                reset_hitbox_value(AT_FTILT, 1, HG_HIT_LOCKOUT);
            }
            reset_hitbox_value(AT_FTILT, 1, HG_WINDOW);
            reset_hitbox_value(AT_FTILT, 2, HG_WINDOW);
            reset_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH);
            reset_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME);
        }
    }
    
    if attack == AT_UTILT {
        if holding_wt && !throwing_wt {
            set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 10);
            set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
            set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
            if !has_rune("G") {
                set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
                set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 6);
            }
        } else {
            if throwing_wt {
                set_hitbox_value(AT_UTILT, 1, HG_HIT_LOCKOUT, 10);
            } else {
                reset_hitbox_value(AT_UTILT, 1, HG_HIT_LOCKOUT);
            }
            reset_hitbox_value(AT_UTILT, 1, HG_WINDOW);
            reset_hitbox_value(AT_UTILT, 2, HG_WINDOW);
            reset_hitbox_value(AT_UTILT, 3, HG_WINDOW);
            reset_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH);
            reset_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME);
        }
    }
    
    if attack == AT_DTILT {
        if holding_wt && !throwing_wt {
            set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 10);
            set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
            if !has_rune("G") {
                set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
                set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 5);
            }
        } else {
            if throwing_wt {
                set_hitbox_value(AT_DTILT, 1, HG_HIT_LOCKOUT, 10);
            } else {
                reset_hitbox_value(AT_DTILT, 1, HG_HIT_LOCKOUT);
            }
            reset_hitbox_value(AT_DTILT, 1, HG_WINDOW);
            reset_hitbox_value(AT_DTILT, 2, HG_WINDOW);
            reset_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH);
            reset_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME);
        }
    }
    
    
    if attack == AT_DAIR {
        if holding_wt && !throwing_wt {
            set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 10);
            set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 10);
            set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 2);
            set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 2);
            if !has_rune("G") {
                set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 15);
                set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 9);
            }
        } else {
            if throwing_wt {
                set_hitbox_value(AT_DAIR, 1, HG_HIT_LOCKOUT, 10);
            } else {
                reset_hitbox_value(AT_DAIR, 1, HG_HIT_LOCKOUT);
            }
            reset_hitbox_value(AT_DAIR, 1, HG_WINDOW);
            reset_hitbox_value(AT_DAIR, 2, HG_WINDOW);
            reset_hitbox_value(AT_DAIR, 6, HG_WINDOW);
            reset_hitbox_value(AT_DAIR, 7, HG_WINDOW);
            reset_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH);
            reset_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME);
        }
    }
    
    if attack == AT_UAIR {
        if holding_wt && !throwing_wt {
            set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 10);
            set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 10);
            set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
            set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
            if !has_rune("G") {
                set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 10);
                set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 8);
            }
        } else {
            if throwing_wt {
                set_hitbox_value(AT_UAIR, 1, HG_HIT_LOCKOUT, 10);
            } else {
                reset_hitbox_value(AT_UAIR, 1, HG_HIT_LOCKOUT);
            }
            reset_hitbox_value(AT_UAIR, 1, HG_WINDOW);
            reset_hitbox_value(AT_UAIR, 2, HG_WINDOW);
            reset_hitbox_value(AT_UAIR, 3, HG_WINDOW);
            reset_hitbox_value(AT_UAIR, 4, HG_WINDOW);
            reset_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH);
            reset_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME);
        }
    }
    
    if attack == AT_FAIR {
        if holding_wt && !throwing_wt {
            set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 10);
            set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 10);
            set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 10);
            set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 10);
            set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 10);
            set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 2);
            set_hitbox_value(AT_FAIR, 7, HG_WINDOW, 2);
            set_hitbox_value(AT_FAIR, 8, HG_WINDOW, 3);
            set_hitbox_value(AT_FAIR, 9, HG_WINDOW, 3);
            set_hitbox_value(AT_FAIR, 10, HG_WINDOW, 4);
            if !has_rune("G") {
                set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 10);
                set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 8);
            }
        } else {
            if throwing_wt {
                set_hitbox_value(AT_FAIR, 1, HG_HIT_LOCKOUT, 10);
            } else {
                reset_hitbox_value(AT_FAIR, 1, HG_HIT_LOCKOUT);
            }
            reset_hitbox_value(AT_FAIR, 1, HG_WINDOW);
            reset_hitbox_value(AT_FAIR, 2, HG_WINDOW);
            reset_hitbox_value(AT_FAIR, 3, HG_WINDOW);
            reset_hitbox_value(AT_FAIR, 4, HG_WINDOW);
            reset_hitbox_value(AT_FAIR, 5, HG_WINDOW);
            reset_hitbox_value(AT_FAIR, 6, HG_WINDOW);
            reset_hitbox_value(AT_FAIR, 7, HG_WINDOW);
            reset_hitbox_value(AT_FAIR, 8, HG_WINDOW);
            reset_hitbox_value(AT_FAIR, 9, HG_WINDOW);
            reset_hitbox_value(AT_FAIR, 10, HG_WINDOW);
            reset_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH);
            reset_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME);
        }
    }
    
    if attack == AT_BAIR {
        if throwing_wt {
            set_hitbox_value(AT_BAIR, 1, HG_HIT_LOCKOUT, 10);
        } else {
            reset_hitbox_value(AT_BAIR, 1, HG_HIT_LOCKOUT);
        }
    }
    
    if attack == AT_USPECIAL {
        if holding_wt {
            set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 10);
            set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
            if !has_rune("G") {
                set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 15);
                set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 13);
            }
        } else {
            reset_hitbox_value(AT_USPECIAL, 1, HG_WINDOW);
            reset_hitbox_value(AT_USPECIAL, 3, HG_WINDOW);
            reset_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH);
            reset_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME);
        }
    }
    
    if attack == AT_FSPECIAL {
        if holding_wt {
            set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 10);
            set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 10);
            set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 10);
            set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 10);
            set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 2);
            set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 2);
            set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW, 2);
            set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW, 4);
            set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 11);
            if !has_rune("G") {
                set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 20);
                set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 16);
            }
            set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
            set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_land_heavy"));
        } else {
            reset_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW);
            reset_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW);
            reset_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW);
            reset_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW);
            reset_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW);
            reset_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW);
            reset_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW);
            reset_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW);
            reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED);
            reset_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH);
            reset_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME);
            reset_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX);
            reset_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX);
        }
    }
    
    if attack == AT_NSPECIAL {
        if holding_wt {
            set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 44);
            set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -40);
        } else {
            reset_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT);
            reset_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y);
        }
    }
    
    if attack == AT_NSPECIAL_2 {
        if holding_wt {
            set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 55);
            set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -38);
        } else {
            reset_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT);
            reset_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y);
        }
    }
}

//throw attacks
if holding_wt && throwing_wt {
    if (attack == AT_FTILT || attack == AT_FAIR || attack == AT_BAIR) && window == 1 && window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) {
        if has_rune("A") {
            var wt_hsp = 8;
            var wt_vsp = -1;
        } else {
            var wt_hsp = 12;
            var wt_vsp = -2;
        }
        
        if !joy_pad_idle {
            if (spr_dir == 1 && joy_dir >= 30 && joy_dir <= 120) || (spr_dir == -1 && joy_dir <= 120 && joy_dir >= 30) {
                wt_vsp -= 2;
                wt_hsp -= 1;
            }
            
            if (spr_dir == 1 && joy_dir >= 210 && joy_dir <= 330) || (spr_dir == -1 && joy_dir <= 330 && joy_dir >= 210) {
                wt_vsp += 2;
                wt_hsp -= 1;
            }
        }
        
        var spawnxmod = 1;
        if attack == AT_BAIR {
            wt_hsp *= -1;
            spawnxmod = -1;
        }
        
        if attack == AT_FAIR {
            wt_vsp += 2;
            wt_hsp -= 2;
        }
        
        var wt = instance_create(x + 60*spr_dir*spawnxmod, y - 25, "obj_article1");
            wt.player_id = id;
            wt.hsp = wt_hsp*spr_dir;
            wt.vsp = wt_vsp;
            wt.spr_dir = spr_dir;
            wt.colour = hold_colour;
            wt.sprite_index = sprite_get("wt_" + hold_colour);
        holding_wt = false;
        throwing_wt = false;
        
        var hitbox = create_hitbox(AT_DSPECIAL, 1, x + 60*spr_dir, y - 25);
            hitbox.wt = wt.id;
    }
    
    if (attack == AT_UTILT || attack == AT_UAIR) && window == 1 && window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) {
        if has_rune("A") {
            var wt_hsp = 0;
            var wt_vsp = -8;
        } else {
            var wt_hsp = 0;
            var wt_vsp = -12;
        }
        
        if !joy_pad_idle {
            if (joy_dir <= 60 || joy_dir >= 300) {
                wt_vsp += 1;
                wt_hsp += 3*spr_dir;
            }
            
            if (joy_dir >= 120 && joy_dir <= 240) {
                wt_vsp += 1;
                wt_hsp -= 3*spr_dir;
            }
        }
        
        var wt = instance_create(x + 10*spr_dir, y - 70, "obj_article1");
            wt.player_id = id;
            wt.hsp = wt_hsp*spr_dir;
            wt.vsp = wt_vsp;
            wt.spr_dir = spr_dir;
            wt.colour = hold_colour;
            wt.sprite_index = sprite_get("wt_" + hold_colour);
        holding_wt = false;
        throwing_wt = false;
        draw_non = false;
        
        var hitbox = create_hitbox(AT_DSPECIAL, 1, x + 10*spr_dir, y - 70);
            hitbox.wt = wt.id;
    }
    
    if attack == AT_DTILT && window == 2 && window_timer == 4 {
        if has_rune("A") {
            var wt_hsp = 3;
            var wt_vsp = 0;
        } else {
            var wt_hsp = 4;
            var wt_vsp = 0;
        }
        var wt = instance_create(x + 44*spr_dir, y, "obj_article1");
            wt.player_id = id;
            wt.hsp = wt_hsp*spr_dir;
            wt.vsp = wt_vsp;
            wt.spr_dir = spr_dir;
            wt.colour = hold_colour;
            wt.sprite_index = sprite_get("wt_" + hold_colour);
        holding_wt = false;
        throwing_wt = false;
        
        var hitbox = create_hitbox(AT_DSPECIAL, 1, x + 30*spr_dir, y - 10);
            hitbox.wt = wt.id;
    }
    
    if attack == AT_DAIR && window == 1 && window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) {
        if has_rune("A") {
            var wt_vsp = 12;
        } else {
            var wt_vsp = 18;
        }
        var wt = instance_create(x, y+20, "obj_article1");
            wt.player_id = id;
            wt.hsp = wt_hsp*spr_dir;
            wt.vsp = wt_vsp;
            wt.spr_dir = spr_dir;
            wt.colour = hold_colour;
            wt.sprite_index = sprite_get("wt_" + hold_colour);
        holding_wt = false;
        throwing_wt = false;
        draw_non = false;
        
        var hitbox = create_hitbox(AT_DSPECIAL, 1, x + 30*spr_dir, y - 10);
            hitbox.wt = wt.id;
    }
    
    move_cooldown[AT_DSPECIAL] = 30;
}

//picking up wt
if attack == AT_DTILT && picking_wt {
    if window == 2 && window_timer == 1 {
        holding_wt = true;
        if destroyID == undefined { //idk why this bug exists, this should prevtn infinite walkies tho
            hold_colour = wt_closest.colour;
            instance_destroy(wt_closest);
        } else {
            hold_colour = destroyID.colour;
            instance_destroy(destroyID);
        }
        destroyID = undefined;
        picking_wt = false;
    }
}

if attack == AT_DSPECIAL && picking_wt {
    if window_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH) {
        picking_wt = false;
    }
    if window_timer == 1 {
        holding_wt = true;
    }
}

if attack == AT_TAUNT {
    if get_player_color(player) == 11 { //sans
        if window == 1 && window_timer == get_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH) {
            window = 5;
            window_timer = 0;
            sound_play(sound_get("sans_earrape"), true, 0, 0.25);
        }
        
        if window == 5 {
            /*
            if get_gameplay_time() mod 4 >= 1 {
                var xMod = 20*(random_func_2(get_gameplay_time() mod 200, 2, false) - 1);
                var yMod = 20*(random_func_2((get_gameplay_time()*7)mod 177, 2, false) - 1);
                set_view_position(view_get_wview()/2 + view_get_xview() + xMod, view_get_hview()/2 + view_get_yview() + yMod)
            }
            */
            shake_camera(8, 2)
            
            if window_timer == get_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH) {
                window_timer = 0;
            }
            
            if taunt_pressed || attack_pressed || special_pressed || shield_pressed {
                window++;
                window_timer = 0;
                sound_stop(sound_get("sans_earrape"));
            }
        }
    }
}

//final smash
if attack == 49 {
    if window == 1 && window_timer == get_window_value(49, 1, AG_WINDOW_LENGTH) && !hitpause {
        sound_play(honk_sfx)
        spawn_hit_fx(x + 70*spr_dir, y-45, 304)
    }
}

if has_rune("N") {
    if has_hit && (attack == AT_JAB || attack == AT_FTILT || attack == AT_DTILT || attack == AT_UTILT || attack == AT_DATTACK || attack == AT_NAIR || attack == AT_FAIR || attack == AT_UAIR || attack == AT_DAIR || attack == AT_BAIR) && !hitpause {
        iasa_script();
    }
}

#define spawn_base_dust(x, y, name, dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;

switch (name) {
    default: 
    case "dash_start": dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
return newdust;
//final-smash

set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_OFF_LEDGE, 1);
set_attack_value(49, AG_SPRITE, sprite_get("nspecial_charge"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("nspecial_charge_hurt"));

set_attack_value(49, AG_NUM_WINDOWS, 2);

//honk
set_window_value(49, 1, AG_WINDOW_LENGTH, 16);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(49, 2, AG_WINDOW_LENGTH, 24);
set_window_value(49, 2, AG_WINDOW_HSPEED, 0);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_VSPEED, 0);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(49, 1);

set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(49, 1, HG_LIFETIME, 4);
set_hitbox_value(49, 1, HG_HITBOX_X, 70);
set_hitbox_value(49, 1, HG_HITBOX_Y, -45);
set_hitbox_value(49, 1, HG_WIDTH, 140);
set_hitbox_value(49, 1, HG_HEIGHT, 140);
set_hitbox_value(49, 1, HG_SHAPE, 0);
set_hitbox_value(49, 1, HG_PRIORITY, 3);
set_hitbox_value(49, 1, HG_DAMAGE, 2);
set_hitbox_value(49, 1, HG_ANGLE, 90);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(49, 1, HG_EXTRA_HITPAUSE, 300)
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
set_hitbox_value(49, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(49, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_WINDOW, 2);
set_hitbox_value(49, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(49, 2, HG_LIFETIME, 4);
set_hitbox_value(49, 2, HG_HITBOX_X, 70);
set_hitbox_value(49, 2, HG_HITBOX_Y, -45);
set_hitbox_value(49, 2, HG_WIDTH, 160);
set_hitbox_value(49, 2, HG_HEIGHT, 160);
set_hitbox_value(49, 2, HG_SHAPE, 0);
set_hitbox_value(49, 2, HG_PRIORITY, 3);
set_hitbox_value(49, 2, HG_DAMAGE, 8);
set_hitbox_value(49, 2, HG_ANGLE, 361);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(49, 2, HG_EXTRA_HITPAUSE, 0)
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(49, 2, HG_HIT_SFX, 0);
set_hitbox_value(49, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 2, HG_FORCE_FLINCH, 0);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, -1);
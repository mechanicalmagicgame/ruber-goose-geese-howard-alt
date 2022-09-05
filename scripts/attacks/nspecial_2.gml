set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_charge"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_charge_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_NSPECIAL_2, 1);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_FORCE_FLINCH, 0);

//wt honk large
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 140);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 140);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
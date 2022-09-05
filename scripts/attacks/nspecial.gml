set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 2);

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 0);
//set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, 10);

//wt honk small
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
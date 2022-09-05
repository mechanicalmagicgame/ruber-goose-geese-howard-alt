set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_bird_upspecial"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 2);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 120);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 156);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 95);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 10);
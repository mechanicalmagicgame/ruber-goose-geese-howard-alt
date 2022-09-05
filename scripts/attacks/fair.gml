set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 5);

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 10);

//tip
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 35);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);

//body
set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 15);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);

//tip
set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -55);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 2);

//body
set_hitbox_value(AT_FAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 15);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 30);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FAIR, 5, HG_WIDTH, 65);
set_hitbox_value(AT_FAIR, 5, HG_HEIGHT, 45);
set_hitbox_value(AT_FAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 5, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 5, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FAIR, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_GROUP, 3);

//wt
//tip
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 10);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 40);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, -15);
set_hitbox_value(AT_FAIR, 6, HG_WIDTH, 45);
set_hitbox_value(AT_FAIR, 6, HG_HEIGHT, 45);
set_hitbox_value(AT_FAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 6, HG_ANGLE, 60);
set_hitbox_value(AT_FAIR, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FAIR, 6, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_GROUP, 1);

//body
set_hitbox_value(AT_FAIR, 7, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW, 10);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_X, 15);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_GROUP, 1);

//tip
set_hitbox_value(AT_FAIR, 8, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW, 10);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_X, 35);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_Y, -52);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_GROUP, 2);

//body
set_hitbox_value(AT_FAIR, 9, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_FAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 9, HG_WINDOW, 10);
set_hitbox_value(AT_FAIR, 9, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 9, HG_HITBOX_X, 15);
set_hitbox_value(AT_FAIR, 9, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FAIR, 9, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 10, HG_WINDOW, 10);
set_hitbox_value(AT_FAIR, 10, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 10, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 10, HG_HITBOX_X, 40);
set_hitbox_value(AT_FAIR, 10, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FAIR, 10, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 10, HG_HEIGHT, 48);
set_hitbox_value(AT_FAIR, 10, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 10, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 10, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 10, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 10, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 10, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FAIR, 10, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 10, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 10, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FAIR, 10, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FAIR, 10, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 10, HG_HITBOX_GROUP, 3);
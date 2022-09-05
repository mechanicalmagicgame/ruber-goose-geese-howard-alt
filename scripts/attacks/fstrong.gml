set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);

//charge
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

//swing
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);

//open
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 1);

//leave open
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);

//endlag
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 5);

//brella early ground
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 30);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_DRIFT_MULTIPLIER, 0.2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);

//brella early air
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, -10);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -70);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 30);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, -20);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_FSTRONG, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_DRIFT_MULTIPLIER, 0.2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);

//late hit ground
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 70);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 80);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_FSTRONG, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_DRIFT_MULTIPLIER, 0.2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 1);

//late hit air
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 70);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, -90);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSTRONG, 4, HG_HITSTUN_MULTIPLIER, 1.6);
set_hitbox_value(AT_FSTRONG, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_DRIFT_MULTIPLIER, 0.2);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, 1);

//launchers
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSTRONG, 5, HG_WIDTH, 70);
set_hitbox_value(AT_FSTRONG, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 5, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 5, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_LOCKOUT, 10);


/*
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 65);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -15);
set_hitbox_value(AT_FSTRONG, 5, HG_WIDTH, 40);
set_hitbox_value(AT_FSTRONG, 5, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE, 75);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FSTRONG, 5, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_FSTRONG, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_DRIFT_MULTIPLIER, 0.2);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, 1);
*/

/*
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 8, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_FSTRONG, 8, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 8, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSTRONG, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_X, 65);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_Y, -15);
set_hitbox_value(AT_FSTRONG, 8, HG_WIDTH, 40);
set_hitbox_value(AT_FSTRONG, 8, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 8, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 8, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG, 8, HG_ANGLE, 90);
set_hitbox_value(AT_FSTRONG, 8, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSTRONG, 8, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 8, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSTRONG, 8, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 8, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 8, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 8, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSTRONG, 8, HG_HITSTUN_MULTIPLIER, 1.6);
set_hitbox_value(AT_FSTRONG, 8, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 8, HG_DRIFT_MULTIPLIER, 0.2);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_GROUP, 1);
*/
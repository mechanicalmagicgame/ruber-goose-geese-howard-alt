set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 2);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -42);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 20);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -16);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 70);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 34);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 120);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, vfx_feather_side_large);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 1);
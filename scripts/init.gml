timer = 0;

kirbyability = 16;

honk_sfx = sound_get("honk_01");

vfx_feather_side_small = hit_fx_create(sprite_get("vfx_feather_side_small"), 10);
vfx_feather_up_small = hit_fx_create(sprite_get("vfx_feather_up_small"), 10);
vfx_feather_side_large = hit_fx_create(sprite_get("vfx_feather_side_large"), 21);
vfx_feather_up_large = hit_fx_create(sprite_get("vfx_feather_up_large"), 21);

has_picked_up = false; //whether the wt has been picked up in a frame
blue_colour = undefined; //colour slot values for blue wt
yellow_colour = undefined; //colour slot values for yellow wt
next_colour = "blue"; //next colour to pull out
num_wt = 0; //number of wts in game (held + article)
num_wt_article = 0; //number of article wts
num_wt_max = 2; //max number of wt
wt_closest = undefined; //id of closest wt
wt_hitbox_size = 0; //0 means cannot create hitbox, 1 means small, 2 means large
holding_wt = false; //true if holding a walkie talkie
hold_colour = "blue"; //colour of WT held
wt_sprite = undefined; //sprite to draw holding a wt
non_sprite = undefined; //sprite to draw when not holding wt
throwing_wt = false; //when performing a wt strong throw
picking_wt = false; //picking up wt
destroyID = undefined; //id of wt to destroy when picking up
draw_non = true; //if true, will draw non-sprites like bat and hammer
fspec_grapple_id = undefined; //fspecial command grab id
fspec_grapple_hitbox = undefined;

trigger_fs = false; //trigger final smash cutscene
fs_scene = 0; //different parts of cutscene
fs_scene_timer = 0; //increment while cutscene plays, resets upon transition to new scene
fs_hit_player = undefined;

wt_destroyed_timer = 0; //if thrown offstage and destroyed, has a timer before can spawn another one.

aerial_throws = false;

hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//t&a codec old
trummelcodecneeded = false;
trummelcodec_id = noone;

nair_boost = true;

char_height = 48;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .25;
dash_anim_speed = .4;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.25;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9;
short_hop_speed = 5;
djump_speed = 8;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.35;
prat_fall_accel = 0.85; //multiplier of air_accel while in pratfall
air_friction = 0.04;
max_djumps = 3;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 32;
wall_frames = 2;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = 0.4;
hitstun_grav = 0.45;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 7;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.07; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 1;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_wra");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_birdflap");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//munophone

//vfx
spr_nspecial_vfx = sprite_get("nspecial_vfx");
spr_nspecial_charge = sprite_get("nspecial_charge");
spr_nspecial_charge_vfx = sprite_get("nspecial_charge_vfx");
spr_nspecial_wt = sprite_get("nspecial_wt");
spr_nspecial_charge_wt = sprite_get("nspecial_charge_wt");
spr_wt_blue = sprite_get("wt_blue");
spr_shockwave_small = sprite_get("shockwave_small");
spr_shockwave_large = sprite_get("shockwave_large");

spr_fspecial_vfx = sprite_get("fspecial_vfx");
spr_fspecial_sweetsopt_vfx = sprite_get("fspecial_sweetspot_vfx");
spr_fspecial_lid = sprite_get("fspecial_lid");

spr_idle_wt = sprite_get("idle_wt");
spr_dtilt_wt = sprite_get("dtilt_wt");
spr_fair_wt = sprite_get("fair_wt");
spr_utilt_wt = sprite_get("utilt_wt");
spr_ftilt_wt = sprite_get("ftilt_wt");
spr_dspecial_2 = sprite_get("dspecial_2");
spr_dspecial_2_vfx = sprite_get("dspecial_2_vfx");

//munophone
user_event(14);

//pit codec
user_event(7)
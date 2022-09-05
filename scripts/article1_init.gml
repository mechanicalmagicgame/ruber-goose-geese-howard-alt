//article1_init

sprite_index = asset_get("empty_sprite");
mask_index = sprite_get("wt_mask")
image_index = 0;

honk_sfx = undefined;

shockwave_large_vfx = hit_fx_create(sprite_get("shockwave_large"), 21);
shockwave_small_vfx = hit_fx_create(sprite_get("shockwave_small"), 21);

timer = 0;
near_player = false; //true if player is in range to be pickd up by dspecial;

disabled_timer = 0;

can_be_grounded = true;
ignores_walls = false;
uses_shader = true;

unbashable = 0;
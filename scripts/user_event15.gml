// Muno template - [CORE] user-defined content



/*
 * THIS IS THE ONLY FILE YOU NEED TO EDIT! The other user_events, as well as
 * css_draw, are not to be edited by the end user.
 */



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Update Code			                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

if ("phone_inited" in self && phone_inited){

	/*
	 * update.gml Code - this runs every frame, edit the below sections as you
	 * see fit.
	 */
	
	
	
	/*
	 * Below are 3 custom entries for the Print Debug setting in the Settings
	 * app. You can replace the "url"s with any constant, variable, or function
	 * to monitor it when that setting is enabled.
	 */
	
	phone_custom_debug = [
		"woag",
		"woag",
		"woag"
		];
	
	
	
	/*
	 * Char compatibility code below; find EVEN MORE lower down in the file
	 */
	 
	 
	
	// Copy Ability
	
	if pho_has_copy_power{
		
		// Initial swallow
		
		if swallowed { //Kirby ability script starts here
		    swallowed = 0
		    //Define any assets kirby might need to grab from YOUR CHARACTER
		    var ability_spr = sprite_get("kirby_ability");
		    var ability_hurt = sprite_get("kirby_ability_hurt")
		    var ability_icon = sprite_get("kirby_icon") //Optional
		    var ability_sfx = sound_get("kirby_honk")
		    
		    with enemykirby { //Define AT_EXTRA_3 for Kirby, using your asset variables where necessary in place of sprite_get or sound_get
		        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		        set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
		        
		        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 2);
		        
		        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 9);
		        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
		        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_sfx);
		        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 5);
		        
		        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 10);
		        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 5);
		        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
		        
		        set_num_hitboxes(AT_EXTRA_3, 1);
		        
		        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
				set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
				set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 0);
				set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 4);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 35);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -25);
				set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 40);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 50);
				set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
				set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
				set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 8);
				set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 361);
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 6);
				set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.6);
				set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 6);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.6);
				set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 303);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
				set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 0);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, 0);
				set_hitbox_value(AT_EXTRA_3, 1, HG_FORCE_FLINCH, 0);
		        
		        newicon = ability_icon //Optional, replaces the kirby ability icon
		    } //Kirby ability script ends here
		}
		
		
		
		// Update code
		
		with oPlayer if "muno_last_swallowed" in self && muno_last_swallowed == other && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3{
			// you can treat this like an attack_update.gml for when kirby is using your character's ability
			
			// this system avoids conflicts between 2 swallowed chars IF they both use the munophone system for copy abilities.
		}
	}
	
	
	
	// Break the Targets data
	
	if pho_has_btt_layout{
		if get_btt_data { // Get data for Break The Targets
			course_name = "R-00 Course";
			// Set the spawn properties
			respawn_point = [[29,50],[0,0],1];
			// Set the collision of the solid sprites to precise
			sprite_change_collision_mask("btt_solid",true, 1, 0, 0, 0, 0, 0 );  
			room_add(1,[
			    [ // Each Cell
			        [0,0], // Cell Coordinates
			        [
			        	// Targets
				        [10, 4, 55, 0, -5, [0, 0, 32, [[0,0],[0,-3]], 0, 0, 0, 0], [0]],
				        [10, 40, 30.5, 0, -5, [1, 0, 60, [[-10,0],[5,0]], 0, 0, 0, 0], [0]],
				        [10, 87, 46, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]],
				        [10, 52, 44, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
				        [10, 55, 75, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
				        [10, 125, 55, 0, -5, [4, 0, 32, [[0,0],[0,-1]], 0, 0, 0, 0], [0]],
				        // Solid Ground
				    	[1, 2, 2, 2, 0, [sprite_get("btt_solid"), 0, 0, 0, 0, 0, 0, 0], [0]],
				    	// Plats
				    	[1, 46, 49, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
				    	[1, 64, 71, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]]
			            ]
			        ],
			    // Blastzones
			    [ // Each Cell
			        [0,1], // Cell Coordinates
			        [
			            [4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 2608, 20, 0], [0,0]]
			            ]
			        ],
			    [
			        [1,1],
			        [
			        	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 2608, 20, 0], [0,0]]
			            ]
			        ],
			    [ // Each Cell
			        [-1,1], // Cell Coordinates
			        [
			        	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 2608, 20, 0], [0,0]]
			            ]
			        ]
			    ]);
		}
	}
	
	
	
	// Amber
	
	if pho_has_amber_love{
		if amber_startHug{ // Amber will set this bool to true when this player accepts the hug
		    with amber_herObj{ // Access Amber's player object and set the values
		        // Set the window values for Amber's hugging. DO NOT change Amber's sprites
		        // in the attack_values
		        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		        // etc....
		
		        // Important. Puts Amber in startup hug state (2).
		        // Editing this variable not recommended
		        amberHugState = 2; 
		    }
		    // Important. Puts this character in startup hug state (2).
		    // Editing this variable not recommended
		    oPlayerHugAmberState = 2;
		    
		    // Set this bool back to false so that this doesn't loop
		    amber_startHug = false;
		}
	}
	
	exit;
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Compatibility Setup	                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

/*
 * This code runs from the CSS, as well as from the character itself.
 * 
 * The pho_has_something variables are for compatibility badges, which display
 * if your character has certain compatibilities.
 * 
 * By default, only the "gameplay-relevant" badges appear. The rest appear
 * only when the 0 key is held on the keyboard. So, don't worry about
 * cluttering the screen; include ALL compatibilites your character has,
 * for user convenience!
 * 
 * Enabling these flags ALSO enables the template code for each compatibility
 * (found within this very file).
 */

// Gameplay-relevant, and codecs because im biased :>
pho_has_muno_phone = 1;	// MunoPhone support		(should always be 1, obviously...)
pho_has_trum_codec = 1;	// Trummel & Alto codec
pho_has_copy_power = 1;	// Kirby Copy Ability
pho_has_btt_layout = 0;	// Break the Targets stage

// Character cosmetics
pho_has_otto_bhead = 1;	// Bobblehead for Otto's bike
pho_has_steve_dmsg = 1;	// Death message for Steve
pho_has_feri_taunt = 1;	// Costume for Feri's taunt
pho_has_hikaru_fak = 0;	// Title for Hikaru's fakie
pho_has_rat_allout = 0;	// Quip for Rat's all-out attack
pho_has_tco_sketch = 1;	// Drawing for The Chosen One's down taunt
pho_has_ahime_dead = 0;	// Sprite for Abyss Hime's slicing effect
pho_has_tink_picto = 0;	// Photograph for Toon Link's picto box
pho_has_fire_taunt = 0; // Fire's Taunt
pho_has_wall_e_ost = 1; // Wall-E's music
pho_has_amber_love = 0; // Amber's plush and/or hug
pho_has_moon_music = 0; // Moonchild's taunt music
pho_has_agentn_cdc = 0; // Agent N's codec

// Stage cosmetics
pho_has_drac_codec = 0;	// Dialogue for the Dracula boss fight
pho_has_miivs_post = 1;	// Posts for the Miiverse stage
pho_has_dede_title = 0;	// Title for the Mt Dedede Stadium stage
pho_has_soul_title = 0; // Text for the Soulbound Conflict stage
pho_has_been_found = 0; // Death sprite for the Trial Grounds stage
pho_has_resort_pic = 0; // Portrait for the Last Resort stage
pho_has_pkmn_image = 0; // Battle sprite for Pokémon Stadium
pho_has_daro_codec = 0; // Dialogue for the Daroach boss fight



if (object_index == asset_get("cs_playerbg_obj")){
	num_alts = 0; // Number of alt costumes; controls how many appear on the CSS
	exit;
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ General Character Info                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

muno_char_name = get_char_info(player, INFO_STR_NAME);	// Name of the character, used for the MunoPhone - and also free to be used by other mods

muno_char_icon = get_char_info(player, INFO_ICON);		// CSS icon of the character. You can replace this with an arbitrary sprite, using sprite_get(), and it'll be used in the upper left of the phone's big screen. (Make it the same size pls, thank u)

phone.taunt_hint_x = 0;									// Sideways offset of the "Taunt!" thing that shows in Practice Mode until you've opened the MunoPhone. You can move it sideways if it covers up your HUD elements.
phone.taunt_hint_y = 0;									// Vertical offset
phone.shader = 0;										// Whether or not to apply the character's palette to the phone and non-TrainingTown sidebar (change color with alt costumes)

phone.dont_fast = 0;									// Set this to 1, and Fast Graphics will not automatically be set when the FPS dips below 60.



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Tips					                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

with phone{
	
	i = 0;
	j = 0;
	
	/*
	 * Tips are hints or instructions on how to play the character. They range
	 * from one-sentence descriptions to pages-long tutorials. You can also
	 * embed images and formatted text.
	 * 
	 * initTip(name)
	 * initTipWords(text)
	 * initTipImage(sprite, frame, align, xscale, color, gimmick)
	 * initTipWords_ext(text, align, color, indent, gimmick)
	 * initTipImage_ext(sprite, frame, align, xscale, color, gimmick, border_l, border_r, border_u, border_d)
	 * 
	 * NOTE: indent = a number of "tabs", not a number of pixels
	 * 
	 * To place two consecutive elements side-by-side, they must meet the
	 * following conditions:
	 * - The second element must not be text
	 * - The width of the two elements must not exceed the page width
	 * - One element must be left-aligned, and the other right-aligned
	 * 
	 * NOTE: For images, set frame to a negative number and it will animate the
	 * sprite at that rate. E.g. set to -3, each anim frame will last 3 frames.
	 * 
	 * Another image-related note: the placement for images is calculated based
	 * on the BORDERS of the sprite. Two consequences:
	 * - The offset of the sprite (load.gml) has NO effect.
	 * - If your sprites are made with a lot of transparent empty space around
	 *   the actual content (like mine are), it'll have that much extra space
	 *   around it in the tip.
	 * 
	 * To fix the second bullet point, use initTipImage_ext(), with the four
	 * extra "border_" arguments representing the distance FROM THE SPRITE'S
	 * OFFSET (as defined in load.gml) to "cut off" the sprite in each of the
	 * four directions. E.g. if your sprite's actual content is all contained
	 * within these distances from the sprite offset:
	 * - 100 to the left
	 * - 20 to the right
	 * - 50 up
	 * - 0 down
	 * 
	 * ...then the last 4 arguments should be 100, 20, 50, 0. It basically crops
	 * the sprite
	 * 
	 * Lastly, the "gimmick" is a special effect that you can apply to an
	 * element. Here's the list of implemented gimmicks:
	 * - 0: Nothing
	 * - 1: Shaking
	 * - 2: Scrolling left
	 * - 3: Scrolling right
	 * - 4: Cause this element to not push the subsequent elements downward
	 * - 5: Cause the character's palette to apply to this element
	 * 
	 * Negative gimmick numbers are saved for whatever YOU might need them for!
	 * Like idk, if you're a coding wizard and figure out something cool to do
	 * by interacting with the tip data.
	 * 
	 */
	
	// NOTE: Using sprite_get() does not work here, so sprites must be saved as
	// variables. See init.gml for an example of this with spr_nspecial_proj.
	
	/*
	* custom gimmicks:
	* -1: gimmicks 4 + 5 combined
	*
	*
	*/
	
	initTip("Nspecial: Honk");
	initTipWords("Pretty self explanatory. Tap Nspecial for a weaker honk with less damage and 0 knockback (can be spammed), or hold Nspecial to charge the honk like a strong attack, dealing more damage and knockback when released!");
	initTipImage_ext(player_id.spr_nspecial, -4, fa_left, 1, c_white, 4, 140, 40, 78, 0);
	initTipImage_ext(player_id.spr_nspecial_vfx, -4, fa_left, 1, c_white, 4, 140, 40, 78, 0);
	initTipImage_ext(player_id.spr_nspecial_charge, -4, fa_left, 1, c_white, 4, 340, 60, 78, 0);
	initTipImage_ext(player_id.spr_nspecial_charge_vfx, -4, fa_left, 1, c_white, 4, 340, 60, 78, 0);
	
	initTip("Fspecial mechanics");
	initTipWords("Fspecial has an additional sweetspot hitbox at the start of the move that launches in the other direction. Fspecial can also be ledge canceled, allowing for movement mixups.");
	initTipImage_ext(player_id.spr_fspecial, -5, fa_center, 1, c_white, 4, 140, 100, 60, 40);
	initTipImage_ext(player_id.spr_fspecial_lid, -5, fa_center, 1, c_white, 0, 140, 100, 60, 40);
	initTipImage_ext(player_id.spr_fspecial, 4, fa_center, 1, c_white, 4, 140, 100, 60, 40);
	initTipImage_ext(player_id.spr_fspecial_lid, 4, fa_center, 1, c_white, 4, 140, 100, 60, 40);
	initTipImage_ext(player_id.spr_fspecial_sweetsopt_vfx, 0, fa_center, 1, c_white, 4, 20, 40, 60, 40);
	
	initTip("Walkie Talkies");
	initTipWords("While holding onto or standing near a Walkie Talkie, pressing Nspecial will create a shockwave from other Walkie Talkies on stage.");
	initTipImage_ext(player_id.spr_nspecial, -4, fa_left, 1, c_white, 4, 140, 40, 78, 0);
	initTipImage_ext(player_id.spr_nspecial_wt, -4, fa_left, 1, c_white, 4, 140, 40, 78, 0);
	initTipImage_ext(player_id.spr_wt_blue, 0, fa_right, 1, c_white, -1, 140, 140, 168, 0);
	initTipImage_ext(player_id.spr_shockwave_small, -4, fa_right, 1, c_white, 0, 140, 140, 162, 50);
	
	initTipImage_ext(player_id.spr_nspecial_charge, -4, fa_left, 1, c_white, 4, 140, 60, 278, 0);
	initTipImage_ext(player_id.spr_nspecial_charge_wt, -4, fa_left, 1, c_white, 4, 140, 60, 278, 0);
	initTipImage_ext(player_id.spr_wt_blue, 0, fa_right, 1, c_white, -1, 140, 140, 568, 0);
	initTipImage_ext(player_id.spr_shockwave_large, -4, fa_right, 1, c_white, 0, 140, 140, 562, 100);

	initTip("Dspecial Walkie talkie manipulation");
	initTipWords("Dspecial has several uses depending on your proximity to Walkie talkies. If you are able to spawn one, Dspecial will summon one out of thin air. If performed near a Walkie talkie on the ground or in the air, Goose will pick up that Walkie Talkie. If unable to spawn one, Goose will perform a crouch honk, not too useful but good for annoying your opponent!");
	initTipImage(player_id.spr_idle, 0, fa_left, 1, c_white, 4);
	initTipImage(player_id.spr_idle_wt, 0, fa_left, 1, c_white, 4);
	
	initTipImage(player_id.spr_dtilt, 3, fa_center, 1, c_white, 4);
	initTipImage(player_id.spr_dtilt_wt, 3, fa_center, 1, c_white, 4);
	
	initTipImage(player_id.spr_dspecial_2, 2, fa_right, 1, c_white, 4);
	initTipImage(player_id.spr_dspecial_2_vfx, 2, fa_right, 1, c_white, 4);
	
	initTip("Strong attack throwing");
	initTipWords("Use a strong attack while holding on a Walkie talkie to throw it! The angle of throw can be adjusted slightly by holding in a perpendicular direction to the throw.");
	initTipImage_ext(player_id.spr_ftilt, 4, fa_left, 1, c_white, 4, 80, 80, 80, 80);
	initTipImage_ext(player_id.spr_wt_blue, 0, fa_center, 1, c_white, -1, 140, 140, 60, 0);
	
	initTip("Walkie Talkie attacks");
	initTipWords("Certain attacks like tilts and some aerials have some properties changed while holding a Walkie talkie, usually increased hitbox size but more startup frames and less damage.");
	initTipImage_ext(player_id.spr_ftilt, 4, fa_left, 1, c_white, 4, 80, 80, 80, 80);
	initTipImage_ext(player_id.spr_ftilt_wt, 4, fa_left, 1, c_white, 4, 80, 80, 80, 80);
	
	initTipImage_ext(player_id.spr_fair, 6, fa_center, 1, c_white, 4, 80, 80, 80, 80);
	initTipImage_ext(player_id.spr_fair_wt, 6, fa_center, 1, c_white, 4, 80, 80, 80, 80);
	
	initTipImage_ext(player_id.spr_utilt, 2, fa_right, 1, c_white, 4, 80, 80, 120, 80);
	initTipImage_ext(player_id.spr_utilt_wt, 2, fa_right, 1, c_white, 4, 80, 80, 120, 80);
	
	initTip("Nair-boosting");
	initTipWords("Holding Attack while performing a Nair will apply a small vertical boost to Goose, useful for shorthop Nairs. However, the boost can only be gained once per airtime, subsequent Nairs will not provide any boost.");
	initTipImage(other.spr_nair, -5, fa_center, 1, c_white, 0);
	/*
	initTip("Frictionless FStrong");
	initTipWords("During the charge of FStrong, Sandbert slides as if on ice. Get a running start to ambush a foe!");
	initTipImage(player_id.spr_fstrong, -5, fa_center, 1, c_white, 3);
	
	initTip("woag");
	initTipWords("Does this tip exist just to showcase the ability to scroll the screen up and down?");
	initTipWords("maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe
	maybe");
	initTipWords_ext("maybe", fa_center, c_white, 0, 2);
	initTipImage(player_id.spr_taunt, 3, fa_center, 1, c_white, 0);
	initTipWords_ext("ok yea", fa_right, c_white, 0, 0);
	
	initTip("Sandbert's Lore");
	initTipWords_ext("Chapter 1", fa_center, c_gray, 0, 0);
	initTipWords("Sandbert, a son of the ruling family of the Firelands, is an experienced and hardened warrior. He has fought many wars for the Fire Capital, a bellicose nation that constantly seeks to expand its influence over neighbouring lands. His courage in battle has made him a hero among his people.");
	initTipWords("However, his straightforward character and unquestioning allegiance to the Fire Nation blind him at times. He is a reliable general on the field, but naive to the larger politics of Aether. In battle, Sandbert is equally forthright; he uses no weapons except for his razor-sharp claws and ability to control flame.");
	initTipWords_ext("Chapter 2", fa_center, c_gray, 0, 0);
	initTipWords("When he first arrived in Water Town, the merchant capital of Aether, Sandbert was considered a dangerous nuisance and a criminal. Sandbert is a playful trickster, notorious for escaping even the most precarious of situations.");
	initTipWords("However, while the Water Merchants denounce Sandbert in public, they do not hesitate to call upon him when they need a situation dealt with quietly. Sandbert is sly and can infiltrate even the most secure strongholds. He can transform into water and confuse enemies with a spray of bubbles, making him the perfect candidate for stealth assignments.");
	initTipWords_ext("Chapter 3", fa_center, c_gray, 0, 0);
	initTipWords("The youngest trainee in the history of the Air Academy, Sandbert has never lived by anyone's rules but his own. After graduating at the top of his class, he joined the Air Armada, the military force of Air Nation.");
	initTipWords("Within a year, Sandbert became renowned not just in Air Nation but across Aether as a fierce and unpredictable figher. However, among his superiors, he is more infamous for his brashness and arrogance than for his daring deeds. Currently an Aerial Ace for the Air Armada, Sandbert is wrecking havoc among the Armada's enemies and generals alike.");
	initTipWords_ext("Chapter 4", fa_center, c_gray, 0, 0);
	initTipWords("Sandbert is a defender of the colossal Aetherian Forest. Deliberate and loyal, he is one of the infamous Wall Runners who patrol the Rock Wall. From their position atop the Wall, Sandbert and his fellow Runners defend both sides of the rock face and the forest below.");
	initTipWords("While normally slow because of their massive bodies, Wall Runners can curl up into balls and traverse the Wall at high speeds. Unlike other Wall Runners, Sandbert has the legendary ability to control the earth with his will. When in peril, Sandbert can summon the earth to aid him, and he repairs the Wall when it is under siege.");
	
	initTip("Phone Controls");
	initTipWords("On the Character Select Screen, hold the 0 (zero) key on your keyboard to view the expanded list of Compatibility Icons.");
	initTipWords("To perform the regular taunt instead of opening the phone, hold a direction on the control stick.");
	
	initTip("Improving Perfection");
	initTipWords("Aside from adding the phone itself, this version of Sandbert changes a few aspects about the code (mainly to serve those using this as a base for their own characters):");
	initTipWords("Impactful:
	- init.gml is replaced with better organisation and balanced base stats
	- aerials no longer affect physics
	- removed animation.gml (some idle animations may be timed differently)
	- respawn platform now appears even in Practice Mode");
	initTipWords("Behind-the-scenes:
	- removed useless parent hitboxes
	- standardised whifflag values to 0 or 1 (>1 acts like 1)");
	
	initTip("Did You Know?");
	initTipWords("Everything in these tips is only made with the easy-to-use MunoPhone tip templates and Sandbert's default sprites!");
	initTipWords("No hardcoding or custom-cropped images, just easy-to-use paragraph and image formatting (including all of the fancy gimmicks like shaking and scrolling).");
	initTipWords("Check out user_event15.gml");
	initTipWords("Code for the above:");
	initTipWords_ext("initTip(''Did You Know?'');
	
	initTipWords(''Everything in these tips is only made with the easy-to-use MunoPhone tip templates and Sandbert's default sprites!'');
	
	initTipWords(''No hardcoding or custom-cropped images, just easy-to-use paragraph and image formatting (including all of the fancy gimmicks like shaking and scrolling).'');
	
	initTipWords(''Check out user_event15.gml'');", fa_left, c_gray, 1, 0);
	*/
	
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Patch Notes			                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

with phone{
	
	i = 0;
	
	/*
	 * Patch notes are patch notes. Inform players on what's changed since they
	 * last played the character. If you want, you can just paste the changelogs
	 * from your Steam page or etc.
	 * 
	 * initPatch(name)
	 * initPatchWords(text)
	 * initPatchImage(sprite, frame, align, xscale, color, gimmick)
	 * initPatchWords_ext(text, align, color, indent, gimmick)
	 * initPatchImage_ext(sprite, frame, align, xscale, color, gimmick, border_l, border_r, border_u, border_d)
	 * 
	 * The formatting is exactly the same as with tips. Just replace "Tip" with
	 * "Patch" in the function calls, and instead of a name for the patch,
	 * put the version number and full date.
	 */
	 
	 
	
	initPatch("5.2", "6 January, 2021");
	
	initPatchWords("Balance Changes:
	- Dspecial has a utility when used when not near a WT and both WTs are active, functions as a regular Nspec honk but crouched.");
	
	//initPatchWords("Bug Fixes:
	//- n/a");
	
	initPatchWords("Other:
	- Added Munophone support
	- Falco alt added melee falco sounds for honk sfx and shine vfx/sfx for walkie talkie shockwave.
	- Sans alt decreased taunt volume slightly.
	- Rune C changed: now gives access to aerial walkie talkie throws.
	");
	
	initPatchWords_ext("Munophone new compatibilities:
	- T&A (new) codec
	- Steve death message
	- Fighter tips
	", fa_left, c_gray, 0, 0);
	
	
	initPatch("5.3", "12 January, 2021");
	
	initPatchWords("Bug Fixes:
	- Kirby ability works again");
	
	
	initPatch("5.4", "9 February, 2021");
	
	initPatchWords("Balance Changes:
	- Bair sweetspot hitbox lifetime increased: 1f -> 2f
	- Bair sourspot comes out 1 frame later than sweetspot
	- Fspecial sweetspot lifetime increased: 1f -> 2f
	- WT shockwave hitbox lifetime increased: 1f -> 3f
	- Dair can be jump canceled 10 frames earlier
	- Dair multihit bkb increased: 7 -> 10
	- dair multihit kbg decreased: 0.4 -> 0.2
	- While holding a WT, every attack that uses a WT will have each hit's damage increased by 1.
	");
	
	initPatchWords("Bug Fixes:
	- Fixed a bug where you could sometimes spawn infinite walkie talkies.
	");
	
	initPatch("5.6", "8 March, 2021");
	
	initPatchWords("Balance Changes:
	- Dair multihit damage decreased: 2 -> 1
	- Dair launcher damage decreased: 8 -> 7
	- WT dair multihits no longer affected by the +1 damage bonus per hitbox
	- Nspecial WT small shockwave damage decreased: 3 -> 2
	- Nspecial WT large shockwave damage decreased: 10 -> 9
	- Nspecial WT large shockwave base hitpause decreased: 20 -> 15
	- Nspecial WT large shockwave bkb increased: 7 -> 12
	- Nspecial WT large shockwave kbg decreased: 0.7 -> 0.4
	- Nspecial WT large shockwave angle increased: 65 -> 90
	- Fspecial hsp decreased slightly (both normal/wt)
	- You can no longer summon a WT for 60 frames after one has been destroyed via blastzone.
	- You can no longer summon a WT for 30 frames after throwing a WT.
	");
	
	initPatchWords("Bug Fixes:
	- Fspecial no longer can be jump canceled after being parried.
	");
	
	initPatchWords("Other:
	- Fspecial normal/wt animation smears improved.
	- Bird Guy alt honk sfx volume decreased.
	- Sfx added for when WT is destroyed via blastzone.
	");
	
	initPatch("5.7", "14 April, 2021");
	
	initPatchWords("Balance Changes:
	- WT bonus damage inverted, now attacks holding a WT deal 1% less damage than non-WT moves.
	- Large WT shockwaves now have a 60 frame cooldown after each activation.
	- Fair launcher hit dmg increased: 5 -> 6 (total dmg: 9 -> 10)
	- Ftilt dmg increased: 7 -> 8
	- Ustrong kbg decreased: 1.2 -> 1.1
	- Uair startup decreased (-2f)
	");
	
	initPatchWords("Other:
	- Uspecial sweetspot sfx replaced with Bradshaw uspecial sweetspot sfx
	");
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Cheat Codes			                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

with self{
	
	i = 0;
	
	/*
	 * Cheat codes enable bonus features or overpowered modes. This is a great
	 * place to put utilities that help when practicing the character, such as
	 * an option to instantly fill a resource meter or skip a cooldown.
	 * 
	 * initCheat(display name, backstage name, options, option names, description)
	 * 
	 * Use phone_cheats[] to reference these cheats in code, putting the
	 * backstage name (without quotes) as the array index. The backstage name
	 * becomes the name of a variable storing the cheat's index. E.g.
	 * 
	 * if (phone_cheats[cheat_funny_snail] == 1) {
	 *	   print_debug("woag");
	 * }
	 * 
	 * This is pretty similar to abyss runes - but instead of checking for if
	 * has_rune("X") is true or false, you check for the entry in the
	 * phone_cheats array.
	 * 
	 * Each cheat defaults to the first option in its option list (e.g.
	 * cheat_funny_snail defaults to 0). This happens even when the MunoPhone
	 * itself is not available.
	 * 
	 * Cheat descriptions should be short and sweet, as they can't be scrolled.
	 */
	
	// NOTE: If you remove these cheat codes, you will need to remove where
	// they're referenced elsewhere in code. The comment above each cheat tells
	// you which files reference it.
	/*
	// post_draw.gml
	initCheat("Say woag", "cheat_funny_snail", [0, 1], ["no", "yes"], "Say woag? Yes. No. AAAAAA");
	
	// update.gml
	initCheat("Max DJumps", "cheat_more_djumps", [1, 2, 3, 4, 5, 0], ["1", "2", "3", "4", "5", "0"], "Change Sandbert's maximum number of double jumps.");
	
	// attack_update.gml
	initCheat("USpecial Flight Speed", "cheat_flight_speed", [1, 1.25, 1.5, 2, 3, 5, 10], ["1", "1.25", "1.5", "2", "3", "5", "10"], "Change the speed of USpecial's flight.");
	
	// attack_update.gml
	initCheat("FSpecial Cancel", "cheat_fspecial_cancel", [0, 1], ["Off", "On"], "Cancel FSpecial into any action.");
	
	// update.gml
	initCheat("wide?", "cheat_widebert", [1, 1.25, 1.5, 2, 3, 5, 10, 20, 0.5, 0.25, 0.1, 0], ["Normal", "wide", "w i d e", "w  i  d  e", "w   i   d   e", "w    i    d    e", "w     i     d     e", "w      h      a      t", "narrow", "narrower", "narrowerer", "."], "how");
	
	// init_shader.gml
	initCheat("Disco", "cheat_skittles", [0, 1], ["Off", "On"], "skittles");
	
	// update.gml
	initCheat("stop hitting yourself", "cheat_recoil", [0, 1], ["Off", "On"], "ouf");
	*/
	
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Frame Data Guide		                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

with phone{

	// Move ordering. Reorder this as you see fit for your character
	
	// note: do NOT remove indexes from this list. empty indexes will be ignored by the frame data guide.
	// to hide an in-use attack index from the guide, use AG_MUNO_ATTACK_EXCLUDE instead!
	
	move_ordering = [
		AT_JAB,
		AT_FTILT,
		AT_DTILT,
		AT_UTILT,
		AT_DATTACK,
		AT_FSTRONG,
		AT_USTRONG,
		AT_DSTRONG,
		AT_FSTRONG_2,
		AT_USTRONG_2,
		AT_DSTRONG_2,
		AT_NAIR,
		AT_FAIR,
		AT_BAIR,
		AT_UAIR,
		AT_DAIR,
		AT_NSPECIAL,
		AT_NSPECIAL_AIR,
		AT_NSPECIAL_2,
		AT_FSPECIAL,
		AT_FSPECIAL_AIR,
		AT_FSPECIAL_2,
		AT_USPECIAL,
		AT_USPECIAL_GROUND,
		AT_USPECIAL_2,
		AT_DSPECIAL,
		AT_DSPECIAL_AIR,
		AT_DSPECIAL_2,
		AT_NTHROW,
		AT_FTHROW,
		AT_UTHROW,
		AT_DTHROW,
		AT_EXTRA_1,
		AT_EXTRA_2,
		AT_EXTRA_3,
		AT_TAUNT,
		AT_TAUNT_2,
		AT_PHONE,
		2,
		3,
		39,
		42,
		43,
		44,
		45,
		46,
		47,
		48,
		49,
		50
	];
	
	
	
	// Include a "Stats" page in the frame data guide?
	include_stats = true;
	
	// If so, put any specific notes here:
	stats_notes = "-"; // "-" means no notes
	
	
	
	// Include a custom page in the frame data guide? (Useful for documenting miscellaneous numbers, e.g. stats of a passive mechanic)
	include_custom = false;
	
	// If so, what's its name?
	custom_name = "Monado Art Data"
	
	i = 0;
	
	// If so, use these functions to populate it:
	// initCFDHeader(text)
	// initCFDBody(text)
	
	initCFDHeader("Monado Jump");
	initCFDBody("Cooldown: 100000 seconds
	Duration: 5
	Effects: you jump higher???? by like 2x");
	
	initCFDHeader("Monando Shield");
	initCFDBody("Cooldown: 4
	Duration: 2
	Effects: Wait why is this listed second");
	initCFDBody("woag this is a enw apragraph");
	
	initCFDHeader("Some crazy third thing");
	initCFDBody("Damage: 7
	sw: i
	m");
	
}



/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ About					                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

with phone{
	
	/*
	 * Info found in the "About" app.
	 * 
	 * initAbout(entry name, entry text)
	 * 
	 * Useful for credits or etc. The page can also scroll, so they can be long
	 * if you want. AND you can have multiple of these
	 */
	
	//initAbout("About Goose", "honk");
	
}







/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ Compatibility			                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

// Trummel & Alto codec

if pho_has_trum_codec{
	
	/*
	 * initCodec(gimmick)
	 * initCodecPage(speaker, expression, gimmick, text)
	 * 
	 * The variable trummel_id is initially set to noone (-4). When Trummel
	 * opens this char's codec, trummel_id is set to Trummel's object ID.
	 */
	
	/*
	 * Codec speaker handles:
	 * SPK_TRUM: Trum
	 * SPK_ALTO: Alto
	 * SPK_OTTO: Otto
	 * SPK_CODA: Coda
	 * SPK_ECHO: Tempo
	 * SPK_MINE: Steve (i dont normally use this one... like, what is he supposed to say?? the funny oof noise? you can if you want)
	 * SPK_SEGA: Sonic (see above)
	 */
	
	/* 
	 * Page gimmick handles:
	 * GIM_CHOMP			make the enemy ftilt
	 * GIM_CLONE 			display 2 speakers
	 * GIM_LAUGH_TRACK		play the funny haha sound
	 * GIM_SKIP   			advance the page immediately when the text finishes
	 * GIM_DIE    			die
	 * GIM_SHUT_UP			no chatter sfx
	 * GIM_HOWL				make the enemy dspecial
	 * GIM_SHADER			use your char's shaders (palette swaps) for the speaker portrait
	 * GIM_TEXTBOX			text color             is set to the value of the   spr_custom_trummel_textbox   variable in the player object
	 * GIM_COLOR			textbox sprite index   is set to the value of the   spr_custom_trummel_color     variable in the player object
	 * 
	 * To use multiple gimmicks on a single page, MULTIPLY them together. See
	 * _readme.gml for examples
	 */
	
	// Custom speaker setup - use 1, 2, 3, 4, ... for the index
	
	SPK_HONK = initSpeaker(1, "Goose", sprite_get("_pho_goose_speaker"));
	SPK_NHAT = initSpeaker(2, "Trummel", sprite_get("_pho_trum_nohat_speaker"));
	
	
	trummel_codecs = [];
	
	initCodec(0);
	initCodecPage(SPK_TRUM, 0, 0, "honk");
	initCodecPage(SPK_HONK, 0, GIM_SHUT_UP, "honk");
	initCodecPage(SPK_ALTO, 1, 0, "Someone's looking nicer than last time we met.");
	initCodecPage(SPK_CODA, 6, 0, "Trummel, look out!");
	initCodecPage(SPK_NHAT, 0, 0, "wat");
	initCodecPage(SPK_HONK, 1, GIM_SHUT_UP, "honk");
	initCodecPage(SPK_ALTO, 5, 0, "Not again...");
	
	
	spr_custom_trummel_color = c_red;
	
}



// Otto bobblehead

if pho_has_otto_bhead{
	
	otto_bobblehead_sprite = sprite_get("otto_bobblehead");
	otto_bobblebody_sprite = sprite_get("_pho_example_bobble_body"); // you only need to change this one if you REALLY want to. most chars just use the head sprite
	
}



// Steve death message

if pho_has_steve_dmsg{
	
	steve_death_message = "Steve was honked to death";
	
}



// Feri taunt costume

if pho_has_feri_taunt{
	
	sprite_change_offset("feri_costume", 84, 114);
	feri_costume = sprite_get("feri_costume_goose");
	
}



// Hikaru fakie title

if pho_has_hikaru_fak{
	
	Hikaru_Title = "woaf";
	
}



// Rat all-out quote

if pho_has_rat_allout{
	
	personaQuips[10] = "woaf";
	
}



// The Chosen One sketch

if pho_has_tco_sketch{
	
	tcoart = sprite_get("goose_tcoart");
	
}



// Abyss Hime death sprite

if pho_has_ahime_dead{
	
	sprite_change_offset("ahime_dead", 0, 0);
	abyssHime_deathspr = sprite_get("ahime_dead");
	
}



// Fire's taunt

if pho_has_fire_taunt{
	
	sprite_change_offset("fire_taunt", 0, 0);
	fire_taunt = sprite_get("fire_taunt");
	fire_taunt_duration = 420;
	fire_taunt_frames = 69;
	fire_taunt_sound = sound_get("woagf");
	fire_taunt_sound_frame = 3;
	
}



// Wall-E's radio

if pho_has_wall_e_ost{
	
	walle_taunt_sound = sound_get("harmonica");
	walle_taunt_type = 2;
	
}



// Amber's plushie and hug

if pho_has_amber_love{
	
	plushForAmber = sprite_get("amber_plushie");
	
	// Amber interaction variables
	amber_herObj = noone; // The object ID of Amber when she hugs. Amber's own script will set this when the hug is inititated
	amber_thisHugSprite = sprite_get("sandbert_hug");
	amber_herHugSprite = sprite_get("amber_hug");
	amber_startHug = false; // This variable is set true from Amber's scripts
	amber_thisSpriteInFront = true; // When true, this character's sprite is rendered over Amber's sprite
	amber_autoTurnToHer = true; // This character will automatically face towards Amber upon hug activatation when true
	
	amber_hugStartPos[0] = 42; // The x target offset point (from Amber's pos) where the player should hug Amber at. 
	amber_hugStartPos[1] = 0; // The y target offset point. Recommended to keep this at 0 for grounded interaction
	
	amber_hugExitPos[0] = 42; // The x target offset point (from Amber's pos) where the player stands at when exiting hug state.
	amber_hugExitPos[1] = 0; // The y target offset point.
	
	// The x target offset positions will inherit the character's spr_dir when this is true.
	// Set this to true for character interactions that face toward each other such as hugging
	// Set this to false for centered interaction animations
	amber_useSprDirOffset = true; 
	
	amber_hugExitTimer = 30; // How many frames should pass before either player can exit the hug window loop
	amber_hugExitWindow = 3; // The window to jump to when either player presses a button to exit hug loop
	
	sprite_change_offset("sandbert_hug", 32, 62);
	sprite_change_offset("amber_hug", 32, 62);
	
}



// Moonchild music

if pho_has_moon_music{
	
	childsupport = true; // this is so sad
	
}



// Agent N codec

if pho_has_agentn_cdc{
	
	ncode1 = "line1";
	ncode2 = "line2";
	ncode3 = "line3";
	
}



// Dracula dialogue

if pho_has_drac_codec{
	
	dracula_portrait = sprite_get("drac_portrait");
	dracula_portrait2 = asset_get("empty_sprite");
	dracula_portrait3 = asset_get("empty_sprite");
	var page = 0;
	
	// Page 0
	dracula_speaker[page] = 0;
	dracula_text[page] = "holy frick";
	page++;
	
	// Page 1
	dracula_speaker[page] = 0;
	dracula_text[page] = "im dracula";
	page++;
	
	// repeat...
	
}



// Miiverse post

if pho_has_miivs_post{
	
	sprite_change_offset("miiverse_post", 60, 30);
	miiverse_post = sprite_get("miiverse");
	
}



// Mt Dedede title

if pho_has_dede_title{
	
	arena_title = "woag";
	arena_short_name = "woaf";
	
}



// Soulbound Conflict

if pho_has_soul_title{
	
	battle_text = "* woag";
	
}



// Trial Grounds

if pho_has_been_found{

	sprite_change_offset("trial_grounds", 31, 0);
	guiltySprite = sprite_get("trial_grounds");
	
}



// Last Resort painting

if pho_has_resort_pic{
	
	sprite_change_offset("last_resort", 27, 39);
	resort_portrait = sprite_get("last_resort");
	
}



// PKMN Stadium battle portraits

if pho_has_pkmn_image{
	
	pkmn_stadium_front_img = sprite_get("pkmn_front");
	pkmn_stadium_back_img = sprite_get("pkmn_back");
	pkmn_stadium_name_override = "sdkhjfskhgfkslhfglkha";
	
}



// Daroach dialogue

if pho_has_daro_codec{
	
	daroach_portrait = sprite_get("daro_portrait");
	daroach_portrait2 = asset_get("empty_sprite");
	daroach_portrait3 = asset_get("empty_sprite");
	var page = 0;
	
	// Page 0
	daroach_speaker[page] = 0;
	daroach_text[page] = "holy frick";
	page++;
	
	// Page 1
	daroach_speaker[page] = 0;
	daroach_text[page] = "im dracula";
	page++;
	
	// repeat...
	
}





/*

╔══════════════════════════════════════════════════════════════════════════════╗
║                                                                              ║
║ The End				                                                       ║
║                                                                              ║
╚══════════════════════════════════════════════════════════════════════════════╝

*/

// THIS MARKS THE END OF THE SECTION YOU HAVE TO EDIT!
// BELOW THIS IS JUST BEHIND-THE-SCENES CODE





#define initAbout(obj_name, obj_text)

var para = {
	type: 0,
	text: obj_text,
	align: fa_left,
	color: c_white,
	indent: 0,
	gimmick: 0,
	side_by_side_exempt: false
};

var tip = {
	name: obj_name,
	objs: [para]
};

array_push(abouts, tip);



#define initCFDHeader(text)

custom_fd_content[i] = {
	type: 0, // header
	content: text
};

i++;



#define initCFDBody(text)

custom_fd_content[i] = {
	type: 1, // body
	content: text
};

i++;



#define initCodec(cd_gimmick)

var new_cdc = {
	gimmick: cd_gimmick,
	pages: []
};

array_push(trummel_codecs, new_cdc);



#define initCodecPage(cd_speaker, cd_expression, cd_gimmick, cd_text)

var new_page = {
	speaker: cd_speaker,
	expression: cd_expression,
	gimmick: cd_gimmick,
	text: cd_text
};

array_push(trummel_codecs[array_length(trummel_codecs) - 1].pages, new_page);



#define initSpeaker(idx, speak_name, speak_sprite)

trummel_speakers[idx] = {
	name: speak_name,		// Name displayed while talking
	sprite: speak_sprite	// Sprite of face
};

return idx * -1;



#define initTip(tip_name)

tips[i] = {
	name: tip_name,
	objs: [0]
};

i++;

j = 0;



#define initTipWords(obj_text)

i--;

tips[i].objs[j] = initWords(obj_text);

tipObjEnd();



#define initTipWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_gimmick)

i--;

tips[i].objs[j] = initWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_gimmick);

tipObjEnd();



#define initTipImage(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick)

i--;

tips[i].objs[j] = initImage(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick);

tipObjEnd();



#define initTipImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick, obj_l, obj_r, obj_u, obj_d)

i--;

tips[i].objs[j] = initImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick, obj_l, obj_r, obj_u, obj_d);

tipObjEnd();



#define initPatch(pat_ver, pat_date)

patches[i] = {
	name: "v" + pat_ver,
	date: pat_date,
	objs: [0]
};

i++;

j = 0;



#define initPatchWords(obj_text)

i--;

patches[i].objs[j] = initWords(obj_text);

tipObjEnd();



#define initPatchWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_gimmick)

i--;

patches[i].objs[j] = initWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_gimmick);

tipObjEnd();



#define initPatchImage(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick)

i--;

patches[i].objs[j] = initImage(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick);

tipObjEnd();



#define initPatchImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick, obj_l, obj_r, obj_u, obj_d)

i--;

patches[i].objs[j] = initImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick, obj_l, obj_r, obj_u, obj_d);

tipObjEnd();



#define initWords(obj_text)

return {
	type: 0,
	text: obj_text,
	align: fa_left,
	color: c_white,
	indent: 0,
	gimmick: 0,
	side_by_side_exempt: false
};

tipObjEnd();



#define initWords_ext(obj_text, obj_align, obj_color, obj_indent, obj_gimmick)

return {
	type: 0,
	text: obj_text,
	align: obj_align,
	color: obj_color,
	indent: obj_indent,
	gimmick: obj_gimmick,
	side_by_side_exempt: false
};

tipObjEnd();



#define initImage(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick)

return {
	type: 1,
	sprite: obj_sprite,
	frame: obj_frame,
	align: obj_align,
	xscale: obj_xscale,
	color: obj_color,
	gimmick: obj_gimmick,
	margin_l: "unset",
	margin_r: "unset",
	margin_u: "unset",
	margin_d: "unset",
	needs_auto_margins: true,
	side_by_side_exempt: false
};

tipObjEnd();



#define initImage_ext(obj_sprite, obj_frame, obj_align, obj_xscale, obj_color, obj_gimmick, obj_l, obj_r, obj_u, obj_d)

return {
	type: 1,
	sprite: obj_sprite,
	frame: obj_frame,
	align: obj_align,
	xscale: obj_xscale,
	color: obj_color,
	gimmick: obj_gimmick,
	margin_l: obj_l,
	margin_r: obj_r,
	margin_u: obj_u,
	margin_d: obj_d,
	needs_auto_margins: false,
	side_by_side_exempt: false
};

tipObjEnd();



#define tipObjEnd

i++;

j++;



#define initCheat(ch_name, ch_cmd, ch_opt, ch_opt_name, ch_desc)

phone.cheats[i] = {
	name: ch_name,
	command: ch_cmd,
	options: ch_opt,
	option_names: ch_opt_name,
	description: ch_desc,
	on: 0
};

variable_instance_set(self, ch_cmd, i);
phone_cheats[i] = ch_opt[0];

i++;



#define room_add(_room_id,room_data) // Adds a new room to the scene. for BTT
with obj_stage_article if num == 5 {
	var _room_id_ind = array_find_index(array_room_ID,_room_id);
	if _room_id_ind == - 1 {
	    if debug print_debug("[RM] Adding... "+string(_room_id));
	    array_push(array_room_data,room_data);
	    array_push(array_room_ID,_room_id);
	} else {
	    array_room_data[_room_id_ind] = room_data;
	    array_room_ID[_room_id_ind] = _room_id;
	}
}
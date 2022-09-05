//draw_hud

//munophone
user_event(11);

//final smash
if "trigger_fs" in self && trigger_fs {
    shader_start()
    switch fs_scene {
        case 0: //fade to white
        draw_set_alpha(fs_scene_timer/40)
        draw_rectangle_color(-100, -100, room_width+100, room_height*100, c_white,c_white,c_white,c_white, false)
        draw_set_alpha(1)
        break;
        
        case 1: //blue, opponent fall to ground
        draw_rectangle_color(-100, -100, room_width+100, room_height*100, c_aqua,c_aqua,c_aqua,c_aqua, false)
        
        var dropylevel = 1000;
        var xshake = 0;
        var yshake = 0;
        if fs_scene_timer > 28 && fs_scene_timer < 40 {
            xshake = random_func(0, 20, true)-10;
            yshake = random_func(1, 10, true)-5;
        }
        dropylevel = clamp(dropylevel-fs_scene_timer*35, 100, 1000)
        draw_sprite_ext(fs_hit_player.sprite_index, 0, (view_get_wview()/2) + xshake, view_get_hview() - dropylevel + yshake, 2, 2, 0, c_white, 1)
        break;
        
        case 2: //scroll away
        draw_rectangle_color(-100, -100, room_width+100, room_height*100, c_aqua,c_aqua,c_aqua,c_aqua, false)
        draw_sprite_ext(fs_hit_player.sprite_index, 0, (view_get_wview()/2) + fs_scene_timer*50, view_get_hview() - 100, 2, 2, 0, c_white, 1)
        break;
        
        case 3: //goose approach
        draw_rectangle_color(-100, -100, room_width+100, room_height*100, c_aqua,c_aqua,c_aqua,c_aqua, false)
        draw_sprite_ext(sprite_get("fs_dash"), 0, ((view_get_wview()/2) - 750) + fs_scene_timer*40, view_get_hview() - 95, 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), 0, ((view_get_wview()/2) - 780) + fs_scene_timer*40, view_get_hview() - 100, 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), 0, ((view_get_wview()/2) - 800) + fs_scene_timer*40, view_get_hview() - 90, 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), 0, ((view_get_wview()/2) - 820) + fs_scene_timer*40, view_get_hview() - 110, 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), 0, ((view_get_wview()/2) - 850) + fs_scene_timer*40, view_get_hview() - 95, 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), 0, ((view_get_wview()/2) - 880) + fs_scene_timer*40, view_get_hview() - 105, 2, 2, 0, c_white, 1)
        break;
        
        case 4: //goose stand + honk
        draw_rectangle_color(-100, -100, room_width+100, room_height*100, c_aqua,c_aqua,c_aqua,c_aqua, false)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 3)/5), (view_get_wview()/2) - 350, view_get_hview() - 95, 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 14)/6), (view_get_wview()/2) - 380, view_get_hview() - 100, 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 2)/3), (view_get_wview()/2) - 400, view_get_hview() - 90, 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 12)/6), (view_get_wview()/2) - 420, view_get_hview() - 110, 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 7)/4), (view_get_wview()/2) - 450, view_get_hview() - 95, 2, 2, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 4)/3), (view_get_wview()/2) - 480, view_get_hview() - 105, 2, 2, 0, c_white, 1)
        break;
        
        case 5: //get trampled
        var xshake = 0;
        var yshake = 0;
        if fs_scene_timer > 30 {
            xshake = random_func(0, 20, true)-10;
            yshake = random_func(1, 10, true)-5;
        }
        draw_rectangle_color(-100, -100, room_width+100, room_height*100, c_aqua,c_aqua,c_aqua,c_aqua, false)
        draw_sprite_ext(fs_hit_player.sprite_index, 0, (view_get_wview()/2) + xshake, view_get_hview() - 100 + yshake, 1, 1, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 3)/5), (view_get_wview()/2) - 350 -  600 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 14)/6), (view_get_wview()/2) - 380 - 600 + fs_scene_timer*25 + xshake, view_get_hview() - 100 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 2)/3), (view_get_wview()/2) - 400 -  600 + fs_scene_timer*25 + xshake, view_get_hview() - 90 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 12)/6), (view_get_wview()/2) - 420 - 600 + fs_scene_timer*25 + xshake, view_get_hview() - 110 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 7)/4), (view_get_wview()/2) - 450 -  600 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 4)/3), (view_get_wview()/2) - 480 -  600 + fs_scene_timer*25 + xshake, view_get_hview() - 105 + yshake, 1.5, 1.5, 0, c_white, 1)
        
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 3)/5), (view_get_wview()/2) - 350 -  720 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 14)/6), (view_get_wview()/2) - 380 - 720 + fs_scene_timer*25 + xshake, view_get_hview() - 100 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 2)/3), (view_get_wview()/2) - 400 -  720 + fs_scene_timer*25 + xshake, view_get_hview() - 90 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 12)/6), (view_get_wview()/2) - 420 - 720 + fs_scene_timer*25 + xshake, view_get_hview() - 110 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 7)/4), (view_get_wview()/2) - 450 -  720 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 4)/3), (view_get_wview()/2) - 480 -  720 + fs_scene_timer*25 + xshake, view_get_hview() - 105 + yshake, 1.5, 1.5, 0, c_white, 1)
        
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 3)/5), (view_get_wview()/2) - 350 -  840 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 14)/6), (view_get_wview()/2) - 380 - 840 + fs_scene_timer*25 + xshake, view_get_hview() - 100 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 2)/3), (view_get_wview()/2) - 400 -  840 + fs_scene_timer*25 + xshake, view_get_hview() - 90 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 12)/6), (view_get_wview()/2) - 420 - 840 + fs_scene_timer*25 + xshake, view_get_hview() - 110 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 7)/4), (view_get_wview()/2) - 450 -  840 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 4)/3), (view_get_wview()/2) - 480 -  840 + fs_scene_timer*25 + xshake, view_get_hview() - 105 + yshake, 1.5, 1.5, 0, c_white, 1)
        
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 3)/5), (view_get_wview()/2) - 350 -  960 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 14)/6), (view_get_wview()/2) - 380 - 960 + fs_scene_timer*25 + xshake, view_get_hview() - 100 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 2)/3), (view_get_wview()/2) - 400 -  960 + fs_scene_timer*25 + xshake, view_get_hview() - 90 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 12)/6), (view_get_wview()/2) - 420 - 960 + fs_scene_timer*25 + xshake, view_get_hview() - 110 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 7)/4), (view_get_wview()/2) - 450 -  960 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 4)/3), (view_get_wview()/2) - 480 -  960 + fs_scene_timer*25 + xshake, view_get_hview() - 105 + yshake, 1.5, 1.5, 0, c_white, 1)
        
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 3)/5), (view_get_wview()/2) - 350 -  1080 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 14)/6), (view_get_wview()/2) - 380 - 1080 + fs_scene_timer*25 + xshake, view_get_hview() - 100 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 2)/3), (view_get_wview()/2) - 400 -  1080 + fs_scene_timer*25 + xshake, view_get_hview() - 90 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 12)/6), (view_get_wview()/2) - 420 - 1080 + fs_scene_timer*25 + xshake, view_get_hview() - 110 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 7)/4), (view_get_wview()/2) - 450 -  1080 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 4)/3), (view_get_wview()/2) - 480 -  1080 + fs_scene_timer*25 + xshake, view_get_hview() - 105 + yshake, 1.5, 1.5, 0, c_white, 1)
        
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 3)/5), (view_get_wview()/2) - 350 -  1200 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 14)/6), (view_get_wview()/2) - 380 - 1200 + fs_scene_timer*25 + xshake, view_get_hview() - 100 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 2)/3), (view_get_wview()/2) - 400 -  1200 + fs_scene_timer*25 + xshake, view_get_hview() - 90 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 12)/6), (view_get_wview()/2) - 420 - 1200 + fs_scene_timer*25 + xshake, view_get_hview() - 110 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 7)/4), (view_get_wview()/2) - 450 -  1200 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 4)/3), (view_get_wview()/2) - 480 -  1200 + fs_scene_timer*25 + xshake, view_get_hview() - 105 + yshake, 1.5, 1.5, 0, c_white, 1)
        
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 3)/5), (view_get_wview()/2) - 350 -  1320 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 14)/6), (view_get_wview()/2) - 380 - 1320 + fs_scene_timer*25 + xshake, view_get_hview() - 100 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 2)/3), (view_get_wview()/2) - 400 -  1320 + fs_scene_timer*25 + xshake, view_get_hview() - 90 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 12)/6), (view_get_wview()/2) - 420 - 1320 + fs_scene_timer*25 + xshake, view_get_hview() - 110 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 7)/4), (view_get_wview()/2) - 450 -  1320 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 4)/3), (view_get_wview()/2) - 480 -  1320 + fs_scene_timer*25 + xshake, view_get_hview() - 105 + yshake, 1.5, 1.5, 0, c_white, 1)
        
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 3)/5), (view_get_wview()/2) - 350 -  1440 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 14)/6), (view_get_wview()/2) - 380 - 1440 + fs_scene_timer*25 + xshake, view_get_hview() - 100 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 2)/3), (view_get_wview()/2) - 400 -  1440 + fs_scene_timer*25 + xshake, view_get_hview() - 90 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 12)/6), (view_get_wview()/2) - 420 - 1440 + fs_scene_timer*25 + xshake, view_get_hview() - 110 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 7)/4), (view_get_wview()/2) - 450 -  1440 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 4)/3), (view_get_wview()/2) - 480 -  1440 + fs_scene_timer*25 + xshake, view_get_hview() - 105 + yshake, 1.5, 1.5, 0, c_white, 1)
        
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 3)/5), (view_get_wview()/2) - 350 -  1560 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 14)/6), (view_get_wview()/2) - 380 - 1560 + fs_scene_timer*25 + xshake, view_get_hview() - 100 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 2)/3), (view_get_wview()/2) - 400 -  1560 + fs_scene_timer*25 + xshake, view_get_hview() - 90 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 12)/6), (view_get_wview()/2) - 420 - 1560 + fs_scene_timer*25 + xshake, view_get_hview() - 110 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 7)/4), (view_get_wview()/2) - 450 -  1560 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 4)/3), (view_get_wview()/2) - 480 -  1560 + fs_scene_timer*25 + xshake, view_get_hview() - 105 + yshake, 1.5, 1.5, 0, c_white, 1)
        
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 3)/5), (view_get_wview()/2) - 350 -  1680 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 14)/6), (view_get_wview()/2) - 380 - 1680 + fs_scene_timer*25 + xshake, view_get_hview() - 100 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 2)/3), (view_get_wview()/2) - 400 -  1680 + fs_scene_timer*25 + xshake, view_get_hview() - 90 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 12)/6), (view_get_wview()/2) - 420 - 1680 + fs_scene_timer*25 + xshake, view_get_hview() - 110 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 7)/4), (view_get_wview()/2) - 450 -  1680 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 4)/3), (view_get_wview()/2) - 480 -  1680 + fs_scene_timer*25 + xshake, view_get_hview() - 105 + yshake, 1.5, 1.5, 0, c_white, 1)
        
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 3)/5), (view_get_wview()/2) - 350 -  1800 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 14)/6), (view_get_wview()/2) - 380 - 1800 + fs_scene_timer*25 + xshake, view_get_hview() - 100 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 2)/3), (view_get_wview()/2) - 400 -  1800 + fs_scene_timer*25 + xshake, view_get_hview() - 90 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 12)/6), (view_get_wview()/2) - 420 - 1800 + fs_scene_timer*25 + xshake, view_get_hview() - 110 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 7)/4), (view_get_wview()/2) - 450 -  1800 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 4)/3), (view_get_wview()/2) - 480 -  1800 + fs_scene_timer*25 + xshake, view_get_hview() - 105 + yshake, 1.5, 1.5, 0, c_white, 1)
        
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 3)/5), (view_get_wview()/2) - 350 -  1920 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 14)/6), (view_get_wview()/2) - 380 - 1920 + fs_scene_timer*25 + xshake, view_get_hview() - 100 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 2)/3), (view_get_wview()/2) - 400 -  1920 + fs_scene_timer*25 + xshake, view_get_hview() - 90 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 12)/6), (view_get_wview()/2) - 420 - 1920 + fs_scene_timer*25 + xshake, view_get_hview() - 110 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 7)/4), (view_get_wview()/2) - 450 -  1920 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 4)/3), (view_get_wview()/2) - 480 -  1920 + fs_scene_timer*25 + xshake, view_get_hview() - 105 + yshake, 1.5, 1.5, 0, c_white, 1)
        
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 3)/5), (view_get_wview()/2) - 350 -  2040 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 14)/6), (view_get_wview()/2) - 380 - 2040 + fs_scene_timer*25 + xshake, view_get_hview() - 100 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 2)/3), (view_get_wview()/2) - 400 -  2040 + fs_scene_timer*25 + xshake, view_get_hview() - 90 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 12)/6), (view_get_wview()/2) - 420 - 2040 + fs_scene_timer*25 + xshake, view_get_hview() - 110 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 7)/4), (view_get_wview()/2) - 450 -  2040 + fs_scene_timer*25 + xshake, view_get_hview() - 95 + yshake, 1.5, 1.5, 0, c_white, 1)
        draw_sprite_ext(sprite_get("fs_dash"), floor((fs_scene_timer + 4)/3), (view_get_wview()/2) - 480 -  2040 + fs_scene_timer*25 + xshake, view_get_hview() - 105 + yshake, 1.5, 1.5, 0, c_white, 1)
        break;
    }
    shader_end()
}
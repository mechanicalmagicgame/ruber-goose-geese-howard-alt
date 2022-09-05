//hitbox_update

if attack == AT_DSPECIAL && hbox_num == 1 {
    if !instance_exists(wt) || !wt.free || wt.getting_bashed {
        destroyed = true;
        exit;
    }
    
    x = wt.x + wt.hsp;
    y = wt.y + wt.vsp - 5;
}
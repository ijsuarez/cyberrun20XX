if (global.health_level == 0) {
    global.max_health = 5;
} else if (global.health_level == 1) {
    global.max_health = 7;
} else if (global.health_level == 2) {
    global.max_health = 9;
} else if (global.health_level == 3) {
    global.max_health = 11;
} else if (global.health_level == 4) {
    global.max_health = 13;
} else if (global.health_level == 5) {
    global.max_health = 15;
}
health = global.max_health;

if (global.speed_level == 0) {
    with (obj_bg_manager) {
        scroll_speed_max = 10;
    }
} else if (global.speed_level == 1) {
    with (obj_bg_manager) {
        scroll_speed_max = 15;
    }
} else if (global.speed_level == 2) {
    with (obj_bg_manager) {
        scroll_speed_max = 20;
    }
} else if (global.speed_level == 3) {
    with (obj_bg_manager) {
        scroll_speed_max = 25;
    }
} else if (global.speed_level == 4) {
    with (obj_bg_manager) {
        scroll_speed_max = 30;
    }
}
with (obj_bg_manager) {
    scroll_speed_set = scroll_speed_max;
}

if (global.size_level == 0) {
    object_set_sprite(obj_bullet_player, spr_bullet_friendly);
} else if (global.size_level == 1) {
    object_set_sprite(obj_bullet_player, spr_bullet_friendly_sm);
} else if (global.size_level == 2) {
    object_set_sprite(obj_bullet_player, spr_bullet_friendly_md);
} else if (global.size_level == 3) {
    object_set_sprite(obj_bullet_player, spr_bullet_friendly_lg);
}

if (global.rate_level == 0) {
    with (obj_pod_player) {
        normal_rate = 15;
        normal_speed = 5;
    }
} else if (global.rate_level == 1) {
    with (obj_pod_player) {
        normal_rate = 12;
        normal_speed = 7;
    }
} else if (global.rate_level == 2) {
    with (obj_pod_player) {
        normal_rate = 9;
        normal_speed = 9;
    }
} else if (global.rate_level == 3) {
    with (obj_pod_player) {
        normal_rate = 6;
        normal_speed = 11;
    }
}
with (obj_pod_player) {
    shot_rate = normal_rate;
    bullet_speed = normal_speed;
}

ini_open("savedata.ini");
ini_write_real("save0", "health_level", global.health_level);
ini_write_real("save0", "speed_level", global.speed_level);
ini_write_real("save0", "rate_level", global.rate_level);
ini_write_real("save0", "size_level", global.size_level);
ini_close();

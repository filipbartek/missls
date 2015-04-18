///controller_act(action)

var action = argument0;

if (instance_exists(cannon)) {
    with (cannon) {
        switch (action) {
            case ACTION_LEFT: cannon_rotate_left(); break;
            case ACTION_RIGHT: cannon_rotate_right(); break;
            case ACTION_CHARGE: cannon_missile_charge(); break;
            case ACTION_RELEASE: cannon_missile_fire(); break;
            case ACTION_DETONATE: cannon_missiles_detonate(); break;
            default: show_debug_message("Unrecognized action");
        }
    }
} else {
    if (action == ACTION_CHARGE) {
        cannon_spawn();
    }
}

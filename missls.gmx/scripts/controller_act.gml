///controller_act(action)

assert(is_descendant(obj_controller));

var action = argument0;

if (instance_exists(cannon)) {
    with (cannon) {
        switch (action) {
            case ACTION_CHARGE: cannon_missile_charge(); break;
            case ACTION_RELEASE: cannon_missile_fire(); break;
            case ACTION_DETONATE: cannon_missiles_detonate(); break;
            default: show_debug_message("Unrecognized action");
        }
    }
} else {
    if (action == ACTION_CHARGE) {
        controller_cannon_spawn();
    }
}

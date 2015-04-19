///cannon_get_charge_power()

assert(is_descendant(obj_cannon));

var timer_diff = get_timer() - charge_start;
assert(timer_diff >= 0);

var timer_max = 1000000;

if (timer_diff < timer_max) {
    return timer_diff / timer_max;
} else {
    return 1;
}

//var time_s = timer_diff / 1000000;

//var a = 1/2;

//return 1 - a / (time_s + a);

//return 1 - power(a, time_s);

///cannon_get_charge_power()

assert(is_descendant(obj_cannon));

var timer_diff = get_timer() - charge_start;
assert(timer_diff >= 0);

var time_s = timer_diff / 1000000;

var a = 1/2;

//return 1 - a / (time_s + a);

return 1 - power(a, time_s);

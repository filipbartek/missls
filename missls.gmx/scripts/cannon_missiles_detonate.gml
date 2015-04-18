///cannon_missiles_detonate()

while (!ds_queue_empty(missiles)) {
    var missile = ds_queue_dequeue(missiles);
    if (instance_exists(missile)) {
        with (missile) {
            missile_detonate();
        }
        break;
    }
}

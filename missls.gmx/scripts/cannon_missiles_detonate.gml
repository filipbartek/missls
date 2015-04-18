///cannon_missiles_detonate()

while (true) {
    if (ds_queue_empty(missiles)) break;
    var missile = ds_queue_dequeue(missiles);
    if (instance_exists(missile)) {
        with (missile) {
            missile_detonate();
        }
        break;
    }
}
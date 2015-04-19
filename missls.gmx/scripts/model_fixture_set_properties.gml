///model_fixture_set_properties(fixture)

assert(is_descendant(obj_model));

var fixture = argument0;

physics_fixture_set_density(fixture, fix_density);
physics_fixture_set_friction(fixture, fix_friction);
physics_fixture_set_linear_damping(fixture, fix_damping_linear);
physics_fixture_set_angular_damping(fixture, fix_damping_angular);
physics_fixture_set_restitution(fixture, fix_restitution);
physics_fixture_set_awake(fixture, true);

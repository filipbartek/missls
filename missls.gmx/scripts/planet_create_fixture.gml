///planet_create_fixture()

var fix = physics_fixture_create();

// Shape
physics_fixture_set_circle_shape(fix, r);

// Properties
physics_fixture_set_density(fix, 0);
physics_fixture_set_friction(fix, 0.5);
physics_fixture_set_linear_damping(fix, 0);
physics_fixture_set_angular_damping(fix, 0);
physics_fixture_set_restitution(fix, 0.1);
physics_fixture_set_kinematic(fix);
physics_fixture_set_awake(fix, true);

fixture = physics_fixture_bind(fix, self);

// Clean up
physics_fixture_delete(fix);

var r_meters = r * pixeltometrescale;
mass = density * (r_meters)^2 * pi;

///ufo_create_fixtures()

assert(is_descendant(obj_ufo));

// Initialize fixtures

// Body
var fix_body = physics_fixture_create();
physics_fixture_set_polygon_shape(fix_body);

model_fixture_add_vertex(fix_body, 0);
model_fixture_add_vertex(fix_body, 1);
model_fixture_add_vertex(fix_body, 2);
model_fixture_add_vertex(fix_body, 3);
model_fixture_add_vertex(fix_body, 4);
model_fixture_add_vertex(fix_body, 5);
model_fixture_add_vertex(fix_body, 6);
model_fixture_add_vertex(fix_body, 7);

model_fixture_set_properties(fix_body);

fix_body_bound = physics_fixture_bind(fix_body, self);
physics_fixture_delete(fix_body);

// Cabin
var fix_cabin = physics_fixture_create();

physics_fixture_set_polygon_shape(fix_cabin);
model_fixture_add_vertex(fix_cabin, 7);
model_fixture_add_vertex(fix_cabin, 8);
model_fixture_add_vertex(fix_cabin, 9);
model_fixture_add_vertex(fix_cabin, 0);

model_fixture_set_properties(fix_cabin);

fix_cabin_bound = physics_fixture_bind(fix_cabin, self);
physics_fixture_delete(fix_cabin);

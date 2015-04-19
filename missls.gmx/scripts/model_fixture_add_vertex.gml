///model_fixture_add_vertex(fixture, vertex_i)

assert(is_descendant(obj_model));

var fixture = argument0;
var vertex_i = argument1;

var vertex = ds_list_find_value(vertices, vertex_i);
physics_fixture_add_point(fixture, vertex[0] * scale, vertex[1] * scale);

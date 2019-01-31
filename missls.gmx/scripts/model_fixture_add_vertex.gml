///model_fixture_add_vertex(fixture, vertex_i)

assert(is_descendant(obj_model) or is_descendant(obj_ufo));

var fixture = argument0;
var vertex_i = argument1;

var vertex = ds_list_find_value(vertices, vertex_i);
model_fixture_add_point(fixture, vertex);

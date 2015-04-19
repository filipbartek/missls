///model_draw(pos_x, pos_y, rot)

var pos_x = argument0;
var pos_y = argument1;
var rot = argument2;

assert(is_descendant(obj_model));

assert(ds_exists(vertices, ds_type_list));
assert(ds_exists(edges, ds_type_list));

// Initialize d3d transform
d3d_transform_set_identity();
d3d_transform_add_scaling(scale, scale, 1);
d3d_transform_add_translation(-scale, -scale, 0); // Hack
d3d_transform_add_rotation_z(-rot);
d3d_transform_add_translation(pos_x, pos_y, 0);

// Draw the lines
for (var i = 0; i < ds_list_size(edges); i++) {
    var edge = ds_list_find_value(edges, i);
    var vertex_0 = ds_list_find_value(vertices, edge[0]);
    var vertex_1 = ds_list_find_value(vertices, edge[1]);
    draw_line(vertex_0[0], vertex_0[1], vertex_1[0], vertex_1[1]);
}

// Clean up d3d transform
d3d_transform_set_identity();

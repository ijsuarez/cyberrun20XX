//scr_get_bottom_pt(x1, y1, )

var x1 = argument0;
var y1 = argument1;

var delta_y = vpoint_y - y1;
var delta_x = vpoint_x - x1;

if (delta_x == 0) {
    delta_x = 0.001;
}

var slope = delta_y / delta_x
var y_int = y1 - (slope * x1);

return (view_hview - y_int) / slope;

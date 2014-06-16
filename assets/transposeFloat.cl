__kernel void transposeFloat(__global float *matrix_in, __global float *matrix_out, const int width, const int height)
{
    int c = get_global_id(0);
    int r = get_global_id(1);
    int old_idx = r * width + c;
    int new_idx = c * height + r;

	matrix_out[new_idx] = matrix_in[old_idx];
}

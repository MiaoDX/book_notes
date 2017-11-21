The sparse notes of [An Invitation to 3D Vision: A Tutorial for Everyone](https://github.com/sunglok/3dv_tutorial) slides and possible codes.

> A really good one. <br>-- MiaoDX


### Normalized image plane

![Normalized image plane](pics/p35_normalized_im_plane.png)

It's the very first time I see the notation of `normalized image plane`, and the unit of meter somewhat explain the convert depth info to meter in [slambook example of gaoxiang](https://github.com/gaoxiang12/slambook/blob/master/ch7/pose_estimation_3d2d.cpp#L61).


### Reversed $R$ in camera coordinate (pose)

![Reversed $R$ in camera coordinate](pics/p36_r_reverse.png)

When talking about the rotation, many (not all) literatures refer to the objects moves w.r.t the camera, so there will be a reverse for the camera coordinate. (right?)

### Run PnP twice

![PnP twice for pose estimation](pics/p52_pnp_second_run.png)

I am not so sure of it, but run twice really make a difference?

### Q: decompose homography and the `coarse` navigation of of platform? (p60)


### Epipolar constraint in essential matrix

![Epipolar constraint in essential matrix](pics/p67_essential_matrix.png)

Not so sure of the deduction.

$E=[t]_xR$

### Epipolar line, the physical meaning?

### Degenerate cases of $F$ and $E$ and $H$

![Degenerate cases](pics/p_74_degenrate_cases.png)

Not so sure of the $F$ -- no translation, correspondence from a single plane.

But for $E$, it is pretty clear, since $E=[t]_xR$, a $t$ of $0$ will lead to no suitable results.

### Small but somewhat complete overview of relative pose estimation

![An overview of relative pose estimation](pics/p75_an_overview_of_relative_pose_estimation.png)
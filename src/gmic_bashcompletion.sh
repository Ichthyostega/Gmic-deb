#
#  Bash completion rules for 'gmic'.
#
# This file has been generated automatically.
# Do not edit !
#

_gmic()
{
	local cur prev opts coms
	COMPREPLY=()
	cur="${COMP_WORDS[COMP_CWORD]}"
	prev="${COMP_WORDS[COMP_CWORD-1]}"
	opts="-help --help -debug --debug -add --add -sub --sub -mul --mul -mmul --mmul -div --div -mdiv --mdiv -pow --pow -min --min -max --max -mod --mod -and --and -or --or -xor --xor -bsl --bsl -bsr --bsr -rol --rol -ror --ror -eq --eq -neq --neq -gt --gt -ge --ge -lt --lt -le --le -cos --cos -sin --sin -sinc --sinc -tan --tan -cosh --cosh -sinh --sinh -tanh --tanh -acos --acos -asin --asin -atan --atan -atan2 --atan2 -abs --abs -sign --sign -sqr --sqr -sqrt --sqrt -exp --exp -log --log -log10 --log10 -endian --endian -set --set -fill --fill -threshold --threshold -cut --cut -normalize --normalize -round --round -equalize --equalize -quantize --quantize -noise --noise -rand --rand -norm --norm -orientation --orientation -map --map -index --index -rgb2hsv --rgb2hsv -rgb2hsl --rgb2hsl -rgb2hsi --rgb2hsi -rgb2yuv --rgb2yuv -rgb2ycbcr --rgb2ycbcr -rgb2xyz --rgb2xyz -rgb2lab --rgb2lab -rgb2cmy --rgb2cmy -rgb2cmyk --rgb2cmyk -rgb2srgb --rgb2srgb -srgb2rgb --srgb2rgb -hsv2rgb --hsv2rgb -hsl2rgb --hsl2rgb -hsi2rgb --hsi2rgb -yuv2rgb --yuv2rgb -ycbcr2rgb --ycbcr2rgb -xyz2rgb --xyz2rgb -lab2rgb --lab2rgb -cmy2rgb --cmy2rgb -cmyk2rgb --cmyk2rgb -resize --resize -resize2x --resize2x -resize3x --resize3x -crop --crop -autocrop --autocrop -channels --channels -slices --slices -lines --lines -columns --columns -rotate --rotate -mirror --mirror -shift --shift -transpose --transpose -diagonal --diagonal -invert --invert -solve --solve -trisolve --trisolve -eigen --eigen -svd --svd -dijkstra --dijkstra -permute --permute -unroll --unroll -split --split -append --append -warp --warp -deriche --deriche -blur --blur -bilateral --bilateral -denoise --denoise -smooth --smooth -median --median -sharpen --sharpen -convolve --convolve -correlate --correlate -erode --erode -dilate --dilate -inpaint --inpaint -gradient --gradient -structuretensors --structuretensors -edgetensors --edgetensors -hessian --hessian -haar --haar -ihaar --ihaar -fft --fft -ifft --ifft -histogram --histogram -distance --distance -eikonal --eikonal -watershed --watershed -label --label -displacement --displacement -sort --sort -mse --mse -psnr --psnr -point --point -line --line -polygon --polygon -spline --spline -ellipse --ellipse -text --text -graph --graph -axes --axes -grid --grid -quiver --quiver -flood --flood -image --image -object3d --object3d -plasma --plasma -mandelbrot --mandelbrot -remove --remove -keep --keep -move --move -reverse --reverse -name --name -rotation3d --rotation3d -point3d --point3d -line3d --line3d -triangle3d --triangle3d -quadrangle3d --quadrangle3d -circle3d --circle3d -box3d --box3d -cone3d --cone3d -cylinder3d --cylinder3d -torus3d --torus3d -plane3d --plane3d -sphere3d --sphere3d -elevation3d --elevation3d -isoline3d --isoline3d -isosurface3d --isosurface3d -streamline3d --streamline3d -add3d --add3d -sub3d --sub3d -mul3d --mul3d -div3d --div3d -center3d --center3d -normalize3d --normalize3d -rotate3d --rotate3d -color3d --color3d -opacity3d --opacity3d -reverse3d --reverse3d -primitives3d --primitives3d -texturize3d --texturize3d -split3d --split3d -light3d --light3d -focale3d --focale3d -pose3d --pose3d -specl3d --specl3d -specs3d --specs3d -double3d --double3d -mode3d --mode3d -moded3d --moded3d -background3d --background3d -skip --skip -return --return -status --status -exec --exec -do --do -while --while -repeat --repeat -done --done -break --break -continue --continue -if --if -elif --elif -else --else -endif --endif -local --local -onfail --onfail -endlocal --endlocal -check --check -quit --quit -error --error -progress --progress -input --input -output --output -verbose --verbose -print --print -echo --echo -warning --warning -command --command -type --type -shell --shell -shared --shared -camera --camera -srand --srand -display --display -display3d --display3d -plot --plot -window --window -wait --wait -select --select -h --h -+ --+ -- --- -* --* -** --** -/ --/ -// --// -^ --^ -<< --<< ->> -->> -== --== -!= --!= -> --> ->= -->= -< --< -<= --<= -= --= -f --f -t --t -c --c -n --n -r --r -s --s -a --a -rm --rm -k --k -mv --mv -rv --rv -nm --nm -+3d --+3d --3d ---3d -*3d --*3d -/3d --/3d -c3d --c3d -n3d --n3d -r3d --r3d -col3d --col3d -o3d --o3d -rv3d --rv3d -p3d --p3d -t3d --t3d -s3d --s3d -l3d --l3d -f3d --f3d -sl3d --sl3d -ss3d --ss3d -db3d --db3d -m3d --m3d -md3d --md3d -b3d --b3d -x --x -u --u -b --b -l --l -endl --endl -q --q -e --e -i --i -p --p -o --o -sh --sh -v --v -m --m -d --d -d3d --d3d -w --w -discard --discard -replace --replace -replace_inf --replace_inf -roundify --roundify -complex2polar --complex2polar -polar2complex --polar2complex -plot2value --plot2value -transfer_colors --transfer_colors -normalize_sum --normalize_sum -apply_gamma --apply_gamma -balance_gamma --balance_gamma -apply_curve --apply_curve -negative --negative -tones --tones -t2 --t2 -threshold2 --threshold2 -otsu --otsu -chessboard --chessboard -polka_dots --polka_dots -split_tiles --split_tiles -append_tiles --append_tiles -rr2d --rr2d -resize_ratio2d --resize_ratio2d -r2dx --r2dx -resize2dx --resize2dx -r3dx --r3dx -resize3dx --resize3dx -r2dy --r2dy -resize2dy --resize2dy -r3dy --r3dy -resize3dy --resize3dy -r3dz --r3dz -resize3dz --resize3dz -upscale_smart --upscale_smart -expand_x --expand_x -expand_y --expand_y -expand_z --expand_z -expand_xy --expand_xy -expand_xyz --expand_xyz -shrink_x --shrink_x -shrink_y --shrink_y -shrink_z --shrink_z -shrink_xy --shrink_xy -elevate --elevate -rotate_tileable --rotate_tileable -up --up -update --update -ow --ow -outputw --outputw -op --op -outputp --outputp -on --on -outputn --outputn -d0 --d0 -display0 --display0 -dfft --dfft -display_fft --display_fft -drgba --drgba -display_rgba --display_rgba -dh --dh -display_histogram --display_histogram -dt --dt -display_tensors --display_tensors -dg --dg -display_graph --display_graph -da --da -display_array --display_array -float2int8 --float2int8 -int82float --int82float -float2fft8 --float2fft8 -fft82float --fft82float -text2img --text2img -img2text --img2text -apply_camera --apply_camera -rainbow_lut --rainbow_lut -testimage2d --testimage2d -ball --ball -sierpinski --sierpinski -text_outline --text_outline -histogram_cumul --histogram_cumul -direction2rgb --direction2rgb -vector2tensor --vector2tensor -rgb2bayer --rgb2bayer -bayer2rgb --bayer2rgb -lic --lic -gaussian --gaussian -function1d --function1d -pointcloud --pointcloud -snowflake --snowflake -turbulence --turbulence -marble --marble -rorschach --rorschach -blur_x --blur_x -blur_y --blur_y -blur_z --blur_z -blur_xy --blur_xy -blur_xyz --blur_xyz -blur_angular --blur_angular -blur_radial --blur_radial -blur_linear --blur_linear -dog --dog -pde_flow --pde_flow -heat_flow --heat_flow -meancurvature_flow --meancurvature_flow -tv_flow --tv_flow -inpaint_flow --inpaint_flow -remove_hotpixels --remove_hotpixels -richardson_lucy --richardson_lucy -unsharp --unsharp -unsharp_octave --unsharp_octave -normalize_local --normalize_local -map_tones --map_tones -map_tones_fast --map_tones_fast -fftpolar --fftpolar -ifftpolar --ifftpolar -convolve_fft --convolve_fft -deconvolve_fft --deconvolve_fft -bandpass --bandpass -watermark_fourier --watermark_fourier -split_freq --split_freq -compose_freq --compose_freq -erode_oct --erode_oct -dilate_oct --dilate_oct -erode_circ --erode_circ -dilate_circ --dilate_circ -kuwahara --kuwahara -thinning --thinning -skeleton --skeleton -hough --hough -gradient_norm --gradient_norm -gradient_orientation --gradient_orientation -gradient2rgb --gradient2rgb -laplacian --laplacian -divergence --divergence -inn --inn -iee --iee -curvature --curvature -edges --edges -isophotes --isophotes -topographic_map --topographic_map -segment_watershed --segment_watershed -minimal_path --minimal_path -array --array -array_fade --array_fade -array_mirror --array_mirror -array_random --array_random -array_pattern --array_pattern -taquin --taquin -imagegrid --imagegrid -frame --frame -frame_fuzzy --frame_fuzzy -frame_round --frame_round -frame_blur --frame_blur -frame_pattern --frame_pattern -rotate_tiles --rotate_tiles -shift_tiles --shift_tiles -linearize_tiles --linearize_tiles -quadratize_tiles --quadratize_tiles -tunnel --tunnel -polaroid --polaroid -drop_shadow --drop_shadow -tetris --tetris -mosaic --mosaic -stained_glass --stained_glass -puzzle --puzzle -sponge --sponge -hearts --hearts -color_ellipses --color_ellipses -ellipsionism --ellipsionism -whirls --whirls -cartoon --cartoon -drawing --drawing -draw_whirl --draw_whirl -stencil --stencil -stencilbw --stencilbw -pencilbw --pencilbw -hardsketchbw --hardsketchbw -houghsketchbw --houghsketchbw -sketchbw --sketchbw -ditheredbw --ditheredbw -dotsbw --dotsbw -warhol --warhol -cubism --cubism -glow --glow -old_photo --old_photo -fire_edges --fire_edges -euclidean2polar --euclidean2polar -polar2euclidean --polar2euclidean -warp_perspective --warp_perspective -water --water -wave --wave -twirl --twirl -map_sphere --map_sphere -flower --flower -zoom --zoom -deform --deform -fisheye --fisheye -transform_polar --transform_polar -kaleidoscope --kaleidoscope -rotoidoscope --rotoidoscope -spread --spread -shade_stripes --shade_stripes -stripes_y --stripes_y -shadow_patch --shadow_patch -light_patch --light_patch -light_relief --light_relief -noise_hurl --noise_hurl -pixelize --pixelize -paper --paper -cracks --cracks -watermark_visible --watermark_visible -apply_channels --apply_channels -to_gray --to_gray -to_graya --to_graya -to_rgb --to_rgb -to_rgba --to_rgba -to_colormode --to_colormode -remove_opacity --remove_opacity -select_color --select_color -replace_color --replace_color -fc --fc -fill_color --fill_color -luminance --luminance -mix_rgb --mix_rgb -mix_channels --mix_channels -solarize --solarize -sepia --sepia -split_opacity --split_opacity -red_eye --red_eye -rgb2lch --rgb2lch -rgb2hsv8 --rgb2hsv8 -rgb2hsl8 --rgb2hsl8 -rgb2hsi8 --rgb2hsi8 -rgb2yuv8 --rgb2yuv8 -rgb2xyz8 --rgb2xyz8 -rgb2lab8 --rgb2lab8 -rgb2lch8 --rgb2lch8 -lch2rgb --lch2rgb -lab2lch --lab2lch -lch2lab --lch2lab -hsv82rgb --hsv82rgb -hsl82rgb --hsl82rgb -hsi82rgb --hsi82rgb -yuv82rgb --yuv82rgb -xyz82rgb --xyz82rgb -lab82rgb --lab82rgb -lch82rgb --lch82rgb -fade_x --fade_x -fade_y --fade_y -fade_z --fade_z -fade_radial --fade_radial -fade_diamond --fade_diamond -fade_linear --fade_linear -compose_channels --compose_channels -compose_rgba --compose_rgba -compose_average --compose_average -compose_multiply --compose_multiply -compose_screen --compose_screen -compose_darken --compose_darken -compose_lighten --compose_lighten -compose_difference --compose_difference -compose_negation --compose_negation -compose_exclusion --compose_exclusion -compose_overlay --compose_overlay -compose_hardlight --compose_hardlight -compose_softlight --compose_softlight -compose_dodge --compose_dodge -compose_colorburn --compose_colorburn -compose_reflect --compose_reflect -compose_freeze --compose_freeze -compose_stamp --compose_stamp -compose_interpolation --compose_interpolation -compose_grainextract --compose_grainextract -compose_grainmerge --compose_grainmerge -compose_xor --compose_xor -compose_hue --compose_hue -compose_saturation --compose_saturation -compose_value --compose_value -compose_luminance --compose_luminance -compose_lightness --compose_lightness -compose_edges --compose_edges -compose_fade --compose_fade -compose_shapeaverage --compose_shapeaverage -cross_correlation --cross_correlation -normalized_cross_correlation --normalized_cross_correlation -phase_correlation --phase_correlation -morph --morph -register_nonrigid --register_nonrigid -register_rigid --register_rigid -deinterlace --deinterlace -animate --animate -empty3d --empty3d -apply_pose3d --apply_pose3d -animate3d --animate3d -colorcube3d --colorcube3d -distribution3d --distribution3d -histogram3d --histogram3d -pointcloud3d --pointcloud3d -pca_patch3d --pca_patch3d -balls3d --balls3d -circles3d --circles3d -lissajous3d --lissajous3d -imageplane3d --imageplane3d -imagesphere3d --imagesphere3d -imagecube3d --imagecube3d -image6cube3d --image6cube3d -imagepyramid3d --imagepyramid3d -projections3d --projections3d -pyramid3d --pyramid3d -gyroid3d --gyroid3d -weird3d --weird3d -text3d --text3d -gmic3d --gmic3d -extrude3d --extrude3d -lathe3d --lathe3d -cup3d --cup3d -sierpinski3d --sierpinski3d -parametric3d --parametric3d -snapshot3d --snapshot3d -label_points3d --label_points3d -x_mandelbrot --x_mandelbrot -x_fisheye --x_fisheye -x_spline --x_spline -x_blobs --x_blobs -x_shadebobs --x_shadebobs -x_tictactoe --x_tictactoe -x_fourier --x_fourier -x_hough --x_hough -x_minimal_path --x_minimal_path -x_life --x_life -x_fire --x_fire -x_light --x_light -x_jawbreaker --x_jawbreaker -x_paint --x_paint -pink --pink -pink_grayskel --pink_grayskel -pink_skelpar --pink_skelpar -pink_skelend --pink_skelend -pink_skelcurv --pink_skelcurv -pink_skeleton --pink_skeleton -pink_lvkern --pink_lvkern -pink_htkern --pink_htkern -pink_wshed --pink_wshed -pink_reg_minima --pink_reg_minima -pink_heightminima --pink_heightminima -pink_heightmaxima --pink_heightmaxima -reset --reset -arg --arg -path_tmp --path_tmp -path_user --path_user -file_slash --file_slash -file_mv --file_mv -file_rm --file_rm -file_rand --file_rand -at --at -RGB --RGB -RGBA --RGBA -uncase --uncase -bin --bin -oct --oct -dec --dec -hex --hex -asc --asc -dec2bin --dec2bin -dec2oct --dec2oct -dec2hex --dec2hex -dec2asc --dec2asc -hex2dec --hex2dec -oct2dec --oct2dec -bin2dec --bin2dec -string2hex --string2hex -hex2string --hex2string -strcmp --strcmp -quote --quote -fact --fact -gcd --gcd -padint --padint -filename --filename -max_whds --max_whds -max_whd --max_whd -max_wh --max_wh -max_s --max_s -min_whds --min_whds -min_whd --min_whd -min_wh --min_wh -min_s --min_s -fitratio_wh --fitratio_wh -fitscreen --fitscreen -is_percent --is_percent -is_windows --is_windows -gmicky --gmicky -gpt --gpt"

	coms="help debug add sub mul mmul div mdiv pow min max mod and or xor bsl bsr rol ror eq neq gt ge lt le cos sin sinc tan cosh sinh tanh acos asin atan atan2 abs sign sqr sqrt exp log log10 endian set fill threshold cut normalize round equalize quantize noise rand norm orientation map index rgb2hsv rgb2hsl rgb2hsi rgb2yuv rgb2ycbcr rgb2xyz rgb2lab rgb2cmy rgb2cmyk rgb2srgb srgb2rgb hsv2rgb hsl2rgb hsi2rgb yuv2rgb ycbcr2rgb xyz2rgb lab2rgb cmy2rgb cmyk2rgb resize resize2x resize3x crop autocrop channels slices lines columns rotate mirror shift transpose diagonal invert solve trisolve eigen svd dijkstra permute unroll split append warp deriche blur bilateral denoise smooth median sharpen convolve correlate erode dilate inpaint gradient structuretensors edgetensors hessian haar ihaar fft ifft histogram distance eikonal watershed label displacement sort mse psnr point line polygon spline ellipse text graph axes grid quiver flood image object3d plasma mandelbrot remove keep move reverse name rotation3d point3d line3d triangle3d quadrangle3d circle3d box3d cone3d cylinder3d torus3d plane3d sphere3d elevation3d isoline3d isosurface3d streamline3d add3d sub3d mul3d div3d center3d normalize3d rotate3d color3d opacity3d reverse3d primitives3d texturize3d split3d light3d focale3d pose3d specl3d specs3d double3d mode3d moded3d background3d skip return status exec do while repeat done break continue if elif else endif local onfail endlocal check quit error progress input output verbose print echo warning command type shell shared camera srand display display3d plot window wait select h + - * ** / // ^ << >> == != > >= < <= = f t c n r s a rm k mv rv nm +3d -3d *3d /3d c3d n3d r3d col3d o3d rv3d p3d t3d s3d l3d f3d sl3d ss3d db3d m3d md3d b3d x u b l endl q e i p o sh v m d d3d w discard replace replace_inf roundify complex2polar polar2complex plot2value transfer_colors normalize_sum apply_gamma balance_gamma apply_curve negative tones t2 threshold2 otsu chessboard polka_dots split_tiles append_tiles rr2d resize_ratio2d r2dx resize2dx r3dx resize3dx r2dy resize2dy r3dy resize3dy r3dz resize3dz upscale_smart expand_x expand_y expand_z expand_xy expand_xyz shrink_x shrink_y shrink_z shrink_xy elevate rotate_tileable up update ow outputw op outputp on outputn d0 display0 dfft display_fft drgba display_rgba dh display_histogram dt display_tensors dg display_graph da display_array float2int8 int82float float2fft8 fft82float text2img img2text apply_camera rainbow_lut testimage2d ball sierpinski text_outline histogram_cumul direction2rgb vector2tensor rgb2bayer bayer2rgb lic gaussian function1d pointcloud snowflake turbulence marble rorschach blur_x blur_y blur_z blur_xy blur_xyz blur_angular blur_radial blur_linear dog pde_flow heat_flow meancurvature_flow tv_flow inpaint_flow remove_hotpixels richardson_lucy unsharp unsharp_octave normalize_local map_tones map_tones_fast fftpolar ifftpolar convolve_fft deconvolve_fft bandpass watermark_fourier split_freq compose_freq erode_oct dilate_oct erode_circ dilate_circ kuwahara thinning skeleton hough gradient_norm gradient_orientation gradient2rgb laplacian divergence inn iee curvature edges isophotes topographic_map segment_watershed minimal_path array array_fade array_mirror array_random array_pattern taquin imagegrid frame frame_fuzzy frame_round frame_blur frame_pattern rotate_tiles shift_tiles linearize_tiles quadratize_tiles tunnel polaroid drop_shadow tetris mosaic stained_glass puzzle sponge hearts color_ellipses ellipsionism whirls cartoon drawing draw_whirl stencil stencilbw pencilbw hardsketchbw houghsketchbw sketchbw ditheredbw dotsbw warhol cubism glow old_photo fire_edges euclidean2polar polar2euclidean warp_perspective water wave twirl map_sphere flower zoom deform fisheye transform_polar kaleidoscope rotoidoscope spread shade_stripes stripes_y shadow_patch light_patch light_relief noise_hurl pixelize paper cracks watermark_visible apply_channels to_gray to_graya to_rgb to_rgba to_colormode remove_opacity select_color replace_color fc fill_color luminance mix_rgb mix_channels solarize sepia split_opacity red_eye rgb2lch rgb2hsv8 rgb2hsl8 rgb2hsi8 rgb2yuv8 rgb2xyz8 rgb2lab8 rgb2lch8 lch2rgb lab2lch lch2lab hsv82rgb hsl82rgb hsi82rgb yuv82rgb xyz82rgb lab82rgb lch82rgb fade_x fade_y fade_z fade_radial fade_diamond fade_linear compose_channels compose_rgba compose_average compose_multiply compose_screen compose_darken compose_lighten compose_difference compose_negation compose_exclusion compose_overlay compose_hardlight compose_softlight compose_dodge compose_colorburn compose_reflect compose_freeze compose_stamp compose_interpolation compose_grainextract compose_grainmerge compose_xor compose_hue compose_saturation compose_value compose_luminance compose_lightness compose_edges compose_fade compose_shapeaverage cross_correlation normalized_cross_correlation phase_correlation morph register_nonrigid register_rigid deinterlace animate empty3d apply_pose3d animate3d colorcube3d distribution3d histogram3d pointcloud3d pca_patch3d balls3d circles3d lissajous3d imageplane3d imagesphere3d imagecube3d image6cube3d imagepyramid3d projections3d pyramid3d gyroid3d weird3d text3d gmic3d extrude3d lathe3d cup3d sierpinski3d parametric3d snapshot3d label_points3d x_mandelbrot x_fisheye x_spline x_blobs x_shadebobs x_tictactoe x_fourier x_hough x_minimal_path x_life x_fire x_light x_jawbreaker x_paint pink pink_grayskel pink_skelpar pink_skelend pink_skelcurv pink_skeleton pink_lvkern pink_htkern pink_wshed pink_reg_minima pink_heightminima pink_heightmaxima reset arg path_tmp path_user file_slash file_mv file_rm file_rand at RGB RGBA uncase bin oct dec hex asc dec2bin dec2oct dec2hex dec2asc hex2dec oct2dec bin2dec string2hex hex2string strcmp quote fact gcd padint filename max_whds max_whd max_wh max_s min_whds min_whd min_wh min_s fitratio_wh fitscreen is_percent is_windows gmicky gpt"

	case "${prev}" in
		"-help" | "--help")
		COMPREPLY=( $(compgen -W "$coms" -- "$cur" ) )
		return 0
		;;
		"-add" | "--add")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-sub" | "--sub")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-mul" | "--mul")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-mmul" | "--mmul")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-div" | "--div")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-mdiv" | "--mdiv")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-pow" | "--pow")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-min" | "--min")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-max" | "--max")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-mod" | "--mod")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-and" | "--and")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-or" | "--or")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-xor" | "--xor")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-bsl" | "--bsl")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-bsr" | "--bsr")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-rol" | "--rol")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-ror" | "--ror")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-eq" | "--eq")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-neq" | "--neq")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-gt" | "--gt")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-ge" | "--ge")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-lt" | "--lt")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-le" | "--le")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-atan2" | "--atan2")
		COMPREPLY=( $(compgen -W "[x_argument] >") )
		return 0
		;;
		"-set" | "--set")
		COMPREPLY=( $(compgen -W "value,_x[%],_y[%],_z[%],_c[%] >") )
		return 0
		;;
		"-fill" | "--fill")
		COMPREPLY=( $(compgen -W "value1,_value2,.. [image] \'formula\'") )
		return 0
		;;
		"-threshold" | "--threshold")
		COMPREPLY=( $(compgen -W "value[%],_soft (noargs)") )
		return 0
		;;
		"-cut" | "--cut")
		COMPREPLY=( $(compgen -W "{value0[%]|[image0]},{value1[%]|[image1]} [image] (noargs)") )
		return 0
		;;
		"-normalize" | "--normalize")
		COMPREPLY=( $(compgen -W "{value0[%]|[image0]},{value1[%]|[image1]} [image]") )
		return 0
		;;
		"-round" | "--round")
		COMPREPLY=( $(compgen -W "rounding_value>=0,_rounding_type (noargs)") )
		return 0
		;;
		"-equalize" | "--equalize")
		COMPREPLY=( $(compgen -W "nb_levels>0[%],_value0[%],_value1[%] >") )
		return 0
		;;
		"-quantize" | "--quantize")
		COMPREPLY=( $(compgen -W "nb_levels>0[%],_preserve_value_range={0|1} >") )
		return 0
		;;
		"-noise" | "--noise")
		COMPREPLY=( $(compgen -W "std_variation>=0[%],_noise_type >") )
		return 0
		;;
		"-rand" | "--rand")
		COMPREPLY=( $(compgen -W "{value0[%]|[image0]},{value1[%]|[image1]} [image]") )
		return 0
		;;
		"-map" | "--map")
		COMPREPLY=( $(compgen -W "[palette] predefined_palette") )
		return 0
		;;
		"-index" | "--index")
		COMPREPLY=( $(compgen -W "{[palette]|predefined_palette},_is_dithered={0|1},_map_palette={0|1} >") )
		return 0
		;;
		"-resize" | "--resize")
		COMPREPLY=( $(compgen -W "[image],_interpolation,_boundary,_cx,_cy,_cz,_cc {[image_w]|width>0[%]},_{[image_h]|height>0[%]},_{[image_d]|depth>0[%]}, _{[image_s]|spectrum>0[%]},_interpolation,_boundary,_cx,_cy,_cz,_cc (noargs)") )
		return 0
		;;
		"-crop" | "--crop")
		COMPREPLY=( $(compgen -W "x0[%],x1[%],_boundary x0[%],y0[%],x1[%],y1[%],_boundary x0[%],y0[%],z0[%],x1[%],y1[%],z1[%],_boundary x0[%],y0[%],z0[%],c0[%],x1[%],y1[%],z1[%],c1[%],_boundary (noargs)") )
		return 0
		;;
		"-autocrop" | "--autocrop")
		COMPREPLY=( $(compgen -W "value1,value2,.. >") )
		return 0
		;;
		"-channels" | "--channels")
		COMPREPLY=( $(compgen -W "{[image0]|c0[%]},_{[image1]|c1[%]} >") )
		return 0
		;;
		"-slices" | "--slices")
		COMPREPLY=( $(compgen -W "{[image0]|z0[%]},_{[image1]|z1[%]} >") )
		return 0
		;;
		"-lines" | "--lines")
		COMPREPLY=( $(compgen -W "{[image0]|y0[%]},_{[image1]|y1[%]} >") )
		return 0
		;;
		"-columns" | "--columns")
		COMPREPLY=( $(compgen -W "{[image0]|x0[%]},_{[image1]|x1[%]} >") )
		return 0
		;;
		"-rotate" | "--rotate")
		COMPREPLY=( $(compgen -W "angle,_boundary,_interpolation,_cx[%],_cy[%],_zoom >") )
		return 0
		;;
		"-mirror" | "--mirror")
		COMPREPLY=( $(compgen -W "{x|y|z}..{x|y|z} >") )
		return 0
		;;
		"-shift" | "--shift")
		COMPREPLY=( $(compgen -W "vx[%],_vy[%],_vz[%],_vc[%],_boundary >") )
		return 0
		;;
		"-solve" | "--solve")
		COMPREPLY=( $(compgen -W "[image] >") )
		return 0
		;;
		"-trisolve" | "--trisolve")
		COMPREPLY=( $(compgen -W "[image] >") )
		return 0
		;;
		"-dijkstra" | "--dijkstra")
		COMPREPLY=( $(compgen -W "starting_node>=0,ending_node>=0 >") )
		return 0
		;;
		"-permute" | "--permute")
		COMPREPLY=( $(compgen -W "permutation_string >") )
		return 0
		;;
		"-unroll" | "--unroll")
		COMPREPLY=( $(compgen -W "axis={x|y|z|c} >") )
		return 0
		;;
		"-split" | "--split")
		COMPREPLY=( $(compgen -W "axis={x|y|z|c},_nb_parts keep_splitting_values={+|-},value1,value2,...") )
		return 0
		;;
		"-append" | "--append")
		COMPREPLY=( $(compgen -W "axis={x|y|z|c},_alignment >") )
		return 0
		;;
		"-warp" | "--warp")
		COMPREPLY=( $(compgen -W "[warping_field],_is_relative={0|1},_interpolation={0|1},_boundary,_nb_frames>0 >") )
		return 0
		;;
		"-deriche" | "--deriche")
		COMPREPLY=( $(compgen -W "std_variation>=0[%],order={0|1|2},axis={x|y|z|c},_boundary >") )
		return 0
		;;
		"-blur" | "--blur")
		COMPREPLY=( $(compgen -W "std_variation>=0[%],_boundary >") )
		return 0
		;;
		"-bilateral" | "--bilateral")
		COMPREPLY=( $(compgen -W "std_variation_s>0[%],std_variation_r>0 >") )
		return 0
		;;
		"-denoise" | "--denoise")
		COMPREPLY=( $(compgen -W "std_variation_s>=0,_std_variation_p>=0,_patch_size>=0,_lookup_size>=0,_smoothness, _fast_approx={0|1}") )
		return 0
		;;
		"-smooth" | "--smooth")
		COMPREPLY=( $(compgen -W "amplitude>=0,_sharpness>=0,_anisotropy,_alpha,_sigma,_dl>0,_da>0,_precision>0, interpolation,_fast_approx={0|1} nb_iterations>=0,_sharpness>=0,_anisotropy,_alpha,_sigma,_dt>0,0 [tensor_field],_amplitude>=0,_dl>0,_da>0,_precision>0,_interpolation,_fast_approx={0|1} [tensor_field],_nb_iters>=0,_dt>0,0") )
		return 0
		;;
		"-median" | "--median")
		COMPREPLY=( $(compgen -W "radius>=0 >") )
		return 0
		;;
		"-sharpen" | "--sharpen")
		COMPREPLY=( $(compgen -W "amplitude>=0 amplitude>=0,edge>=0,_alpha,_sigma") )
		return 0
		;;
		"-convolve" | "--convolve")
		COMPREPLY=( $(compgen -W "[mask],_boundary,_is_normalized={0|1} >") )
		return 0
		;;
		"-correlate" | "--correlate")
		COMPREPLY=( $(compgen -W "[mask],_boundary,_is_normalized={0|1} >") )
		return 0
		;;
		"-erode" | "--erode")
		COMPREPLY=( $(compgen -W "size>=0 size_x>=0,size_y>=0,_size_z>=0 [mask],_boundary,_is_normalized={0|1}") )
		return 0
		;;
		"-dilate" | "--dilate")
		COMPREPLY=( $(compgen -W "size>=0 size_x>=0,size_y>=0,size_z>=0 [mask],_boundary,_is_normalized={0|1}") )
		return 0
		;;
		"-inpaint" | "--inpaint")
		COMPREPLY=( $(compgen -W "[mask] >") )
		return 0
		;;
		"-gradient" | "--gradient")
		COMPREPLY=( $(compgen -W "{x|y|z}..{x|y|z},_scheme (noargs)") )
		return 0
		;;
		"-structuretensors" | "--structuretensors")
		COMPREPLY=( $(compgen -W "_scheme >") )
		return 0
		;;
		"-edgetensors" | "--edgetensors")
		COMPREPLY=( $(compgen -W "sharpness>=0,_anisotropy,_alpha,_sigma,is_sqrt={0|1} >") )
		return 0
		;;
		"-hessian" | "--hessian")
		COMPREPLY=( $(compgen -W "{xx|xy|xz|yy|yz|zz}..{xx|xy|xz|yy|yz|zz} (noargs)") )
		return 0
		;;
		"-haar" | "--haar")
		COMPREPLY=( $(compgen -W "scale>0 >") )
		return 0
		;;
		"-ihaar" | "--ihaar")
		COMPREPLY=( $(compgen -W "scale>0 >") )
		return 0
		;;
		"-histogram" | "--histogram")
		COMPREPLY=( $(compgen -W "nb_levels>0[%],_val0[%],_val1[%] >") )
		return 0
		;;
		"-distance" | "--distance")
		COMPREPLY=( $(compgen -W "isovalue[%],_metric isovalue[%],[custom_metric] x[%]>=0,y[%]>=0,z[%]>=0") )
		return 0
		;;
		"-eikonal" | "--eikonal")
		COMPREPLY=( $(compgen -W "nb_iterations>=0,_band_size>=0 >") )
		return 0
		;;
		"-watershed" | "--watershed")
		COMPREPLY=( $(compgen -W "[priority_image],_fill_lines={0|1} >") )
		return 0
		;;
		"-label" | "--label")
		COMPREPLY=( $(compgen -W "tolerance>=0,is_high_connectivity={0|1} >") )
		return 0
		;;
		"-displacement" | "--displacement")
		COMPREPLY=( $(compgen -W "[source_image],_smoothness,_precision>=0,_nb_scales>=0,iteration_max>=0, is_backward={0|1}") )
		return 0
		;;
		"-sort" | "--sort")
		COMPREPLY=( $(compgen -W "_ordering={+|-},_axis={x|y|z|c} >") )
		return 0
		;;
		"-psnr" | "--psnr")
		COMPREPLY=( $(compgen -W "_max_value >") )
		return 0
		;;
		"-point" | "--point")
		COMPREPLY=( $(compgen -W "x[%],y[%],_z[%],_opacity,_color1,.. >") )
		return 0
		;;
		"-line" | "--line")
		COMPREPLY=( $(compgen -W "x0[%],y0[%],x1[%],y1[%],_opacity,_pattern,_color1,..\' >") )
		return 0
		;;
		"-polygon" | "--polygon")
		COMPREPLY=( $(compgen -W "N,x1[%],y1[%],..,xN[%],yN[%],_opacity,_pattern,_color1,.. >") )
		return 0
		;;
		"-spline" | "--spline")
		COMPREPLY=( $(compgen -W "x0[%],y0[%],u0[%],v0[%],x1[%],y1[%],u1[%],v1[%],_opacity,_pattern,_color1,.. >") )
		return 0
		;;
		"-ellipse" | "--ellipse")
		COMPREPLY=( $(compgen -W "x[%],y[%],R[%],r[%],_angle,_opacity,_pattern,_color1,.. >") )
		return 0
		;;
		"-text" | "--text")
		COMPREPLY=( $(compgen -W "text,_x[%],_y[%],_font_height>=0,_opacity,_color1,.. >") )
		return 0
		;;
		"-graph" | "--graph")
		COMPREPLY=( $(compgen -W "[function_image],_plot_type,_vertex_type,_ymin,_ymax,_opacity,_pattern,_color1,.. \'formula\',_resolution>=0,_plot_type,_vertex_type,_xmin,xmax,_ymin,_ymax,_opacity,_pattern,_color1,..") )
		return 0
		;;
		"-axes" | "--axes")
		COMPREPLY=( $(compgen -W "x0,x1,y0,y1,_opacity,_pattern,_color1,.. >") )
		return 0
		;;
		"-grid" | "--grid")
		COMPREPLY=( $(compgen -W "size_x[%]>=0,size_y[%]>=0,_offset_x[%],_offset_y[%],_opacity,_pattern,_color1,.. >") )
		return 0
		;;
		"-quiver" | "--quiver")
		COMPREPLY=( $(compgen -W "[function_image],_sampling>0,_factor,_is_arrow={0|1},_opacity,_pattern,_color1,.. >") )
		return 0
		;;
		"-flood" | "--flood")
		COMPREPLY=( $(compgen -W "x[%],_y[%],_z[%],_tolerance>=0,_is_high_connectivity={0|1},_opacity,_color1,.. >") )
		return 0
		;;
		"-image" | "--image")
		COMPREPLY=( $(compgen -W "[sprite],_x[%],_y[%],_z[%],_c[%],_opacity,_[sprite_mask],_max_opacity_mask >") )
		return 0
		;;
		"-object3d" | "--object3d")
		COMPREPLY=( $(compgen -W "[object3d],_x[%],_y[%],_z,_opacity,_is_zbuffer={0|1} >") )
		return 0
		;;
		"-plasma" | "--plasma")
		COMPREPLY=( $(compgen -W "alpha,_beta,_opacity >") )
		return 0
		;;
		"-mandelbrot" | "--mandelbrot")
		COMPREPLY=( $(compgen -W "z0r,z0i,z1r,z1i,_iteration_max>=0,_is_julia={0|1},_c0r,_c0i,_opacity >") )
		return 0
		;;
		"-move" | "--move")
		COMPREPLY=( $(compgen -W "position[%] >") )
		return 0
		;;
		"-name" | "--name")
		COMPREPLY=( $(compgen -W "name >") )
		return 0
		;;
		"-rotation3d" | "--rotation3d")
		COMPREPLY=( $(compgen -W "u,v,w,angle >") )
		return 0
		;;
		"-point3d" | "--point3d")
		COMPREPLY=( $(compgen -W "x0,y0,z0 >") )
		return 0
		;;
		"-line3d" | "--line3d")
		COMPREPLY=( $(compgen -W "x0,y0,z0,x1,y1,z1 >") )
		return 0
		;;
		"-triangle3d" | "--triangle3d")
		COMPREPLY=( $(compgen -W "x0,y0,z0,x1,y1,z1,x2,y2,z2 >") )
		return 0
		;;
		"-quadrangle3d" | "--quadrangle3d")
		COMPREPLY=( $(compgen -W "x0,y0,z0,x1,y1,z1,x2,y2,z2,x3,y3,z3 >") )
		return 0
		;;
		"-circle3d" | "--circle3d")
		COMPREPLY=( $(compgen -W "x0,y0,z0,radius>=0 >") )
		return 0
		;;
		"-box3d" | "--box3d")
		COMPREPLY=( $(compgen -W "size size_x,size_y,size_z") )
		return 0
		;;
		"-cone3d" | "--cone3d")
		COMPREPLY=( $(compgen -W "radius,height,_nb_subdivisions>0 >") )
		return 0
		;;
		"-cylinder3d" | "--cylinder3d")
		COMPREPLY=( $(compgen -W "radius,height,_nb_subdivisions>0 >") )
		return 0
		;;
		"-torus3d" | "--torus3d")
		COMPREPLY=( $(compgen -W "radius1,radius2,_nb_subdivisions1>0,_nb_subdivisions2>0 >") )
		return 0
		;;
		"-plane3d" | "--plane3d")
		COMPREPLY=( $(compgen -W "size_x,_size_y,_nb_subdivisions_x>0,_nb_subdisivions_y>0 >") )
		return 0
		;;
		"-sphere3d" | "--sphere3d")
		COMPREPLY=( $(compgen -W "radius,_nb_recursions>=0 >") )
		return 0
		;;
		"-elevation3d" | "--elevation3d")
		COMPREPLY=( $(compgen -W "z-factor [elevation] \'formula\',_x0,_y0,_x1,y1,_size_x[%],_size_y[%] (noargs)") )
		return 0
		;;
		"-isoline3d" | "--isoline3d")
		COMPREPLY=( $(compgen -W "isovalue[%] \'formula\',value,_x0,_y0,_x1,_y1,_size_x>0[%],_size_y>0[%]") )
		return 0
		;;
		"-isosurface3d" | "--isosurface3d")
		COMPREPLY=( $(compgen -W "isovalue[%] \'formula\',value,_x0,_y0,_z0,_x1,_y1,_z1,_size_x>0[%],_size_y>0[%],_size_z>0[%]") )
		return 0
		;;
		"-streamline3d" | "--streamline3d")
		COMPREPLY=( $(compgen -W "x[%],y[%],z[%],_L>=0,_dl>0,_interpolation,_is_backward={0|1},_is_oriented={0|1} \'formula\',x,y,z,_L>=0,_dl>0,_interpolation,_is_backward={0|1},_is_oriented={0|1}") )
		return 0
		;;
		"-add3d" | "--add3d")
		COMPREPLY=( $(compgen -W "tx,_ty,_tz [object3d] (noargs)") )
		return 0
		;;
		"-sub3d" | "--sub3d")
		COMPREPLY=( $(compgen -W "tx,_ty,_tz >") )
		return 0
		;;
		"-mul3d" | "--mul3d")
		COMPREPLY=( $(compgen -W "factor factor_x,factor_y,_factor_z") )
		return 0
		;;
		"-div3d" | "--div3d")
		COMPREPLY=( $(compgen -W "factor factor_x,factor_y,_factor_z") )
		return 0
		;;
		"-rotate3d" | "--rotate3d")
		COMPREPLY=( $(compgen -W "u,v,w,angle >") )
		return 0
		;;
		"-color3d" | "--color3d")
		COMPREPLY=( $(compgen -W "R,G,B,_opacity >") )
		return 0
		;;
		"-opacity3d" | "--opacity3d")
		COMPREPLY=( $(compgen -W "opacity >") )
		return 0
		;;
		"-primitives3d" | "--primitives3d")
		COMPREPLY=( $(compgen -W "mode >") )
		return 0
		;;
		"-texturize3d" | "--texturize3d")
		COMPREPLY=( $(compgen -W "[ind_texture],_[ind_coords] >") )
		return 0
		;;
		"-light3d" | "--light3d")
		COMPREPLY=( $(compgen -W "position_x,position_y,position_z [texture] (noargs)") )
		return 0
		;;
		"-focale3d" | "--focale3d")
		COMPREPLY=( $(compgen -W "focale >") )
		return 0
		;;
		"-pose3d" | "--pose3d")
		COMPREPLY=( $(compgen -W "value1,..,value16 (noargs)") )
		return 0
		;;
		"-specl3d" | "--specl3d")
		COMPREPLY=( $(compgen -W "value>=0 >") )
		return 0
		;;
		"-specs3d" | "--specs3d")
		COMPREPLY=( $(compgen -W "value>=0 >") )
		return 0
		;;
		"-double3d" | "--double3d")
		COMPREPLY=( $(compgen -W "is_doubled={0|1} >") )
		return 0
		;;
		"-mode3d" | "--mode3d")
		COMPREPLY=( $(compgen -W "mode >") )
		return 0
		;;
		"-moded3d" | "--moded3d")
		COMPREPLY=( $(compgen -W "mode >") )
		return 0
		;;
		"-background3d" | "--background3d")
		COMPREPLY=( $(compgen -W "R,_G,_B [image] (noargs)") )
		return 0
		;;
		"-skip" | "--skip")
		COMPREPLY=( $(compgen -W "item >") )
		return 0
		;;
		"-status" | "--status")
		COMPREPLY=( $(compgen -W "item $variable") )
		return 0
		;;
		"-exec" | "--exec")
		COMPREPLY=( $(compgen -W "command >") )
		return 0
		;;
		"-while" | "--while")
		COMPREPLY=( $(compgen -W "boolean filename") )
		return 0
		;;
		"-repeat" | "--repeat")
		COMPREPLY=( $(compgen -W "nb_iterations >") )
		return 0
		;;
		"-if" | "--if")
		COMPREPLY=( $(compgen -W "boolean filename") )
		return 0
		;;
		"-elif" | "--elif")
		COMPREPLY=( $(compgen -W "boolean filename") )
		return 0
		;;
		"-check" | "--check")
		COMPREPLY=( $(compgen -W "expression >") )
		return 0
		;;
		"-error" | "--error")
		COMPREPLY=( $(compgen -W "message >") )
		return 0
		;;
		"-progress" | "--progress")
		COMPREPLY=( $(compgen -W "0<=value<=100 >") )
		return 0
		;;
		"-input" | "--input")
		_filedir
		return 0
		;;
		"-output" | "--output")
		_filedir
		return 0
		;;
		"-verbose" | "--verbose")
		COMPREPLY=( $(compgen -W "level {+|-}") )
		return 0
		;;
		"-print" | "--print")
		COMPREPLY=( $(compgen -W "(eq.to\'-p\'). >") )
		return 0
		;;
		"-echo" | "--echo")
		COMPREPLY=( $(compgen -W "message >") )
		return 0
		;;
		"-warning" | "--warning")
		COMPREPLY=( $(compgen -W "message >") )
		return 0
		;;
		"-command" | "--command")
		_filedir
		return 0
		;;
		"-type" | "--type")
		COMPREPLY=( $(compgen -W "datatype >") )
		return 0
		;;
		"-shared" | "--shared")
		COMPREPLY=( $(compgen -W "x0[%],x1[%],y[%],z[%],v[%] y0[%],y1[%],z[%],v[%] z0[%],z1[%],v[%] v0[%],v1[%] (noargs)") )
		return 0
		;;
		"-camera" | "--camera")
		COMPREPLY=( $(compgen -W "_camera_index>=-1,_nb_frames>0,_skip_frames>=0,release_camera={0|1} >") )
		return 0
		;;
		"-srand" | "--srand")
		COMPREPLY=( $(compgen -W "value (noargs)") )
		return 0
		;;
		"-plot" | "--plot")
		COMPREPLY=( $(compgen -W "_plot_type,_vertex_type,_xmin,_xmax,_ymin,_ymax \'formula\',_resolution>=0,_plot_type,_vertex_type,_xmin,xmax,_ymin,_ymax") )
		return 0
		;;
		"-window" | "--window")
		COMPREPLY=( $(compgen -W "_width[%]>=-1,_height[%]>=-1,_normalization,_fullscreen,_title >") )
		return 0
		;;
		"-wait" | "--wait")
		COMPREPLY=( $(compgen -W "delay (noargs)") )
		return 0
		;;
		"-select" | "--select")
		COMPREPLY=( $(compgen -W "feature_type >") )
		return 0
		;;
		"-h" | "--h")
		COMPREPLY=( $(compgen -W "$coms" -- "$cur" ) )
		return 0
		;;
		"-+" | "--+")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"--" | "---")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-*" | "--*")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-**" | "--**")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-/" | "--/")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-//" | "--//")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-^" | "--^")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-<<" | "--<<")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"->>" | "-->>")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-==" | "--==")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-!=" | "--!=")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"->" | "-->")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"->=" | "-->=")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-<" | "--<")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-<=" | "--<=")
		COMPREPLY=( $(compgen -W "value[%] [image] \'formula\' (noargs)") )
		return 0
		;;
		"-=" | "--=")
		COMPREPLY=( $(compgen -W "value,_x[%],_y[%],_z[%],_c[%] >") )
		return 0
		;;
		"-f" | "--f")
		COMPREPLY=( $(compgen -W "value1,_value2,.. [image] \'formula\'") )
		return 0
		;;
		"-t" | "--t")
		COMPREPLY=( $(compgen -W "value[%],_soft (noargs)") )
		return 0
		;;
		"-c" | "--c")
		COMPREPLY=( $(compgen -W "{value0[%]|[image0]},{value1[%]|[image1]} [image] (noargs)") )
		return 0
		;;
		"-n" | "--n")
		COMPREPLY=( $(compgen -W "{value0[%]|[image0]},{value1[%]|[image1]} [image]") )
		return 0
		;;
		"-r" | "--r")
		COMPREPLY=( $(compgen -W "[image],_interpolation,_boundary,_cx,_cy,_cz,_cc {[image_w]|width>0[%]},_{[image_h]|height>0[%]},_{[image_d]|depth>0[%]}, _{[image_s]|spectrum>0[%]},_interpolation,_boundary,_cx,_cy,_cz,_cc (noargs)") )
		return 0
		;;
		"-s" | "--s")
		COMPREPLY=( $(compgen -W "axis={x|y|z|c},_nb_parts keep_splitting_values={+|-},value1,value2,...") )
		return 0
		;;
		"-a" | "--a")
		COMPREPLY=( $(compgen -W "axis={x|y|z|c},_alignment >") )
		return 0
		;;
		"-mv" | "--mv")
		COMPREPLY=( $(compgen -W "position[%] >") )
		return 0
		;;
		"-nm" | "--nm")
		COMPREPLY=( $(compgen -W "name >") )
		return 0
		;;
		"-+3d" | "--+3d")
		COMPREPLY=( $(compgen -W "tx,_ty,_tz [object3d] (noargs)") )
		return 0
		;;
		"--3d" | "---3d")
		COMPREPLY=( $(compgen -W "tx,_ty,_tz >") )
		return 0
		;;
		"-*3d" | "--*3d")
		COMPREPLY=( $(compgen -W "factor factor_x,factor_y,_factor_z") )
		return 0
		;;
		"-/3d" | "--/3d")
		COMPREPLY=( $(compgen -W "factor factor_x,factor_y,_factor_z") )
		return 0
		;;
		"-r3d" | "--r3d")
		COMPREPLY=( $(compgen -W "u,v,w,angle >") )
		return 0
		;;
		"-col3d" | "--col3d")
		COMPREPLY=( $(compgen -W "R,G,B,_opacity >") )
		return 0
		;;
		"-o3d" | "--o3d")
		COMPREPLY=( $(compgen -W "opacity >") )
		return 0
		;;
		"-p3d" | "--p3d")
		COMPREPLY=( $(compgen -W "mode >") )
		return 0
		;;
		"-t3d" | "--t3d")
		COMPREPLY=( $(compgen -W "[ind_texture],_[ind_coords] >") )
		return 0
		;;
		"-l3d" | "--l3d")
		COMPREPLY=( $(compgen -W "position_x,position_y,position_z [texture] (noargs)") )
		return 0
		;;
		"-f3d" | "--f3d")
		COMPREPLY=( $(compgen -W "focale >") )
		return 0
		;;
		"-sl3d" | "--sl3d")
		COMPREPLY=( $(compgen -W "value>=0 >") )
		return 0
		;;
		"-ss3d" | "--ss3d")
		COMPREPLY=( $(compgen -W "value>=0 >") )
		return 0
		;;
		"-db3d" | "--db3d")
		COMPREPLY=( $(compgen -W "is_doubled={0|1} >") )
		return 0
		;;
		"-m3d" | "--m3d")
		COMPREPLY=( $(compgen -W "mode >") )
		return 0
		;;
		"-md3d" | "--md3d")
		COMPREPLY=( $(compgen -W "mode >") )
		return 0
		;;
		"-b3d" | "--b3d")
		COMPREPLY=( $(compgen -W "R,_G,_B [image] (noargs)") )
		return 0
		;;
		"-x" | "--x")
		COMPREPLY=( $(compgen -W "command >") )
		return 0
		;;
		"-u" | "--u")
		COMPREPLY=( $(compgen -W "item $variable") )
		return 0
		;;
		"-e" | "--e")
		COMPREPLY=( $(compgen -W "message >") )
		return 0
		;;
		"-i" | "--i")
		_filedir
		return 0
		;;
		"-p" | "--p")
		COMPREPLY=( $(compgen -W "(eq.to\'-p\'). >") )
		return 0
		;;
		"-o" | "--o")
		_filedir
		return 0
		;;
		"-sh" | "--sh")
		COMPREPLY=( $(compgen -W "x0[%],x1[%],y[%],z[%],v[%] y0[%],y1[%],z[%],v[%] z0[%],z1[%],v[%] v0[%],v1[%] (noargs)") )
		return 0
		;;
		"-v" | "--v")
		COMPREPLY=( $(compgen -W "level {+|-}") )
		return 0
		;;
		"-m" | "--m")
		_filedir
		return 0
		;;
		"-w" | "--w")
		COMPREPLY=( $(compgen -W "_width[%]>=-1,_height[%]>=-1,_normalization,_fullscreen,_title >") )
		return 0
		;;
		"-discard" | "--discard")
		COMPREPLY=( $(compgen -W "value,_remove_if_not_found={0|1}. >") )
		return 0
		;;
		"-replace" | "--replace")
		COMPREPLY=( $(compgen -W "value_src,value_dest >") )
		return 0
		;;
		"-replace_inf" | "--replace_inf")
		COMPREPLY=( $(compgen -W "_expression >") )
		return 0
		;;
		"-roundify" | "--roundify")
		COMPREPLY=( $(compgen -W "gamma>=0 >") )
		return 0
		;;
		"-transfer_colors" | "--transfer_colors")
		COMPREPLY=( $(compgen -W "_transfer_brightness={0|1} >") )
		return 0
		;;
		"-apply_gamma" | "--apply_gamma")
		COMPREPLY=( $(compgen -W "gamma>=0 >") )
		return 0
		;;
		"-balance_gamma" | "--balance_gamma")
		COMPREPLY=( $(compgen -W "_ref_color1,... >") )
		return 0
		;;
		"-apply_curve" | "--apply_curve")
		COMPREPLY=( $(compgen -W "0<=smoothness<=1,x0,y0,x1,y1,x2,y2,...,xN,yN >") )
		return 0
		;;
		"-tones" | "--tones")
		COMPREPLY=( $(compgen -W "N>0 >") )
		return 0
		;;
		"-t2" | "--t2")
		COMPREPLY=( $(compgen -W "min[%],max[%] >") )
		return 0
		;;
		"-threshold2" | "--threshold2")
		COMPREPLY=( $(compgen -W "min[%],max[%] >") )
		return 0
		;;
		"-otsu" | "--otsu")
		COMPREPLY=( $(compgen -W "_nb_levels>0 >") )
		return 0
		;;
		"-chessboard" | "--chessboard")
		COMPREPLY=( $(compgen -W "size1>0,_size2>0,_offset1,_offset2,_angle,_opacity,_color1,..,_color2,.. >") )
		return 0
		;;
		"-polka_dots" | "--polka_dots")
		COMPREPLY=( $(compgen -W "diameter>=0,_density,_offset1,_offset2,_angle,_aliasing,_shading,_opacity,_color,... >") )
		return 0
		;;
		"-split_tiles" | "--split_tiles")
		COMPREPLY=( $(compgen -W "M!=0,_N!=0,_is_homogeneous={0|1} >") )
		return 0
		;;
		"-append_tiles" | "--append_tiles")
		COMPREPLY=( $(compgen -W "M>0,_N>0 >") )
		return 0
		;;
		"-rr2d" | "--rr2d")
		COMPREPLY=( $(compgen -W "width>0,height>0,_mode={0=inside|1=outside|2=padded},0=<_interpolation<=6 >") )
		return 0
		;;
		"-resize_ratio2d" | "--resize_ratio2d")
		COMPREPLY=( $(compgen -W "width>0,height>0,_mode={0=inside|1=outside|2=padded},0=<_interpolation<=6 >") )
		return 0
		;;
		"-r2dx" | "--r2dx")
		COMPREPLY=( $(compgen -W "width>0,_interpolation={0,1,2,3,4,5,6} >") )
		return 0
		;;
		"-resize2dx" | "--resize2dx")
		COMPREPLY=( $(compgen -W "width>0,_interpolation={0,1,2,3,4,5,6} >") )
		return 0
		;;
		"-r3dx" | "--r3dx")
		COMPREPLY=( $(compgen -W "width>0,_interpolation={0,1,2,3,4,5,6} >") )
		return 0
		;;
		"-resize3dx" | "--resize3dx")
		COMPREPLY=( $(compgen -W "width>0,_interpolation={0,1,2,3,4,5,6} >") )
		return 0
		;;
		"-r2dy" | "--r2dy")
		COMPREPLY=( $(compgen -W "height>0,_interpolation={0,1,2,3,4,5,6} >") )
		return 0
		;;
		"-resize2dy" | "--resize2dy")
		COMPREPLY=( $(compgen -W "height>0,_interpolation={0,1,2,3,4,5,6} >") )
		return 0
		;;
		"-r3dy" | "--r3dy")
		COMPREPLY=( $(compgen -W "height>0,_interpolation={0,1,2,3,4,5,6} >") )
		return 0
		;;
		"-resize3dy" | "--resize3dy")
		COMPREPLY=( $(compgen -W "height>0,_interpolation={0,1,2,3,4,5,6} >") )
		return 0
		;;
		"-r3dz" | "--r3dz")
		COMPREPLY=( $(compgen -W "depth>0,_interpolation={0,1,2,3,4,5,6} >") )
		return 0
		;;
		"-resize3dz" | "--resize3dz")
		COMPREPLY=( $(compgen -W "depth>0,_interpolation={0,1,2,3,4,5,6} >") )
		return 0
		;;
		"-upscale_smart" | "--upscale_smart")
		COMPREPLY=( $(compgen -W "width,_height,_depth,_smoothness>=0,_anisotropy=[0,1],sharpening>=0 >") )
		return 0
		;;
		"-expand_x" | "--expand_x")
		COMPREPLY=( $(compgen -W "size_x>=0,_boundary={0=dirichlet|1=neumann|2=cyclic} >") )
		return 0
		;;
		"-expand_y" | "--expand_y")
		COMPREPLY=( $(compgen -W "size_y>=0,_boundary={0=dirichlet|1=neumann|2=cyclic} >") )
		return 0
		;;
		"-expand_z" | "--expand_z")
		COMPREPLY=( $(compgen -W "size_z>=0,_boundary={0=dirichlet|1=neumann|2=cyclic} >") )
		return 0
		;;
		"-expand_xy" | "--expand_xy")
		COMPREPLY=( $(compgen -W "size>=0,_boundary={0=dirichlet|1=neumann|2=cyclic} >") )
		return 0
		;;
		"-expand_xyz" | "--expand_xyz")
		COMPREPLY=( $(compgen -W "size>=0,_boundary={0=dirichlet|1=neumann|2=cyclic} >") )
		return 0
		;;
		"-shrink_x" | "--shrink_x")
		COMPREPLY=( $(compgen -W "size_x>=0 >") )
		return 0
		;;
		"-shrink_y" | "--shrink_y")
		COMPREPLY=( $(compgen -W "size_y>=0 >") )
		return 0
		;;
		"-shrink_z" | "--shrink_z")
		COMPREPLY=( $(compgen -W "size_z>=0 >") )
		return 0
		;;
		"-shrink_xy" | "--shrink_xy")
		COMPREPLY=( $(compgen -W "size>=0 >") )
		return 0
		;;
		"-elevate" | "--elevate")
		COMPREPLY=( $(compgen -W "_depth,_is_plain,_is_colored >") )
		return 0
		;;
		"-rotate_tileable" | "--rotate_tileable")
		COMPREPLY=( $(compgen -W "angle,_max_size_factor>=0 >") )
		return 0
		;;
		"-op" | "--op")
		COMPREPLY=( $(compgen -W "prefix >") )
		return 0
		;;
		"-outputp" | "--outputp")
		COMPREPLY=( $(compgen -W "prefix >") )
		return 0
		;;
		"-on" | "--on")
		COMPREPLY=( $(compgen -W "filename >") )
		return 0
		;;
		"-outputn" | "--outputn")
		COMPREPLY=( $(compgen -W "filename >") )
		return 0
		;;
		"-dh" | "--dh")
		COMPREPLY=( $(compgen -W "_width>0,_height>0,_clusters>0,_max_value>0,_show_axes={0|1} >") )
		return 0
		;;
		"-display_histogram" | "--display_histogram")
		COMPREPLY=( $(compgen -W "_width>0,_height>0,_clusters>0,_max_value>0,_show_axes={0|1} >") )
		return 0
		;;
		"-dt" | "--dt")
		COMPREPLY=( $(compgen -W "_size_factor>0,_ellipse_factor>=0,_opacity,_pattern,_color1,.. >") )
		return 0
		;;
		"-display_tensors" | "--display_tensors")
		COMPREPLY=( $(compgen -W "_size_factor>0,_ellipse_factor>=0,_opacity,_pattern,_color1,.. >") )
		return 0
		;;
		"-dg" | "--dg")
		COMPREPLY=( $(compgen -W "_width>32,_height>32,_plot_type,_vertex_type,_xmin,_xmax,_ymin,_ymax >") )
		return 0
		;;
		"-display_graph" | "--display_graph")
		COMPREPLY=( $(compgen -W "_width>32,_height>32,_plot_type,_vertex_type,_xmin,_xmax,_ymin,_ymax >") )
		return 0
		;;
		"-da" | "--da")
		COMPREPLY=( $(compgen -W "_width>0,_height>0 >") )
		return 0
		;;
		"-display_array" | "--display_array")
		COMPREPLY=( $(compgen -W "_width>0,_height>0 >") )
		return 0
		;;
		"-text2img" | "--text2img")
		COMPREPLY=( $(compgen -W "text,_line_separator >") )
		return 0
		;;
		"-img2text" | "--img2text")
		COMPREPLY=( $(compgen -W "_line_separator >") )
		return 0
		;;
		"-apply_camera" | "--apply_camera")
		COMPREPLY=( $(compgen -W "_command,_camera_index>=-1,_skip_frames>=0 >") )
		return 0
		;;
		"-testimage2d" | "--testimage2d")
		COMPREPLY=( $(compgen -W "_width>0,_height>0,_spectrum>0 >") )
		return 0
		;;
		"-ball" | "--ball")
		COMPREPLY=( $(compgen -W "_R,_G,_B >") )
		return 0
		;;
		"-sierpinski" | "--sierpinski")
		COMPREPLY=( $(compgen -W "recursion_level>=0 >") )
		return 0
		;;
		"-text_outline" | "--text_outline")
		COMPREPLY=( $(compgen -W "text,_x[%],_y[%],_font_height>0,_outline>=0,_opacity,_color1,.. >") )
		return 0
		;;
		"-histogram_cumul" | "--histogram_cumul")
		COMPREPLY=( $(compgen -W "_nb_levels>0,_is_normalized={0|1},_val0[%],_val1[%] >") )
		return 0
		;;
		"-rgb2bayer" | "--rgb2bayer")
		COMPREPLY=( $(compgen -W "_start_pattern=0,_color=0 >") )
		return 0
		;;
		"-bayer2rgb" | "--bayer2rgb")
		COMPREPLY=( $(compgen -W "_GM_smoothness,_RB_smoothness1,_RB_smoothness2 >") )
		return 0
		;;
		"-lic" | "--lic")
		COMPREPLY=( $(compgen -W "_amplitude>0,_channels>0 >") )
		return 0
		;;
		"-gaussian" | "--gaussian")
		COMPREPLY=( $(compgen -W "_sigma1[%],_sigma2[%],_angle >") )
		return 0
		;;
		"-function1d" | "--function1d")
		COMPREPLY=( $(compgen -W "0<=smoothness<=1,x0,y0,x1,y1,...,xn,yn >") )
		return 0
		;;
		"-pointcloud" | "--pointcloud")
		COMPREPLY=( $(compgen -W "_type={-X=-X-opacity|0=binary|1=cumulative|2=label} >") )
		return 0
		;;
		"-snowflake" | "--snowflake")
		COMPREPLY=( $(compgen -W "_recursion>=0,_x0,_y0,_x1,_y1,_x2,_y2,_opacity,_col1,..._colN >") )
		return 0
		;;
		"-turbulence" | "--turbulence")
		COMPREPLY=( $(compgen -W "_radius>0,_octaves={1,2,3...,12},_alpha>0,_difference={-10,10},_mode={0,1,2,3} >") )
		return 0
		;;
		"-marble" | "--marble")
		COMPREPLY=( $(compgen -W "_image_weight,_pattern_weight,_angle,_amplitude,_sharpness>=0,_anisotropy>=0,_alpha,_sigma,_cut_low>=0,_cut_high>=0 >") )
		return 0
		;;
		"-rorschach" | "--rorschach")
		COMPREPLY=( $(compgen -W "\'smoothness[%]>=0\',\'mirroring={0=none|1=x|2=y|3=xy} >") )
		return 0
		;;
		"-blur_x" | "--blur_x")
		COMPREPLY=( $(compgen -W "amplitude[%]>=0,_boundary={0=dirichlet|1=neumann} >") )
		return 0
		;;
		"-blur_y" | "--blur_y")
		COMPREPLY=( $(compgen -W "amplitude[%]>=0,_boundary={0=dirichlet|1=neumann} >") )
		return 0
		;;
		"-blur_z" | "--blur_z")
		COMPREPLY=( $(compgen -W "amplitude[%]>=0,_boundary={0=dirichlet|1=neumann} >") )
		return 0
		;;
		"-blur_xy" | "--blur_xy")
		COMPREPLY=( $(compgen -W "amplitude_x[%],amplitude_y[%],_boundary={0=dirichlet|1=neumann} >") )
		return 0
		;;
		"-blur_xyz" | "--blur_xyz")
		COMPREPLY=( $(compgen -W "amplitude_x[%],amplitude_y[%],amplitude_z,_boundary={0=dirichlet|1=neumann} >") )
		return 0
		;;
		"-blur_angular" | "--blur_angular")
		COMPREPLY=( $(compgen -W "amplitude[%],_cx,_cy >") )
		return 0
		;;
		"-blur_radial" | "--blur_radial")
		COMPREPLY=( $(compgen -W "amplitude[%],_cx,_cy >") )
		return 0
		;;
		"-blur_linear" | "--blur_linear")
		COMPREPLY=( $(compgen -W "amplitude1[%],_amplitude2[%],_angle,_boundary={0=dirichlet|1=neumann} >") )
		return 0
		;;
		"-dog" | "--dog")
		COMPREPLY=( $(compgen -W "_sigma1>=0[%],_sigma2>=0[%] >") )
		return 0
		;;
		"-pde_flow" | "--pde_flow")
		COMPREPLY=( $(compgen -W "_nb_iter>=0,_dt,_velocity_command,_keep_sequence={0|1} >") )
		return 0
		;;
		"-heat_flow" | "--heat_flow")
		COMPREPLY=( $(compgen -W "_nb_iter>=0,_dt,_keep_sequence={0|1} >") )
		return 0
		;;
		"-meancurvature_flow" | "--meancurvature_flow")
		COMPREPLY=( $(compgen -W "_nb_iter>=0,_dt,_sequence_flag={0|1} >") )
		return 0
		;;
		"-tv_flow" | "--tv_flow")
		COMPREPLY=( $(compgen -W "_nb_iter>=0,_dt,_sequence_flag={0|1} >") )
		return 0
		;;
		"-inpaint_flow" | "--inpaint_flow")
		COMPREPLY=( $(compgen -W "_nb_iter1>=0,_nb_iter2>=0,_dt>=0,_alpha,_sigma >") )
		return 0
		;;
		"-remove_hotpixels" | "--remove_hotpixels")
		COMPREPLY=( $(compgen -W "_mask_size>0,_threshold[%]>0 >") )
		return 0
		;;
		"-richardson_lucy" | "--richardson_lucy")
		COMPREPLY=( $(compgen -W "amplitude[%]>=0,_nb_iter>=0,_dt>=0,_regul>=0,_regul_type={0=Tikhonov|1=meancurv.|2=TV} >") )
		return 0
		;;
		"-unsharp" | "--unsharp")
		COMPREPLY=( $(compgen -W "radius[%]>=0,_amount>=0,_threshold[%]>=0 >") )
		return 0
		;;
		"-unsharp_octave" | "--unsharp_octave")
		COMPREPLY=( $(compgen -W "_nb_scales>0,_radius[%]>=0,_amount>=0,threshold[%]>=0 >") )
		return 0
		;;
		"-normalize_local" | "--normalize_local")
		COMPREPLY=( $(compgen -W "_amplitude>=0,_radius>0,_n_smooth>=0[%],_a_smooth>=0[%],_is_cut={0|1},_min=0,_max=255 >") )
		return 0
		;;
		"-map_tones" | "--map_tones")
		COMPREPLY=( $(compgen -W "_threshold>=0,_gamma>=0,_smoothness>=0,nb_iter>=0 >") )
		return 0
		;;
		"-map_tones_fast" | "--map_tones_fast")
		COMPREPLY=( $(compgen -W "_radius[%]>=0,_power>=0 >") )
		return 0
		;;
		"-bandpass" | "--bandpass")
		COMPREPLY=( $(compgen -W "_min_freq[%],_max_freq[%] >") )
		return 0
		;;
		"-watermark_fourier" | "--watermark_fourier")
		COMPREPLY=( $(compgen -W "text,_size>0 >") )
		return 0
		;;
		"-split_freq" | "--split_freq")
		COMPREPLY=( $(compgen -W "smoothness>0[%] >") )
		return 0
		;;
		"-erode_oct" | "--erode_oct")
		COMPREPLY=( $(compgen -W "_size>=0,_boundary,_is_normalized={0|1} >") )
		return 0
		;;
		"-dilate_oct" | "--dilate_oct")
		COMPREPLY=( $(compgen -W "_size>=0,_boundary,_is_normalized={0|1} >") )
		return 0
		;;
		"-erode_circ" | "--erode_circ")
		COMPREPLY=( $(compgen -W "_size>=0,_boundary,_is_normalized={0|1} >") )
		return 0
		;;
		"-dilate_circ" | "--dilate_circ")
		COMPREPLY=( $(compgen -W "_size>=0,_boundary,_is_normalized={0|1} >") )
		return 0
		;;
		"-kuwahara" | "--kuwahara")
		COMPREPLY=( $(compgen -W "size>0 >") )
		return 0
		;;
		"-skeleton" | "--skeleton")
		COMPREPLY=( $(compgen -W "_smoothness[%]>=0 >") )
		return 0
		;;
		"-hough" | "--hough")
		COMPREPLY=( $(compgen -W "_width>0,_height>0,gradient_norm_voting={0|1} >") )
		return 0
		;;
		"-gradient_orientation" | "--gradient_orientation")
		COMPREPLY=( $(compgen -W "_dimension={1,2,3} >") )
		return 0
		;;
		"-gradient2rgb" | "--gradient2rgb")
		COMPREPLY=( $(compgen -W "_orientation={0|1} >") )
		return 0
		;;
		"-edges" | "--edges")
		COMPREPLY=( $(compgen -W "_threshold[%]>=0 >") )
		return 0
		;;
		"-isophotes" | "--isophotes")
		COMPREPLY=( $(compgen -W "_nb_levels>0 >") )
		return 0
		;;
		"-topographic_map" | "--topographic_map")
		COMPREPLY=( $(compgen -W "_nb_levels>0,_smoothness >") )
		return 0
		;;
		"-segment_watershed" | "--segment_watershed")
		COMPREPLY=( $(compgen -W "_threshold>=0,_keep_watershed={0|1} >") )
		return 0
		;;
		"-minimal_path" | "--minimal_path")
		COMPREPLY=( $(compgen -W "x0[%]>=0,y0[%]>=0,z0[%]>=0,x1[%]>=0,y1[%]>=0,z1[%]>=0 >") )
		return 0
		;;
		"-array" | "--array")
		COMPREPLY=( $(compgen -W "M>0,_N>0,_expand_type={0,1,2} >") )
		return 0
		;;
		"-array_fade" | "--array_fade")
		COMPREPLY=( $(compgen -W "M>0,_N>0,0<=_fade_start<=100,0<=_fade_end<=100,_expand_type={0,1,2} >") )
		return 0
		;;
		"-array_mirror" | "--array_mirror")
		COMPREPLY=( $(compgen -W "N>=0,_dir={0=x|1=y|2=xy|3=tri-xy},_expand_type={0|1} >") )
		return 0
		;;
		"-array_random" | "--array_random")
		COMPREPLY=( $(compgen -W "Ms>0,_Ns>0,_Md>0,_Nd>0 >") )
		return 0
		;;
		"-array_pattern" | "--array_pattern")
		COMPREPLY=( $(compgen -W "M>0,_N>0,_density>=0,_angle>=0,_zoom>=0,_opacity,_expand_type={0,1,2} >") )
		return 0
		;;
		"-taquin" | "--taquin")
		COMPREPLY=( $(compgen -W "M>0,_N>0 >") )
		return 0
		;;
		"-imagegrid" | "--imagegrid")
		COMPREPLY=( $(compgen -W "_M>0,_N>0 >") )
		return 0
		;;
		"-frame" | "--frame")
		COMPREPLY=( $(compgen -W "size_x[%]>=0,_size_y[%]>=0,_col1,...,_colN >") )
		return 0
		;;
		"-frame_fuzzy" | "--frame_fuzzy")
		COMPREPLY=( $(compgen -W "size_x>=0,_size_y>=0,_fuzzyness>=0,_smoothness>=0,_R,_G,_B,_A >") )
		return 0
		;;
		"-frame_round" | "--frame_round")
		COMPREPLY=( $(compgen -W "_sharpness>0,_size>=0,_smoothness,_shade,_R,_G,_B,_A >") )
		return 0
		;;
		"-frame_blur" | "--frame_blur")
		COMPREPLY=( $(compgen -W "_sharpness>0,_size>=0,_smoothness,_shade,_blur >") )
		return 0
		;;
		"-frame_pattern" | "--frame_pattern")
		COMPREPLY=( $(compgen -W "M>=3,_pattern={0=firstimage|1=self},_constrain_size={0|1} >") )
		return 0
		;;
		"-rotate_tiles" | "--rotate_tiles")
		COMPREPLY=( $(compgen -W "angle,_M>0,N>0 >") )
		return 0
		;;
		"-shift_tiles" | "--shift_tiles")
		COMPREPLY=( $(compgen -W "M>0,_N>0,_amplitude >") )
		return 0
		;;
		"-linearize_tiles" | "--linearize_tiles")
		COMPREPLY=( $(compgen -W "M>0,_N>0 >") )
		return 0
		;;
		"-quadratize_tiles" | "--quadratize_tiles")
		COMPREPLY=( $(compgen -W "M>0,_N>0 >") )
		return 0
		;;
		"-tunnel" | "--tunnel")
		COMPREPLY=( $(compgen -W "_level>=0,_factor>0,_cx,_cy,_opacity. >") )
		return 0
		;;
		"-polaroid" | "--polaroid")
		COMPREPLY=( $(compgen -W "_size1>=0,_size2>=0 >") )
		return 0
		;;
		"-drop_shadow" | "--drop_shadow")
		COMPREPLY=( $(compgen -W "_offset_x[%],_offset_y[%],_smoothness[%] >") )
		return 0
		;;
		"-tetris" | "--tetris")
		COMPREPLY=( $(compgen -W "_scale>0 >") )
		return 0
		;;
		"-mosaic" | "--mosaic")
		COMPREPLY=( $(compgen -W "_density>=0,_edges={0|1} >") )
		return 0
		;;
		"-stained_glass" | "--stained_glass")
		COMPREPLY=( $(compgen -W "_edges[%]>=0,shading>=0,is_thin_separators={0|1} >") )
		return 0
		;;
		"-puzzle" | "--puzzle")
		COMPREPLY=( $(compgen -W "_scale>=0 >") )
		return 0
		;;
		"-sponge" | "--sponge")
		COMPREPLY=( $(compgen -W "_size>0 >") )
		return 0
		;;
		"-hearts" | "--hearts")
		COMPREPLY=( $(compgen -W "_density>=0 >") )
		return 0
		;;
		"-color_ellipses" | "--color_ellipses")
		COMPREPLY=( $(compgen -W "_count>0,_radius>=0,_opacity>=0 >") )
		return 0
		;;
		"-ellipsionism" | "--ellipsionism")
		COMPREPLY=( $(compgen -W "_R>0[%],_r>0[%],_smoothness>=0[%],_opacity,_outline>0,_density>0 >") )
		return 0
		;;
		"-whirls" | "--whirls")
		COMPREPLY=( $(compgen -W "_texture>=0,_smoothness>=0,_darkness>=0,_lightness>=0 >") )
		return 0
		;;
		"-cartoon" | "--cartoon")
		COMPREPLY=( $(compgen -W "_smoothness,_sharpening,_threshold>=0,_thickness>=0,_color>=0,quantization>0 >") )
		return 0
		;;
		"-drawing" | "--drawing")
		COMPREPLY=( $(compgen -W "_amplitude>=0 >") )
		return 0
		;;
		"-draw_whirl" | "--draw_whirl")
		COMPREPLY=( $(compgen -W "_amplitude>=0 >") )
		return 0
		;;
		"-stencil" | "--stencil")
		COMPREPLY=( $(compgen -W "_radius[%]>=0,_smoothness>=0,_iterations>=0 >") )
		return 0
		;;
		"-stencilbw" | "--stencilbw")
		COMPREPLY=( $(compgen -W "_edges>=0,_smoothness>=0 >") )
		return 0
		;;
		"-pencilbw" | "--pencilbw")
		COMPREPLY=( $(compgen -W "_size>=0,_amplitude>=0 >") )
		return 0
		;;
		"-hardsketchbw" | "--hardsketchbw")
		COMPREPLY=( $(compgen -W "_amplitude>=0,_density>=0,_opacity,0<=_edge_threshold<=100,_is_fast={0|1} >") )
		return 0
		;;
		"-houghsketchbw" | "--houghsketchbw")
		COMPREPLY=( $(compgen -W "_density>=0,_radius>0,0<=_threshold<=100,0<=_opacity<=1,_votesize[%]>0 >") )
		return 0
		;;
		"-sketchbw" | "--sketchbw")
		COMPREPLY=( $(compgen -W "_nb_orients>0,_start_angle,_angle_range>=0,_length>=0,_threshold>=0, _opacity,_bgfactor>=0,_density>0,_sharpness>=0, _anisotropy>=0,_smoothness>=0,_coherence>=0,_is_boost={0|1},_is_curved={0|1}") )
		return 0
		;;
		"-dotsbw" | "--dotsbw")
		COMPREPLY=( $(compgen -W "_nb_scales>=0,_resolution>0,_radius>=0 >") )
		return 0
		;;
		"-warhol" | "--warhol")
		COMPREPLY=( $(compgen -W "_M>0,_N>0,_smoothness>=0,_color>=0 >") )
		return 0
		;;
		"-cubism" | "--cubism")
		COMPREPLY=( $(compgen -W "_nb_iter>=0,_bloc_size>0,_max_angle,_opacity,_smoothness>=0 >") )
		return 0
		;;
		"-glow" | "--glow")
		COMPREPLY=( $(compgen -W "_amplitude>=0 >") )
		return 0
		;;
		"-fire_edges" | "--fire_edges")
		COMPREPLY=( $(compgen -W "_edges>=0,0<=_attenuation<=1,_smoothness>=0,_threshold>=0,_nb_frames>0,_starting_frame>=0,frame_skip>=0 >") )
		return 0
		;;
		"-euclidean2polar" | "--euclidean2polar")
		COMPREPLY=( $(compgen -W "_cx,_cy,_n>0,_boundary={0=dirichlet|1=neumann|2=cyclic} >") )
		return 0
		;;
		"-polar2euclidean" | "--polar2euclidean")
		COMPREPLY=( $(compgen -W "_cx,_cy,_n>0,_boundary={0=dirichlet|1=neumann|2=cyclic} >") )
		return 0
		;;
		"-warp_perspective" | "--warp_perspective")
		COMPREPLY=( $(compgen -W "_x-angle,_y-angle,_zoom>0,_x-center,_y-center,_boundary={0=dirichlet|1=neumann|2=cyclic} >") )
		return 0
		;;
		"-water" | "--water")
		COMPREPLY=( $(compgen -W "_amplitude>=0,_smoothness>=0 >") )
		return 0
		;;
		"-wave" | "--wave")
		COMPREPLY=( $(compgen -W "_amplitude>=0,_frequency>=0,_center_x,_center_y >") )
		return 0
		;;
		"-twirl" | "--twirl")
		COMPREPLY=( $(compgen -W "_amplitude,_cx,_cy,_boundary={0=dirichlet|1=neumann|2=cyclic} >") )
		return 0
		;;
		"-map_sphere" | "--map_sphere")
		COMPREPLY=( $(compgen -W "_width>0,_height>0,_radius,_dilation>0 >") )
		return 0
		;;
		"-flower" | "--flower")
		COMPREPLY=( $(compgen -W "_amplitude,_frequency,_offset_r[%],_angle,_cx,_cy,_boundary={0=dirichlet|1=neumann|2=cyclic} >") )
		return 0
		;;
		"-zoom" | "--zoom")
		COMPREPLY=( $(compgen -W "_factor,_cx,_cy,_cz,_boundary={0=dirichlet|1=neumann|2=cyclic} >") )
		return 0
		;;
		"-deform" | "--deform")
		COMPREPLY=( $(compgen -W "_amplitude>=0 >") )
		return 0
		;;
		"-fisheye" | "--fisheye")
		COMPREPLY=( $(compgen -W "_x,_y,0<=_radius<=100,_amplitude>=0 >") )
		return 0
		;;
		"-transform_polar" | "--transform_polar")
		COMPREPLY=( $(compgen -W "\"expr_radius\",_\"expr_angle\",_x_center,_y_center,_boundary={0=dirichlet|1=neumann} >") )
		return 0
		;;
		"-kaleidoscope" | "--kaleidoscope")
		COMPREPLY=( $(compgen -W "_cx,_cy,_radius,_angle,_boundary={0=dirichlet|1=neumann|2=cyclic} >") )
		return 0
		;;
		"-rotoidoscope" | "--rotoidoscope")
		COMPREPLY=( $(compgen -W "_cx,_cy,_tiles>0,_smoothness[%]>=0,_boundary={0=dirichlet|1=neumann|2=cyclic} >") )
		return 0
		;;
		"-spread" | "--spread")
		COMPREPLY=( $(compgen -W "_dx>=0,_dy>=0,_dz>=0 >") )
		return 0
		;;
		"-shade_stripes" | "--shade_stripes")
		COMPREPLY=( $(compgen -W "_frequency>=0,_direction={0=horizontal|1=vertical},_darkness>=0,_lightness>=0 >") )
		return 0
		;;
		"-stripes_y" | "--stripes_y")
		COMPREPLY=( $(compgen -W "_frequency>=0 >") )
		return 0
		;;
		"-shadow_patch" | "--shadow_patch")
		COMPREPLY=( $(compgen -W "_opacity>=0 >") )
		return 0
		;;
		"-light_patch" | "--light_patch")
		COMPREPLY=( $(compgen -W "_density>0,_darkness>=0,_lightness>=0 >") )
		return 0
		;;
		"-light_relief" | "--light_relief")
		COMPREPLY=( $(compgen -W "_ambient_light,_specular_light,_specular_size,_darkness,_xl,_yl,_zl,_zscale,_opacity_bumpmap={0|1} >") )
		return 0
		;;
		"-noise_hurl" | "--noise_hurl")
		COMPREPLY=( $(compgen -W "_amplitude>=0 >") )
		return 0
		;;
		"-pixelize" | "--pixelize")
		COMPREPLY=( $(compgen -W "_scale_x>0,_scale_y>0,_scale_z>0 >") )
		return 0
		;;
		"-cracks" | "--cracks")
		COMPREPLY=( $(compgen -W "_density>=0,_amplitude,_relief={0|1} >") )
		return 0
		;;
		"-watermark_visible" | "--watermark_visible")
		COMPREPLY=( $(compgen -W "_text,0<_opacity<1,_size>0,_angle,_mode={0=remove|1=add} >") )
		return 0
		;;
		"-apply_channels" | "--apply_channels")
		COMPREPLY=( $(compgen -W "\"command\",_channels={All,RGBA,RGB,Y,CbCr,Cb,Cr,L,ab,a,b,H,S,V,K,A,ch,c,h,R,G,B,A},_normalize={0=cut|1=normalize} >") )
		return 0
		;;
		"-to_colormode" | "--to_colormode")
		COMPREPLY=( $(compgen -W "mode={0=adaptive|1=G|2=GA|3=RGB|4=RGBA} >") )
		return 0
		;;
		"-select_color" | "--select_color")
		COMPREPLY=( $(compgen -W "tolerance[%]>=0,col1,..,colN >") )
		return 0
		;;
		"-replace_color" | "--replace_color")
		COMPREPLY=( $(compgen -W "tolerance[%]>=0,_smoothness[%]>=0,src1,...,srcN,dest1,...,destN >") )
		return 0
		;;
		"-fc" | "--fc")
		COMPREPLY=( $(compgen -W "col1,...,colN >") )
		return 0
		;;
		"-fill_color" | "--fill_color")
		COMPREPLY=( $(compgen -W "col1,...,colN >") )
		return 0
		;;
		"-mix_rgb" | "--mix_rgb")
		COMPREPLY=( $(compgen -W "a11,a12,a13,a21,a22,a23,a31,a32,a33 >") )
		return 0
		;;
		"-mix_channels" | "--mix_channels")
		COMPREPLY=( $(compgen -W "(a00,...,aMN) >") )
		return 0
		;;
		"-red_eye" | "--red_eye")
		COMPREPLY=( $(compgen -W "0<=_threshold<=100,_smoothness>=0,0<=attenuation<=1 >") )
		return 0
		;;
		"-fade_x" | "--fade_x")
		COMPREPLY=( $(compgen -W "0<=_start<=100,0<=_end<=100 >") )
		return 0
		;;
		"-fade_y" | "--fade_y")
		COMPREPLY=( $(compgen -W "0<=_start<=100,0<=_end<=100 >") )
		return 0
		;;
		"-fade_z" | "--fade_z")
		COMPREPLY=( $(compgen -W "0<=_start<=100,0<=_end<=100 >") )
		return 0
		;;
		"-fade_radial" | "--fade_radial")
		COMPREPLY=( $(compgen -W "0<=_start<=100,0<=_end<=100 >") )
		return 0
		;;
		"-fade_diamond" | "--fade_diamond")
		COMPREPLY=( $(compgen -W "0<=_start<=100,0<=_end<=100 >") )
		return 0
		;;
		"-fade_linear" | "--fade_linear")
		COMPREPLY=( $(compgen -W "_angle,0<=_start<=100,0<=_end<=100 >") )
		return 0
		;;
		"-compose_edges" | "--compose_edges")
		COMPREPLY=( $(compgen -W "smoothness[%]>=0 >") )
		return 0
		;;
		"-morph" | "--morph")
		COMPREPLY=( $(compgen -W "nb_frames>0,_smoothness>=0,_precision>0 >") )
		return 0
		;;
		"-register_nonrigid" | "--register_nonrigid")
		COMPREPLY=( $(compgen -W "_smoothness>=0,_precision>0,_nb_scale>=0 >") )
		return 0
		;;
		"-register_rigid" | "--register_rigid")
		COMPREPLY=( $(compgen -W "_smoothness>=0 >") )
		return 0
		;;
		"-deinterlace" | "--deinterlace")
		COMPREPLY=( $(compgen -W "_method={0|1} >") )
		return 0
		;;
		"-animate" | "--animate")
		COMPREPLY=( $(compgen -W "filter_name,\"param1_start,..,paramN_start\",\"param1_end,..,paramN_end\",nb_frames>=0,_output_frames={0|1},_filename delay>0") )
		return 0
		;;
		"-apply_pose3d" | "--apply_pose3d")
		COMPREPLY=( $(compgen -W "p1,..,p12 >") )
		return 0
		;;
		"-animate3d" | "--animate3d")
		COMPREPLY=( $(compgen -W "_width>0,_height>0,_dx,_dy,_dz,_zoom>=0,_filename >") )
		return 0
		;;
		"-pca_patch3d" | "--pca_patch3d")
		COMPREPLY=( $(compgen -W "_patch_size>0,_M>0,_N>0,_normalize_input={0|1},_normalize_output={0|1},_lambda_xy >") )
		return 0
		;;
		"-balls3d" | "--balls3d")
		COMPREPLY=( $(compgen -W "_size>0,_R,_G,_B,_opacity >") )
		return 0
		;;
		"-circles3d" | "--circles3d")
		COMPREPLY=( $(compgen -W "_radius>=0 >") )
		return 0
		;;
		"-lissajous3d" | "--lissajous3d")
		COMPREPLY=( $(compgen -W "resolution>1,a,A,b,B,c,C >") )
		return 0
		;;
		"-imagesphere3d" | "--imagesphere3d")
		COMPREPLY=( $(compgen -W "_resolution1>=3,_resolution2>=3 >") )
		return 0
		;;
		"-projections3d" | "--projections3d")
		COMPREPLY=( $(compgen -W "_x[%],_y[%],_z[%],_is_bounding_box={0|1} >") )
		return 0
		;;
		"-pyramid3d" | "--pyramid3d")
		COMPREPLY=( $(compgen -W "width,height >") )
		return 0
		;;
		"-gyroid3d" | "--gyroid3d")
		COMPREPLY=( $(compgen -W "_resolution>0,_zoom >") )
		return 0
		;;
		"-weird3d" | "--weird3d")
		COMPREPLY=( $(compgen -W "_resolution>0 >") )
		return 0
		;;
		"-text3d" | "--text3d")
		COMPREPLY=( $(compgen -W "text,_font_height>0,_depth>0,_smoothness >") )
		return 0
		;;
		"-extrude3d" | "--extrude3d")
		COMPREPLY=( $(compgen -W "_depth>0,_resolution>0,_smoothness[%]>=0 >") )
		return 0
		;;
		"-lathe3d" | "--lathe3d")
		COMPREPLY=( $(compgen -W "_resolution>0,_smoothness[%]>=0,_max_angle>=0 >") )
		return 0
		;;
		"-cup3d" | "--cup3d")
		COMPREPLY=( $(compgen -W "_resolution>0 >") )
		return 0
		;;
		"-sierpinski3d" | "--sierpinski3d")
		COMPREPLY=( $(compgen -W "_recursion_level>=0,_width,_height >") )
		return 0
		;;
		"-parametric3d" | "--parametric3d")
		COMPREPLY=( $(compgen -W "_x(a,b),_y(a,b),_z(a,b),_amin,_amax,_bmin,_bmax,_res_a>0,_res_b>0,_res_x>0,_res_y>0,_res_z>0,_smoothness>=0,_isovalue>=0 >") )
		return 0
		;;
		"-snapshot3d" | "--snapshot3d")
		COMPREPLY=( $(compgen -W "_size>0,_zoom>=0,_backgroundR,_backgroundG,_backgroundB >") )
		return 0
		;;
		"-label_points3d" | "--label_points3d")
		COMPREPLY=( $(compgen -W "_label_size>0,_opacity >") )
		return 0
		;;
		"-x_mandelbrot" | "--x_mandelbrot")
		COMPREPLY=( $(compgen -W "_julia={0|1},_c0r,_c0i >") )
		return 0
		;;
		"-x_jawbreaker" | "--x_jawbreaker")
		COMPREPLY=( $(compgen -W "0<_width<20,0<_height<20,0<_balls<=8 >") )
		return 0
		;;
		"-pink_grayskel" | "--pink_grayskel")
		COMPREPLY=( $(compgen -W "_connectivity={4|8|6|26},_lambda=0 (http://pinkhq.com/grayskel_8c.html)") )
		return 0
		;;
		"-pink_skelpar" | "--pink_skelpar")
		COMPREPLY=( $(compgen -W "_algorithm={0..29},_nsteps=_1,_inhibit=\"\" (http://pinkhq.com/skelpar_8c.html)") )
		return 0
		;;
		"-pink_skelend" | "--pink_skelend")
		COMPREPLY=( $(compgen -W "_connectivity={4|8|6|26},_n=0 (http://pinkhq.com/skelend_8c.html)") )
		return 0
		;;
		"-pink_skelcurv" | "--pink_skelcurv")
		COMPREPLY=( $(compgen -W "_prio={0|1|2|3|4|8|6|26},_connectivity={4|8|6|26},_inhibit={\"\"} (http://pinkhq.com/skelcurv_8c.html)") )
		return 0
		;;
		"-pink_skeleton" | "--pink_skeleton")
		COMPREPLY=( $(compgen -W "_prio={0|1|2|3|4|8|6|26},_connectivity={4|8|6|26},_inhibit={\"\"} (http://pinkhq.com/skeleton_8c.html)") )
		return 0
		;;
		"-pink_lvkern" | "--pink_lvkern")
		COMPREPLY=( $(compgen -W "_connectivity={4|8|6|26},_type={\"\"|u} (http://pinkhq.com/lvkern_8c.html) (http://pinkhq.com/lvkernu_8c.html)") )
		return 0
		;;
		"-pink_htkern" | "--pink_htkern")
		COMPREPLY=( $(compgen -W "_connectivity={4|8|6|26},_type={\"\"|u} (http://pinkhq.com/htkern_8c.html) (http://pinkhq.com/htkernu_8c.html)") )
		return 0
		;;
		"-pink_wshed" | "--pink_wshed")
		COMPREPLY=( $(compgen -W "_connectivity={4|8|6|26},_inverse={0|1},_height=0 (http://pinkhq.com/wshedtopo_8c.html)") )
		return 0
		;;
		"-pink_reg_minima" | "--pink_reg_minima")
		COMPREPLY=( $(compgen -W "_connectivity={4|8|6|26} (http://pinkhq.com/minima_8c.html)") )
		return 0
		;;
		"-pink_heightminima" | "--pink_heightminima")
		COMPREPLY=( $(compgen -W "_connectivity={4|8|6|26},_height=1 (http://pinkhq.com/heightminima_8c.html)") )
		return 0
		;;
		"-pink_heightmaxima" | "--pink_heightmaxima")
		COMPREPLY=( $(compgen -W "_connectivity={4|8|6|26},_height=1 (http://pinkhq.com/heightmaxima_8c.html)") )
		return 0
		;;
		"-arg" | "--arg")
		COMPREPLY=( $(compgen -W "n,_arg1,...,_argN >") )
		return 0
		;;
		"-file_mv" | "--file_mv")
		COMPREPLY=( $(compgen -W "filename_src,filename_dest >") )
		return 0
		;;
		"-file_rm" | "--file_rm")
		COMPREPLY=( $(compgen -W "filename >") )
		return 0
		;;
		"-at" | "--at")
		COMPREPLY=( $(compgen -W "_x,_y,_z >") )
		return 0
		;;
		"-uncase" | "--uncase")
		COMPREPLY=( $(compgen -W "string >") )
		return 0
		;;
		"-bin" | "--bin")
		COMPREPLY=( $(compgen -W "binary_int1,... >") )
		return 0
		;;
		"-oct" | "--oct")
		COMPREPLY=( $(compgen -W "octal_int1,... >") )
		return 0
		;;
		"-dec" | "--dec")
		COMPREPLY=( $(compgen -W "decimal_int1,... >") )
		return 0
		;;
		"-hex" | "--hex")
		COMPREPLY=( $(compgen -W "hexadecimal_int1,... >") )
		return 0
		;;
		"-asc" | "--asc")
		COMPREPLY=( $(compgen -W "string >") )
		return 0
		;;
		"-dec2bin" | "--dec2bin")
		COMPREPLY=( $(compgen -W "decimal_int1,... >") )
		return 0
		;;
		"-dec2oct" | "--dec2oct")
		COMPREPLY=( $(compgen -W "decimal_int1,... >") )
		return 0
		;;
		"-dec2hex" | "--dec2hex")
		COMPREPLY=( $(compgen -W "decimal_int1,... >") )
		return 0
		;;
		"-dec2asc" | "--dec2asc")
		COMPREPLY=( $(compgen -W "decimal_int1,... >") )
		return 0
		;;
		"-hex2dec" | "--hex2dec")
		COMPREPLY=( $(compgen -W "hexadecimal_int1,... >") )
		return 0
		;;
		"-oct2dec" | "--oct2dec")
		COMPREPLY=( $(compgen -W "octal_int1,... >") )
		return 0
		;;
		"-bin2dec" | "--bin2dec")
		COMPREPLY=( $(compgen -W "binary_int1,... >") )
		return 0
		;;
		"-string2hex" | "--string2hex")
		COMPREPLY=( $(compgen -W "string >") )
		return 0
		;;
		"-hex2string" | "--hex2string")
		COMPREPLY=( $(compgen -W "hexadecimal_string >") )
		return 0
		;;
		"-strcmp" | "--strcmp")
		COMPREPLY=( $(compgen -W "string1,string2 >") )
		return 0
		;;
		"-quote" | "--quote")
		COMPREPLY=( $(compgen -W "string >") )
		return 0
		;;
		"-fact" | "--fact")
		COMPREPLY=( $(compgen -W "value >") )
		return 0
		;;
		"-gcd" | "--gcd")
		COMPREPLY=( $(compgen -W "a,b >") )
		return 0
		;;
		"-padint" | "--padint")
		COMPREPLY=( $(compgen -W "number,_size>0 >") )
		return 0
		;;
		"-filename" | "--filename")
		COMPREPLY=( $(compgen -W "filename,_number1,_number2,...,_numberN >") )
		return 0
		;;
		"-fitratio_wh" | "--fitratio_wh")
		COMPREPLY=( $(compgen -W "min_width,min_height,ratio_wh >") )
		return 0
		;;
		"-fitscreen" | "--fitscreen")
		COMPREPLY=( $(compgen -W "width,height,_depth >") )
		return 0
		;;
		"-is_percent" | "--is_percent")
		COMPREPLY=( $(compgen -W "string >") )
		return 0
		;;
		"-gpt" | "--gpt")
		COMPREPLY=( $(compgen -W "_scorefile,_title,_photo_width>0,absence_coef>0,_number_of_sessions>=0. >") )
		return 0
		;;
	esac

	if [[ "$cur" == -* ]] ; then
		COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
	else
		_filedir
	fi

}

complete -F _gmic -o filenames gmic

EIGHT_OUNCES = 34.5;
TEN_OUNCES = 50;
TWELVE_OUNCES = 65;

opus-hopper-8oz.stl: hopper.scad
	openscad -o $@ -D 'ext_height=${EIGHT_OUNCES}' hopper.scad

opus-hopper-10oz.stl: hopper.scad
	openscad -o $@ -D 'ext_height=${TEN_OUNCES}' hopper.scad

opus-hopper-12oz.stl: hopper.scad
	openscad -o $@ -D 'ext_height=${TWELVE_OUNCES}' hopper.scad

all: opus-hopper-8oz.stl opus-hopper-10oz.stl opus-hopper-12oz.stl

clean:
	rm -f *.stl
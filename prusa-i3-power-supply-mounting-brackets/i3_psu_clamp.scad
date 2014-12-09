// This is a set of clamps to mount a typical 30A PSU to the Prusa i3.
// I remixed this because I couldn't find anything would fit my PSU
// behind the right support bar on my variant of the i3.
//
// Vitamins required:
//  (4) m3x10mm
//
//  To assemble, orient the PSU with terminals facing down. 
//  Attach the clamps on the left side of the PSU and slide into
//  aluminum frame.  Finally, attach the clamps on the right side.
//
//  Remixed by Joseph Breihan, josephbreihan@gmail.com, from
//  http://www.thingiverse.com/thing:396650,
//  which was made by: drcharlesbell@gmail.com
//
//  Enjoy!

m3_diameter = 3.75;
m3_nut_diameter = 6.3;

module psu_clamp(thickness=5) {
  difference() {
    union() {
      // PSU side
      cube([95,thickness,20]);
      translate([0,-15,0]) cube([95,15,10]);
    }
    // cutout for frame
    translate([5,-11,0]) cube([55,7,10]);
    translate([10,-21,0]) cube([45,10,10]);
    // hole for PSU mount
    translate([32,7,15]) rotate([90,0,0]) cylinder(10,1.75,1.75,$fn=32);
    translate([79,7,15]) rotate([90,0,0]) cylinder(10,1.75,1.75,$fn=32);
    translate([41,-10,0]) cube([0.75,40,20]);
  }
}

psu_clamp();  // bottom clamp
translate([0,-30,0]) psu_clamp(); // top clamp

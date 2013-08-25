jquery.css3.transforms
======================

jquery.css3.transforms lets you get and set rotate, translate, scale, skew and perspective via jQuery css and animate methods.


Example Usage
-------------
```javascript

// SETTERS

// Translate (values in px)
$("#square").css("translateX", 20);
$("#square").css("translateY", -100);

// ...this works as well
$("#square").css("translateX", "20px");
$("#square").css("translateY", "-100px");
 
// 20deg 2D rotation (values in deg)
$("#square").css("rotate", 20);

// 20deg 3D rotations (values in deg)
$("#square").css("rotateX", 20);
$("#square").css("rotateY", 20);
$("#square").css("rotateZ", 20);

// ...this works as well
$("#square").css("rotate",  "20deg");
$("#square").css("rotateX", "20deg");
$("#square").css("rotateY", "20deg");
$("#square").css("rotateZ", "20deg");


// Scale
$("#square").css("scale", 1.2);
$("#square").css("scaleX", 1.2);
$("#square").css("scaleY", 1.2);
$("#square").css("scaleZ", 1.2);

// Skew (values in deg)
$("#square").css("skewX, 30);
$("#square").css("skewY", 30);

//...this works as well
$("#square").css("skewX, "30deg");
$("#square").css("skewY", "30deg");

// Perspective (values in px)
$("#square").css("perspective", 1000)

//...this works as well
$("#square").css("perspective", "1000px")

// Incremental and decremental setters are supported
$("#square").css("rotate", "+=20");
$("#square").css("rotate", "-=20");


// GETTERS
// All the getters return numeric values
// For rotations: values are returned in deg
// For translations: value are returned in px
// For skews: values are returned in deg
// For perspective: values are returned in px
// Here some examples:


$("#square").css("rotate", "20deg");
$("#square").css("rotate");
// This will return 20


// Animations
$("#square").animate({ rotate: 20, translateX: 100}, 600);
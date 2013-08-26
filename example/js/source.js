// Generated by CoffeeScript 1.6.3
(function(){var e,t,n,r,i,s,o,u;u="jquery.css3.transforms";e='<p>jquery.css3.transforms lets you get and set rotate, translate, scale, skew and perspective via jQuery css and animate methods.\n</p>\n<h1>\n<a name="features" class="anchor" href="#features"><span class="octicon octicon-link"></span></a>Features</h1>\n\n<ul>\n<li>Cross browser support</li>\n<li>Incremental and decremental setters support</li>\n<li>You can use transformation with jQuery.animate (see the example below)</li>\n</ul><h1>\n<a name="limitations" class="anchor" href="#limitations"><span class="octicon octicon-link"></span></a>Limitations</h1>\n\n<ul>\n<li>Matrix is not supported</li>\n<li>You can only use single valued transformations e.g. translate(x,y) is not supported</li>\n<li>Limited support for measurement units different from px and deg</li>\n</ul>';n="https://github.com/Ianus/jquery.css3.transforms";t="/archive/master.zip";s='// SETTERS\n\n// Translate (values in px)\n$("#square").css("translateX", 20);\n$("#square").css("translateY", -100);\n\n// ...this works as well\n$("#square").css("translateX", "20px");\n$("#square").css("translateY", "-100px");\n \n// 20deg 2D rotation (values in deg)\n$("#square").css("rotate", 20);\n\n// 20deg 3D rotations (values in deg)\n$("#square").css("rotateX", 20);\n$("#square").css("rotateY", 20);\n$("#square").css("rotateZ", 20);\n\n// ...this works as well\n$("#square").css("rotate",  "20deg");\n$("#square").css("rotateX", "20deg");\n$("#square").css("rotateY", "20deg");\n$("#square").css("rotateZ", "20deg");\n\n\n// Scale\n$("#square").css("scale", 1.2);\n$("#square").css("scaleX", 1.2);\n$("#square").css("scaleY", 1.2);\n$("#square").css("scaleZ", 1.2);\n\n// Skew (values in deg)\n$("#square").css("skewX", 30);\n$("#square").css("skewY", 30);\n\n//...this works as well\n$("#square").css("skewX", "30deg");\n$("#square").css("skewY", "30deg");\n\n// Perspective (values in px)\n$("#square").css("perspective", 1000)\n\n//...this works as well\n$("#square").css("perspective", "1000px")\n\n// Incremental and decremental setters are supported\n$("#square").css("rotate", "+=20");\n$("#square").css("rotate", "-=20");\n\n\n// GETTERS\n// All the getters return numeric values\n// For rotations: values are returned in deg\n// For translations: value are returned in px\n// For skews: values are returned in deg\n// For perspective: values are returned in px\n// Here some examples:\n\n\n$("#square").css("rotate", "20deg");\n$("#square").css("rotate");\n// This will return 20\n\n\n// Animations\n$("#square").animate({ rotate: 20, translateX: 100}, 600);\n\n// Support detection\n$.transform.isSupported()';o={"&":"&amp;","<":"&lt;",">":"&gt;"};r=function(e){return o[e]||e};i=function(e){return e.replace(/[&<>]/g,r)};$(function(){var r;r=i(s);$("#code").html(r);$("#page-title .anchor").text(u);$("#page-comment").html(e);$("#forkme-banner, #page-title .anchor").attr("href",n);return $("#download").attr("href",n+t)})}).call(this);
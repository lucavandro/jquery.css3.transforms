title = "jquery.css3.transforms"
comment = """
<p>jquery.css3.transforms lets you get and set rotate, translate, scale, skew and perspective via jQuery css and animate methods.
</p>
<h1>
<a name="features" class="anchor" href="#features"><span class="octicon octicon-link"></span></a>Features</h1>

<ul>
<li>Cross browser support</li>
<li>Incremental and decremental setters support</li>
<li>You can use transformation with jQuery.animate (see the example below)</li>
</ul><h1>
<a name="limitations" class="anchor" href="#limitations"><span class="octicon octicon-link"></span></a>Limitations</h1>

<ul>
<li>Matrix is not supported</li>
<li>You can only use single valued transformations e.g. translate(x,y) is not supported</li>
<li>Limited support for measurement units different from px and deg</li>
</ul>
"""
githubLink = "https://github.com/Ianus/jquery.css3.transforms"
downloadSuffix = "/archive/master.zip"
sourceCode = """
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
$("#square").css("skewX", 30);
$("#square").css("skewY", 30);

//...this works as well
$("#square").css("skewX", "30deg");
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

// Support detection
$.transform.isSupported()
"""

tagsToReplace =
  "&": "&amp;"
  "<": "&lt;"
  ">": "&gt;"

replaceTag = (tag) ->
  tagsToReplace[tag] or tag

safe_tags_replace = (str) ->
  str.replace /[&<>]/g, replaceTag

$(->
  safe = safe_tags_replace(sourceCode)
  $("#code").html(safe)
  # set title
  $("#page-title .anchor").text(title)
  $("#page-comment").html(comment)
  $("#forkme-banner, #page-title .anchor").attr "href", githubLink
  $("#download").attr "href", githubLink + downloadSuffix
  )

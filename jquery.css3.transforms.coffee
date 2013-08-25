$.vendorPrefix = ->
    ua = navigator.userAgent
    unless ua.indexOf("Opera") is -1
      "-o-"
    else unless ua.indexOf("MSIE") is -1
      "-ms-"
    else unless ua.indexOf("WebKit") is -1
      "-webkit-"
    else if navigator.product is "Gecko"
      "-moz-"
    else
      ""
$.browserCode = ->
   $.vendorPrefix().slice 1,-1

browserCode = do $.browserCode
vendorPrefix = do $.vendorPrefix

$.transform = 
  isSupported: ()->
    typeof $("<div>").get(0).style["#{browserCode}Transform"] isnt "undefined"  
    
generateHook = (property, unit)->
  regExp = new RegExp("#{property}\\((-?\\d+\\.?\\d*)#{unit}\\)","ig")
  
  get:( elem, computed, extra )->
    transform = elem.style["#{browserCode}Transform"]
    if transform isnt ""
      match = regExp.exec(transform)
      unless match
        match = regExp.exec(elem.style.cssText)
      if match
        return parseFloat(match[1])
    return 0
    
  set:(elem, value)->
      # Value ends with "px"
      value = /\d+\.?\d*/.exec(value)[0] or '0'
      transformString = "#{property}(#{value}#{unit})"
      elemTransform = elem.style["#{browserCode}Transform"]
      
      if elemTransform.indexOf(property+"(") > -1
        elemTransform = elemTransform.replace(regExp, transformString)
      else
        elemTransform += transformString
     
      $(elem).css("#{vendorPrefix}transform", elemTransform)
    
$ ()->
  rotations = ["rotate","rotateX","rotateY","rotateZ"]
  translations = ["translateX", "translateY","translateZ"]
  scales = ["scale", "scaleX","scaleY","scaleZ"]
  skews = ["skewX","skewY"]
  
  for rotation in rotations
    $.cssHooks[rotation] = generateHook(rotation, "deg")
  
  for translation in translations
    $.cssHooks[translation] = generateHook(translation, "px")
  
  for scale in scales
    $.cssHooks[scale] = generateHook(scale, "")

  for skew in skews
    $.cssHooks[skew] = generateHook( skew, "deg" )
    
  # add perspective
  $.cssHooks["perspective"] = generateHook( "perspective", "px" ) 

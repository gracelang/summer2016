---
title: "Type: Graphic"
keywords: mydoc
sidebar: grace-doc-sidebar
toc: false
permalink: /Graphic/
folder: grace-docs
---

### Definition
`Graphic -> {...added methods below...}`

### Description
Objects that can be drawn on a canvas and moved around.

### Properties
- `location —> `[`Point`](/grace-documentation/404)  
The location of this object from the top-left corner of the screen.
  
- `x —> `[`Number`](/grace-documentation/404)  
The horizontal location of this object from the top-left corner of the screen.
  
- `y —> `[`Number`](/grace-documentation/404)  
The vertical location of this object from the top-left corner of the screen.
  
- `addToCanvas(canvas:`[`DrawingCanvas`](/grace-documentation/DrawingCanvas)`) —> `[`Done`](/grace-documentation/404)  
Add this object to the given canvas.
  
- `removeFromCanvas —> `[`Done`](/grace-documentation/404)  
Remove this object from its canvas.
  
- `isVisible —> `[`Boolean`](/grace-documentation/404)  
Whether this object is currently set to be visible on the canvas.
  
- `visible:=(value:`[`Boolean`](/grace-documentation/404)`) —> `[`Done`](/grace-documentation/404)  
Set whether this object is currently visible on the canvas.
  
- `moveTo(location:`[`Point`](/grace-documentation/404)`) —> `[`Done`](/grace-documentation/404)  
Move this object to the given point on the canvas.
  
- `moveBy(dx:`[`Number`](/grace-documentation/404),`dy:`[`Number`](/grace-documentation/404)`) —> `[`Done`](/grace-documentation/404)  
Move this object by the given distances on the canvas.
  
- `contains(location:`[`Point`](/grace-documentation/404)`) —> `[`Boolean`](/grace-documentation/404)  
Whether the given location is inside this object.
  
- `overlaps(graphic:`[`Graphic2D`](/grace-documentation/Graphic2D)`) —> `[`Boolean`](/grace-documentation/404)  
Whether any point in the given graphic is inside this object.
  
- `color:=(c:`[`Color`](/grace-documentation/Color)`) —> `[`Done`](/grace-documentation/404)  
set the color of this object to c
  
- `color —> `[`Color`](/grace-documentation/Color)  
return the color of this object
  
- `sendForward —> `[`Done`](/grace-documentation/404)  
Send this object up one layer on the screen
  
- `sendBackward —> `[`Done`](/grace-documentation/404)  
send this object down one layer on the screen
  
- `sendToFront —> `[`Done`](/grace-documentation/404)  
send this object to the top layer on the screen
  
- `sendToBack —> `[`Done`](/grace-documentation/404)  
send this object to the bottom layer on the screen
  

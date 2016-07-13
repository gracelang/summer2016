---
title: "Class: drawingCanvasSize"
keywords: mydoc
sidebar: grace-doc-sidebar
toc: false
permalink: /drawingCanvasSize/
folder: grace-docs
---

### Definition
Class: drawingCanvasSize  

### Description
Not currently available...  

### Properties
  
- `width ->`[`Number`](/grace-documentation/404)  
Current width of the canvas
- `height ->`[`Number`](/grace-documentation/404)  
Current height of the canvas
- `size ->`[`Point`](/grace-documentation/404)  
- `notifyRedraw ->`[`Done`](/grace-documentation/404)  
Inform canvas that it needs to be redrawn
- `startDrawing ->`[`Done`](/grace-documentation/404)  
redraws the canvas and its contents regularly as needed
- `clear ->`[`Done`](/grace-documentation/404)  
remove all items from canvas
- `add ( d: `[`Graphic`](/grace-documentation/Graphic)`) ->`[`Done`](/grace-documentation/404)  
Add new item d to canvas
- `remove ( aGraphic: `[`Graphic`](/grace-documentation/Graphic)`) ->`[`Done`](/grace-documentation/404)  
remove aGraphic from items on canvas
- `sendToFront ( aGraphic: `[`Graphic`](/grace-documentation/Graphic)`) ->`[`Done`](/grace-documentation/404)  
send item d to front/top layer of canvas
- `sendToBack ( aGraphic: `[`Graphic`](/grace-documentation/Graphic)`) ->`[`Done`](/grace-documentation/404)  
send item d to back/bottom layer of canvas
- `sendForward ( aGraphic: `[`Graphic`](/grace-documentation/Graphic)`) ->`[`Done`](/grace-documentation/404)  
send item d one layer higher on canvas
- `sendBackward ( aGraphic: `[`Graphic`](/grace-documentation/Graphic)`) ->`[`Done`](/grace-documentation/404)  
send item d one layer lower on canvas
- `printObjects ->`[`Done`](/grace-documentation/404)  
debug method to print all objects on canvas
- `asString ->`[`String`](/grace-documentation/404)  
string representation of canvas

### Definitions
- `theContext -> `[`Foreign`](/grace-documentation/Foreign)  
- `var theGraphics`  
list of all objects on canvas (hidden or not) emptyList
- `var redraw -> `[`Boolean`](/grace-documentation/404)  

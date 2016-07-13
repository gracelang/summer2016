---
title: "AAA"
keywords: mydoc
sidebar: grace-doc-sidebar
toc: false
permalink: /AAA/
folder: grace-docs
---

### Definition
Class: drawingCanvasSize  

### Description
Not currently available...  

### Properties

- `width `[`Number`](../../404.md)  
Current width of the canvas
- `height `[`Number`](../../404.md)  
Current height of the canvas
- `size `[`Point`](../../404.md)  
- `notifyRedraw `[`Done`](../../404.md)  
Inform canvas that it needs to be redrawn
- `startDrawing `[`Done`](../../404.md)  
redraws the canvas and its contents regularly as needed
- `clear `[`Done`](../../404.md)  
remove all items from canvas
- `add( d: `[`Graphic`](../types/Graphic.md)`) `[`Done`](../../404.md)  
Add new item d to canvas
- `remove( aGraphic: `[`Graphic`](../types/Graphic.md)`) `[`Done`](../../404.md)  
remove aGraphic from items on canvas
- `sendToFront( aGraphic: `[`Graphic`](../types/Graphic.md)`) `[`Done`](../../404.md)  
send item d to front/top layer of canvas
- `sendToBack( aGraphic: `[`Graphic`](../types/Graphic.md)`) `[`Done`](../../404.md)  
send item d to back/bottom layer of canvas
- `sendForward( aGraphic: `[`Graphic`](../types/Graphic.md)`) `[`Done`](../../404.md)  
send item d one layer higher on canvas
- `sendBackward( aGraphic: `[`Graphic`](../types/Graphic.md)`) `[`Done`](../../404.md)  
send item d one layer lower on canvas
- `printObjects `[`Done`](../../404.md)  
debug method to print all objects on canvas
- `asString `[`String`](../../404.md)  
string representation of canvas

### Definitions
- `theContext -> `[`Foreign`](../types/Foreign.md)  
- `var theGraphics`  
list of all objects on canvas (hidden or not) emptyList
- `var redraw`[`Boolean`](../../404.md)  

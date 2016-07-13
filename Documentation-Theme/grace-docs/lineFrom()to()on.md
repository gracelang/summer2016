---
title: "Class: lineFrom()to()on"
keywords: mydoc
sidebar: grace-doc-sidebar
toc: false
permalink: /lineFrom()to()on/
folder: grace-docs
---

### Definition
Class: lineFrom()to()on  

### Description
Not currently available...  

### Properties
  
- `start ->`[`Point`](/grace-documentation/404)  
position of start of line
- `end ->`[`Point`](/grace-documentation/404)  
position of end of line
- `start:= ( newStart: `[`Point`](/grace-documentation/404)`) ->`[`Done`](/grace-documentation/404)  
set start of line
- `end:= ( newEnd: `[`Point`](/grace-documentation/404)`) ->`[`Done`](/grace-documentation/404)  
Set end of line
- `setEndPoints ( newStart: `[`Point`](/grace-documentation/404),`newEnd: `[`Point`](/grace-documentation/404)`) ->`[`Done`](/grace-documentation/404)  
Set start and end of line
- `draw ( ctx: `[`Foreign`](/grace-documentation/Foreign)`) ->`[`Done`](/grace-documentation/404)  
Draw the line on the canvas
- `moveBy ( dx: `[`Number`](/grace-documentation/404),`dy: `[`Number`](/grace-documentation/404)`) ->`[`Done`](/grace-documentation/404)  
Moves the line by (dx, dy)
- `moveTo ( newLocn: `[`Point`](/grace-documentation/404)`) ->`[`Done`](/grace-documentation/404)  
Moves this object to newLocn
- `dist2 ( v: `[`Point`](/grace-documentation/404),`w: `[`Point`](/grace-documentation/404)`) ->`[`Number`](/grace-documentation/404)  
answers the square of the distance between v and w
- `distToSegmentSquared ( p: `[`Point`](/grace-documentation/404),`v: `[`Point`](/grace-documentation/404),`w: `[`Point`](/grace-documentation/404)`) ->`[`Number`](/grace-documentation/404)  
- `distToSegment ( p: `[`Point`](/grace-documentation/404),`v: `[`Point`](/grace-documentation/404),`w: `[`Point`](/grace-documentation/404)`) ->`[`Number`](/grace-documentation/404)  
Return the distance from p to the line through v and w
- `contains ( pt: `[`Point`](/grace-documentation/404)`) ->`[`Boolean`](/grace-documentation/404)  
Answers whether the line contains pt.  Returns true if pt is within 2 pixels of the line
- `asString ->`[`String`](/grace-documentation/404)  
Answers a string representation of this line

### Definitions
- `var theEnd -> `[`Point`](/grace-documentation/404)  

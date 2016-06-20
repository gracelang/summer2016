---
title: Drawing Canvas | GraceDocs
keywords: mydoc
sidebar: grace-doc-sidebar
toc: false
permalink: /drawingCanvas/
folder: grace-docs
---


## Type: Line

**`DrawingCanvas = Component & type { ...added methods below... }`**

______

DrawingCanvas holding graphic objects


### Added methods

-  `add(d:Graphic) -> Done` <br>
    Add d to canvas.

-  `clear -> Done` <br>
    Clear the canvas.

-  `Height -> Number` <br>
    Returns the height.

-  `notifyRedraw -> Done` <br>
    Inform canvas that it needs to be redrawn

-  `remove(d:Graphic) -> Done` <br>
    Remove d from canvas. 

-  `SendBackward(d:Graphic) -> Done` <br>
    Send d down one layer in graphics.
    
-  `sendForward(d:Graphic) -> Done` <br>
    Send d up one layer in graphics.

-  `sendToBack(d:Graphic) -> Done` <br>
    Send d to bottom layer of graphics

-  `sendToFront(d:Graphic) -> Done` <br>
    Send d to top layer of graphics.
    
-  `size -> Point` <br>

-  `startDrawing -> Done` <br>
    Redraws the canvas and its contents regularly as needed.
    
-  `width -> Number` <br>
    Return the current dimensions of the canvas. 
    

### Added methods

`add(d:Graphic) -> Done` <br>
    Add d to canvas.

`clear -> Done` <br>
    Clear the canvas.

`Height -> Number` <br>
    Returns the height.

`notifyRedraw -> Done` <br>
    Inform canvas that it needs to be redrawn

`remove(d:Graphic) -> Done` <br>
    Remove d from canvas. 

`SendBackward(d:Graphic) -> Done` <br>
    Send d down one layer in graphics.
    
`sendForward(d:Graphic) -> Done` <br>
    Send d up one layer in graphics.

`sendToBack(d:Graphic) -> Done` <br>
    Send d to bottom layer of graphics

`sendToFront(d:Graphic) -> Done` <br>
    Send d to top layer of graphics.
    
`size -> Point` <br>

`startDrawing -> Done` <br>
    Redraws the canvas and its contents regularly as needed.
    
`width -> Number` <br>
    Return the current dimensions of the canvas. 
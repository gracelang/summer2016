---
layout: post
title:  'Class: textFieldUnlabeled | GraceDocs'
date:   2016-06-03 11:49:36
---
<div class="header">

<span class="header-left">Class: applicationTitle()size</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="fields" class="section">

#### Fields

Field name
Type (if given)
`def`
events
``
`var`
isHorizontal
`Boolean`
Whether new items are added to window from left to right or top to
bottom
`var`
isOpened
`Boolean`
whether window is visible
`var`
theHeight
`Number`
`var`
theTitle
`String`
`var`
theWidth
`Number`
`var`
theWindow
`Foreign`

</div>

<div id="methods" class="section">

#### Methods

Method signature
Return type
`arrangeHorizontal`
`Done`
Arrange the contents of this container along the horizontal axis.
Components which exceed the width of the container will wrap around.
`arrangeVertical`
`Done`
Arrange the contents of this container along the vertical axis.
Components which exceed the height of the container will wrap around.
`asString`
`String`
Return string representing the application
`element`
`Foreign`
`height`
`Number`
the current height of the window
`on(kind:String)do(response:Procedure<Event>)`
`Done`
Associate response with event kind
`onMouse(kind:String)do(bl:MouseResponse)`
`Done`
Respond to mouse action of kind with response bl
`onMouseEnterDo(f:MouseResponse)`
`Done`
Respond to a mouse entering this window with the response f.
`onMouseExitDo(f:MouseResponse)`
`Done`
Respond to a mouse exiting this window with the response f.
`startApplication`
`Done`
Create window with listeners for mouse enter and exit actions
`stopApplication`
`Done`
Close the window
`width`
`Number`
The current width of the window
`windowTitle`
`String`
The title of the application window.
`windowTitle:=(value:String)`
`Done`
Set the title of the application window.

</div>

</div>

<div class="header">

<span class="header-left">Class: audioUrl</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="fields" class="section">

#### Fields

          Field name   Type (if given)
  ------- ------------ -----------------
  `def`   element      ``

</div>

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
String representation of audio file
`isEnded`
`Boolean`
Whether the audio has finished playing.
`isLooping`
`Boolean`
Whether the audio will loop back to the start when it ends.
`looping:=(value:Boolean)`
`Done`
Set whether audio loops back to start when it end
`pause`
`Done`
Pause the audio.
`play`
`Done`
Play the audio.
`source`
`String`
URL of the audio file
`source:=(value:String)`
`Done`
Reset the source URL of the audio file

</div>

</div>

<div class="header">

<span class="header-left">Class: buttonLabeled</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="methods" class="section">

#### Methods

  Method signature   Return type
  ------------------ -------------
  `asString`         `String`

</div>

</div>

<div class="header">

<span class="header-left">Class: componentFromElement</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="top-description" class="section">

<div class="top-box">

<span
class="headline">`mouseEventSource()event.mouseEventSource(source')event(event')`</span>

------------------------------------------------------------------------

<span
class="headline">`eventSource.eventSource(source':Component) -> Event`</span>

------------------------------------------------------------------------

<span
class="headline">`keyEventSource()event.keyEventSource(source':Component)event(event':Foreign) -> KeyEvent`</span>

------------------------------------------------------------------------

</div>

</div>

<div id="fields" class="section">

#### Fields

Field name
Type (if given)
`def`
at
``
`def`
code
`Number`
def character is public = dom.window.String.fromCharCode(event'.which)
`def`
element
``
`def`
source
`Component`

</div>

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
string representation of component
`flexible:=(value:Boolean)`
`Done`
Set whether component is flexibile
`height`
`Number`
height of component
`isFlexible`
`Boolean`
Does component have some flex in size
`on(event':String)do(f:Procedure<Foreign>)`
`Done`
assocate action f with event' on component
`on(kind:String)withKeyDo(f:KeyResponse)`
`Done`
Associate action f to key event of kind
`on(kind:String)withPointDo(f:MouseResponse)`
`Done`
associate response f to mouse event of kind
`onKeyPressDo(f:KeyResponse)`
`Done`
Associate action f to key press event
`onKeyReleaseDo(f:KeyResponse)`
`Done`
Associate action f to key release event
`onKeyTypeDo(f:KeyResponse)`
`Done`
Associate action f tokey type (press & release) event
`onMouseClickDo(f:MouseResponse)`
`Done`
Associates action f with mouse click event
`onMouseDragDo(f:MouseResponse)`
`Done`
Associate action f to mouse drag event
`onMouseEnterDo(f:MouseResponse)`
`Done`
Associate action f to mouse enter (of window) event
`onMouseExitDo(f:MouseResponse)`
`Done`
Associate action f to mouse exit event
`onMouseMoveDo(f:MouseResponse)`
`Done`
Associate action f to mouse move event
`onMousePressDo(f:MouseResponse)`
`Done`
Associate action f to mouse press event
`onMouseReleaseDo(f:MouseResponse)`
`Done`
Associate action f to mouse release event
`size`
`Point`
dimensions of component
`width`
`Number`
width of component

</div>

</div>

<div class="header">

<span class="header-left">Class: componentOfElementType</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

</div>

<div class="header">

<span class="header-left">Class: containerEmpty</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

</div>

<div class="header">

<span class="header-left">Class: containerFromElement</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="fields" class="section">

#### Fields

          Field name   Type (if given)
  ------- ------------ -----------------
  `def`   children     ``

</div>

<div id="methods" class="section">

#### Methods

Method signature
Return type
`append(aComponent:Component)`
`Done`
Add aComponent after all existing components in the container
`arrangeHorizontal`
`Done`
Arrange elements in rows
`arrangeVertical`
`Done`
Arrange elements in columns
`asString`
`String`
return description of container
`at(index:Number)`
`Component`
Subcomponent at position index
`at(index:Number)put(aComponent:Component)`
`Done`
Replace subcomponent at index by aComponent
`do(f:Procedure<Component>)`
`Done`
Apply f to all children of container.
`flex`
`Done`
Make container more flexible
`fold(f:Function2<T, Component, T>)startingWith(initial:T)`
`T`
Generalize binary function f to apply to all children of container.
Value if no children is initial
`isEmpty`
`Boolean`
Is it empty?
`prepend(aComponent:Component)`
`Done`
Add aComponent before all existing components in the container
`size`
`Number`
Number of children

</div>

</div>

<div class="header">

<span class="header-left">Class: containerOfElementType</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

</div>

<div class="header">

<span class="header-left">Class: containerSize</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

</div>

<div class="header">

<span class="header-left">Class: drawable2DAt()size()on</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="fields" class="section">

#### Fields

          Field name   Type (if given)
  ------- ------------ -----------------
  `var`   theHeight    `Number`
  `var`   theWidth     `Number`

</div>

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
Return string representation of the object
`contains(locn:Point)`
`Boolean`
whether the object contains locn Only checks whether is in the bounding
box of the object!!
`height`
`Number`
`overlaps(other:Graphic2D)`
`Boolean`
Whether bounding box of object overlaps bounding box of other
`size`
`Point`
`width`
`Number`

</div>

</div>

<div class="header">

<span class="header-left">Class: drawableAt()on</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="fields" class="section">

#### Fields

Field name
Type (if given)
`var`
canvas
`DrawingCanvas`
The canvas this object is part of
`var`
isVisible
`Boolean`
Determine if object is shown on screen
`var`
location
`Point`
location of object on screen
`var`
theColor
`Color`
the color of this object
`var`
theFrameColor
`Color`

</div>

<div id="methods" class="section">

#### Methods

Method signature
Return type
`==(other)`
`Done`
Object identity. This doesn't seem right to apb, but it's what the rest
of the code assumes.
`addToCanvas(c:DrawingCanvas)`
`Done`
Add this object to canvas c
`asString`
`String`
Return a string representation of the object
`color`
`Color`
`color:=(newColor:Color)`
`Done`
`contains(locn:Point)`
`Boolean`
Determine whether this object contains the point at locn
`draw(ctx:Foreign)`
`Done`
Draw this object on the applet !! confidential
`frameColor`
`Color`
`frameColor:=(newfColor:Color)`
`Done`
`moveBy(dx:Number, dy:Number)`
`Done`
move this object dx to the right and dy down
`moveTo(newLocn:Point)`
`Done`
move this object to newLocn
`notifyRedraw`
`Done`
Tell the canvas that the screen needs to be repainted
`overlaps(otherObject:Graphic2D)`
`Boolean`
Determine whether this object overlaps otherObject
`removeFromCanvas`
`Done`
Remove this object from its canvas
`sendBackward`
`Done`
send this object down one layer on the screen
`sendForward`
`Done`
Send this object up one layer on the screen
`sendToBack`
`Done`
send this object to the bottom layer on the screen
`sendToFront`
`Done`
send this object to the top layer on the screen
`visible:=(b:Boolean)`
`Done`
Set whether object is visible or hidden
`x`
`Number`
x coordinate of object
`y`
`Number`
y coordinate of object

</div>

</div>

<div class="header">

<span class="header-left">Class:
drawableImageAt()size()url()on</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="fields" class="section">

#### Fields

          Field name   Type (if given)
  ------- ------------ -----------------
  `var`   theImage     ``

</div>

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
Return string representation of image
`draw(ctx:Foreign)`
`Done`
draw the image

</div>

</div>

<div class="header">

<span class="header-left">Class: drawingCanvasSize</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="fields" class="section">

#### Fields

Field name
Type (if given)
`var`
redraw
`Boolean`
`def`
theContext
`Foreign`
`var`
theGraphics
``
list of all objects on canvas (hidden or not) emptyList

</div>

<div id="methods" class="section">

#### Methods

Method signature
Return type
`add(d:Graphic)`
`Done`
Add new item d to canvas
`asString`
`String`
string representation of canvas
`clear`
`Done`
remove all items from canvas
`height`
`Number`
Current height of the canvas
`notifyRedraw`
`Done`
Inform canvas that it needs to be redrawn
`printObjects`
`Done`
debug method to print all objects on canvas
`remove(aGraphic:Graphic)`
`Done`
remove aGraphic from items on canvas
`sendBackward(aGraphic:Graphic)`
`Done`
send item d one layer lower on canvas
`sendForward(aGraphic:Graphic)`
`Done`
send item d one layer higher on canvas
`sendToBack(aGraphic:Graphic)`
`Done`
send item d to back/bottom layer of canvas
`sendToFront(aGraphic:Graphic)`
`Done`
send item d to front/top layer of canvas
`size`
`Point`
`startDrawing`
`Done`
redraws the canvas and its contents regularly as needed
`width`
`Number`
Current width of the canvas

</div>

</div>

<div class="header">

<span class="header-left">Class: eventLogKind()response</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="fields" class="section">

#### Fields

          Field name   Type (if given)
  ------- ------------ -----------------
  `def`   kind         `String`
  `def`   response     `Procedure`

</div>

</div>

<div class="header">

<span class="header-left">Class: eventSource</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="fields" class="section">

#### Fields

          Field name   Type (if given)
  ------- ------------ -----------------
  `def`   source       `Component`

</div>

<div id="methods" class="section">

#### Methods

  Method signature   Return type
  ------------------ -------------
  `asString`         `String`

</div>

</div>

<div class="header">

<span class="header-left">Class: fieldOfType()labeled</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
String representing the labeled field (including label)
`label`
`String`
label on the field
`label:=(value:String)`
`Done`
reset the label on the field

</div>

</div>

<div class="header">

<span class="header-left">Class:
filledArcAt()size()from()to()on</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
String representation of filled arc
`draw(ctx:Foreign)`
`Done`
Draw filled arc on canvas

</div>

</div>

<div class="header">

<span class="header-left">Class: filledOvalAt()size()on</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
string representation of oval
`draw(ctx:Foreign)`
`Done`
Draw filled oval on canvas

</div>

</div>

<div class="header">

<span class="header-left">Class: filledRectAt()size()on</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
Return string representation of the filled rectangle
`draw(ctx:Foreign)`
`Done`
Draw filled rectangle on the canvas

</div>

</div>

<div class="header">

<span class="header-left">Class:
framedArcAt()size()from()to()on</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
String representation of framed arc
`draw(ctx:Foreign)`
`Done`
Draw framed arc

</div>

</div>

<div class="header">

<span class="header-left">Class: framedOvalAt()size()on</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
string representation of oval
`draw(ctx:Foreign)`
`Done`
draw framed oval on canvas

</div>

</div>

<div class="header">

<span class="header-left">Class: framedRectAt()size()on</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
Return description of framed rectangle
`draw(ctx:Foreign)`
`Done`
Draw the framed rectangle on the canvas

</div>

</div>

<div class="header">

<span class="header-left">Class: graphicApplicationSize</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="fields" class="section">

#### Fields

          Field name   Type (if given)
  ------- ------------ -----------------
  `def`   after        `Container`
  `def`   before       `Container`
  `def`   canvas       `DrawingCanvas`

</div>

<div id="methods" class="section">

#### Methods

Method signature
Return type
`append(aComponent:Component)`
`Done`
Add a component to the bottom of the window.
`asString`
`String`
`onMouseClick(pt:Point)`
`Done`
The following methods are defind to be called in response to mouse
actions. They will be overridden in subclasses to provide appropriate
behavior, as now they do nothing! Method to handle mouse click at pt
`onMouseDrag(pt:Point)`
`Done`
Method to handle mouse drag at pt
`onMouseEnter(pt:Point)`
`Done`
Method to handle mouse enter of canvas at pt
`onMouseExit(pt:Point)`
`Done`
Method to handle mouse exit of canvas at pt
`onMouseMove(pt:Point)`
`Done`
Method to handle mouse move at pt
`onMousePress(pt:Point)`
`Done`
Method to handle mouse press at pt
`onMouseRelease(pt:Point)`
`Done`
Method to handle mouse release at pt
`prepend(aComponent:Component)`
`Done`
Add a component to the top of the window.
`startGraphics`
`Done`
Create window and its contents as well as prepare the window to handle
mouse events

</div>

</div>

<div class="header">

<span class="header-left">Class: inputFromElement</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
return description of component
`onBlurDo(f:Response)`
`Done`
Respond with action f to this input losing focus with the given event.
`onChangeDo(f:Response)`
`Done`
Respond with action f to this input having its value changed.
`onFocusDo(f:Response)`
`Done`
Respond with action f to this input gaining focus with the given event.

</div>

</div>

<div class="header">

<span class="header-left">Class: inputOfElementType</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

</div>

<div class="header">

<span class="header-left">Class: inputOfType</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

</div>

<div class="header">

<span class="header-left">Class: keyEventSource()event</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="fields" class="section">

#### Fields

Field name
Type (if given)
`def`
code
`Number`
def character is public = dom.window.String.fromCharCode(event'.which)

</div>

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
String representation of the key event

</div>

</div>

<div class="header">

<span class="header-left">Class: labeledWidgetFromElement</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="fields" class="section">

#### Fields

Field name
Type (if given)
`var`
labeler
`Foreign`
debug -- work around for selectBox

</div>

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
a human-readable description of this object
`label`
`String`
answers the Text of the label
`label:=(value:String)`
`Done`
sets the label to value
`labelElement`
`Foreign`

</div>

</div>

<div class="header">

<span class="header-left">Class:
labeledWidgetOfElementType()labeled</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="methods" class="section">

#### Methods

Method signature
Return type
`init`
`Done`
method to help get initialization code right in choice elements

</div>

</div>

<div class="header">

<span class="header-left">Class: labeledWidgetOfElementType</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

</div>

<div class="header">

<span class="header-left">Class:
lineFrom()length()direction()on</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

</div>

<div class="header">

<span class="header-left">Class: lineFrom()to()on</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="fields" class="section">

#### Fields

          Field name   Type (if given)
  ------- ------------ -----------------
  `var`   theEnd       `Point`

</div>

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
Answers a string representation of this line
`contains(pt:Point)`
`Boolean`
Answers whether the line contains pt. Returns true if pt is within 2
pixels of the line
`dist2(v:Point, w:Point)`
`Number`
answers the square of the distance between v and w
`distToSegment(p:Point, v:Point, w:Point)`
`Number`
Return the distance from p to the line through v and w
`distToSegmentSquared(p:Point, v:Point, w:Point)`
`Number`
`draw(ctx:Foreign)`
`Done`
Draw the line on the canvas
`end`
`Point`
position of end of line
`end:=(newEnd:Point)`
`Done`
Set end of line
`moveBy(dx:Number, dy:Number)`
`Done`
Moves the line by (dx, dy)
`moveTo(newLocn:Point)`
`Done`
Moves this object to newLocn
`setEndPoints(newStart:Point, newEnd:Point)`
`Done`
Set start and end of line
`start`
`Point`
position of start of line
`start:=(newStart:Point)`
`Done`
set start of line

</div>

</div>

<div class="header">

<span class="header-left">Class: mouseEventSource()event</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="fields" class="section">

#### Fields

          Field name   Type (if given)
  ------- ------------ -----------------
  `def`   at           `Point`

</div>

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
String representation of the mouse event

</div>

</div>

<div class="header">

<span class="header-left">Class: numberFieldLabeled</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
Return description of the number field
`number`
`Number`
Return the number in the field
`number:=(value:Number)`
`Done`
update the number in the field

</div>

</div>

<div class="header">

<span class="header-left">Class: numberFieldUnlabeled</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

</div>

<div class="header">

<span class="header-left">Class: passwordFieldLabeled</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
Return string representation of password field

</div>

</div>

<div class="header">

<span class="header-left">Class: passwordFieldUnlabeled</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

</div>

TEMPORARY
<div class="header">

<span class="header-left">Class: resizable2DAt()size()on</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
Return string representation of object
`height:=(h:Number)`
`Done`
Reset height of object to h
`size:=(dimensions:Point)`
`Done`
Reset size of object to w x h
`width:=(w:Number)`
`Done`
Reset width of object to w

</div>

</div>

<div class="header">

<span class="header-left">Class:
selectBoxOptionsFrom()labeled</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="fields" class="section">

#### Fields

          Field name   Type (if given)
  ------- ------------ -----------------
  `def`   anOption     `Foreign`

</div>

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
Return string representation of select box
`init`
`Done`
`labelElement`
`Foreign`
`selected`
`String`
Return selected item in menu
`selected:=(value:String)`
`Done`
Sets selected item in menu to value

</div>

</div>

<div class="header">

<span class="header-left">Class: selectBoxOptionsFrom</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

</div>

<div class="header">

<span class="header-left">Class: textAt()with()on</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="fields" class="section">

#### Fields

Field name
Type (if given)
`var`
fsize
`Number`
`var`
theContents
`String`
`var`
wid
`Number`
Return approximation of the width of the text

</div>

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
Return string representation of the text item
`contents`
`String`
Return the string held in the text item (i.e., its contents)
`contents:=(newContents:String)`
`Done`
Reset the contents to newContents
`draw(ctx:Foreign)`
`Done`
Draw the text
`fontSize`
`Number`
Return the size of the font
`fontSize:=(size':Number)`
`Done`
Reset the font size to size'
`width`
`Number`

</div>

</div>

<div class="header">

<span class="header-left">Class: textBoxWith</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
Text representation of the text box
`contents`
`String`
Return string contents of the text box
`contents:=(value:String)`
`Done`
Reset the contents of the text box to value

</div>

</div>

<div class="header">

<span class="header-left">Class: textFieldLabeled</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

<div id="methods" class="section">

#### Methods

Method signature
Return type
`asString`
`String`
Return string representation of the text field
`text`
`String`
answer the text
`text:=(value:String)`
`Done`
Updates the text

</div>

</div>

<div class="header">

<span class="header-left">Class: textFieldUnlabeled</span><span
class="header-right">GraceDocs</span>

</div>

<div class="container">

</div>

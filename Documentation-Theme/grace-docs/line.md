---
title: Line | GraceDocs
keywords: mydoc
sidebar: grace-doc-sidebar
toc: false
permalink: /line/
folder: grace-docs
---


## Type: Line

**`Line = Graphic & type { ...added methods below... }`**

------------------------------------------------------------------------

One-dimensional objects start and end of line


### Added methods

<table>
                    <tbody><tr>
                        <th>Method signature</th>
                        <th>Return type</th>
                    </tr>
                    <tr class="row-even">
                        <td><code><span class="method-name">add</span>(<span class="parameter-name">d</span>:<a href="Graphic.html">Graphic</a>)</code></td>
                        <td><code><a href="../../404.html">Done</a></code></td>
                    </tr>
                    <tr class="description">
                        <td colspan="2">add d to canvas
</td>
                    </tr>
                    <tr class="row-odd">
                        <td><code><span class="method-name">clear</span></code></td>
                        <td><code><a href="../../404.html">Done</a></code></td>
                    </tr>
                    <tr class="description">
                        <td colspan="2">clear the canvas
</td>
                    </tr>
                    <tr class="row-even">
                        <td><code><span class="method-name">height</span></code></td>
                        <td><code><a href="../../404.html">Number</a></code></td>
                    </tr>
                    <tr class="row-odd">
                        <td><code><span class="method-name">notifyRedraw</span></code></td>
                        <td><code><a href="../../404.html">Done</a></code></td>
                    </tr>
                    <tr class="description">
                        <td colspan="2">Inform canvas that it needs to be redrawn
</td>
                    </tr>
                    <tr class="row-even">
                        <td><code><span class="method-name">remove</span>(<span class="parameter-name">d</span>:<a href="Graphic.html">Graphic</a>)</code></td>
                        <td><code><a href="../../404.html">Done</a></code></td>
                    </tr>
                    <tr class="description">
                        <td colspan="2">remove d from canvas
</td>
                    </tr>
                    <tr class="row-odd">
                        <td><code><span class="method-name">sendBackward</span>(<span class="parameter-name">d</span>:<a href="Graphic.html">Graphic</a>)</code></td>
                        <td><code><a href="../../404.html">Done</a></code></td>
                    </tr>
                    <tr class="description">
                        <td colspan="2">send d down one layer in graphics
</td>
                    </tr>
                    <tr class="row-even">
                        <td><code><span class="method-name">sendForward</span>(<span class="parameter-name">d</span>:<a href="Graphic.html">Graphic</a>)</code></td>
                        <td><code><a href="../../404.html">Done</a></code></td>
                    </tr>
                    <tr class="description">
                        <td colspan="2">send d up one layer in graphics
</td>
                    </tr>
                    <tr class="row-odd">
                        <td><code><span class="method-name">sendToBack</span>(<span class="parameter-name">d</span>:<a href="Graphic.html">Graphic</a>)</code></td>
                        <td><code><a href="../../404.html">Done</a></code></td>
                    </tr>
                    <tr class="description">
                        <td colspan="2">send d to bottom layer of graphics
</td>
                    </tr>
                    <tr class="row-even">
                        <td><code><span class="method-name">sendToFront</span>(<span class="parameter-name">d</span>:<a href="Graphic.html">Graphic</a>)</code></td>
                        <td><code><a href="../../404.html">Done</a></code></td>
                    </tr>
                    <tr class="description">
                        <td colspan="2">Send d to top layer of graphics
</td>
                    </tr>
                    <tr class="row-odd">
                        <td><code><span class="method-name">size</span></code></td>
                        <td><code><a href="../../404.html">Point</a></code></td>
                    </tr>
                    <tr class="row-even">
                        <td><code><span class="method-name">startDrawing</span></code></td>
                        <td><code><a href="../../404.html">Done</a></code></td>
                    </tr>
                    <tr class="description">
                        <td colspan="2">redraws the canvas and its contents regularly as needed
</td>
                    </tr>
                    <tr class="row-odd">
                        <td><code><span class="method-name">width</span></code></td>
                        <td><code><a href="../../404.html">Number</a></code></td>
                    </tr>
                    <tr class="description">
                        <td colspan="2">return the current dimensions of the canvas
</td>
                    </tr>
  </tbody></table>
  
<br>
<br>
   
## Added Methods 
   
#### **'end'**  
   
Return Type: 'Point' Description: This is the end
   
#### end:=(end':Point)
`Done`


<br>
<br>
<br>

| Method signature                         | Return type  | Description |
| ---------------------------------------- | :----------: | -------- |
| 'end'                                         |   'Point'   | This is the end |
| `end:=(end':Point)`                           |   `Done`    | Another col |
| `setEndPoints(start':Point, end':Point)` + *This is more text here...*     |   `Done`    | Exactly |
| And more                                      |   `Done`    | A test  |

 <br>
  <br>
   <br>

`
`Done`
`start`
`Point`
`start:=(start':Point)`
`Done`
set start and end of line

---
title: "Class: containerFromElement"
keywords: mydoc
sidebar: grace-doc-sidebar
toc: false
permalink: /containerFromElement/
folder: grace-docs
---

### Definition
Class: containerFromElement  

### Description
Not currently available...  

### Properties
  
- `size ->`[`Number`](/grace-documentation/404)  
Number of children
- `isEmpty ->`[`Boolean`](/grace-documentation/404)  
Is it empty?
- `at ( index: `[`Number`](/grace-documentation/404)`) ->`[`Component`](/grace-documentation/Component)  
Subcomponent at position index
- `at ( index: `[`Number`](/grace-documentation/404)`)put ( aComponent: `[`Component`](/grace-documentation/Component)`) ->`[`Done`](/grace-documentation/404)  
Replace subcomponent at index by aComponent
- `append ( aComponent: `[`Component`](/grace-documentation/Component)`) ->`[`Done`](/grace-documentation/404)  
Add aComponent after all existing components in the container
- `prepend ( aComponent: `[`Component`](/grace-documentation/Component)`) ->`[`Done`](/grace-documentation/404)  
Add aComponent before all existing components in the container
- `do ( f: `[`Procedure`](/grace-documentation/Procedure)[`Component`](/grace-documentation/Component)`) ->`[`Done`](/grace-documentation/404)  
Apply f to all children of container.
- `fold ( f: `[`Function2`](/grace-documentation/Function2)[`T`](/grace-documentation/404),[`Component`](/grace-documentation/Component),[`T`](/grace-documentation/404)`)startingWith ( initial: `[`T`](/grace-documentation/404)`) ->`[`T`](/grace-documentation/404)  
Generalize binary function f to apply to all children of container. Value if no children is initial
- `flex ->`[`Done`](/grace-documentation/404)  
Make container more flexible
- `arrangeHorizontal ->`[`Done`](/grace-documentation/404)  
Arrange elements in rows
- `arrangeVertical ->`[`Done`](/grace-documentation/404)  
Arrange elements in columns
- `asString ->`[`String`](/grace-documentation/404)  
return description of container

### Definitions
- `children -> `  

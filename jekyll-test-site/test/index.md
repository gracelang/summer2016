---
layout: default
encoding: utf-8
---

This is a test webpage. Let's see if if works?

<object id="test" data="http://web.cecs.pdx.edu/~pcowal/minigrace/js-simple/"
width="800" height="800"> </object>

<script>
function changeData(newURL) {
    if(!document.getElementById("test"))
        return false;
    document.getElementById("test").setAttribute('data', newURL);
}

window.onload = changeData;
</script>

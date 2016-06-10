
minigrace.stderr_write = function(value) {
  var stderr = document.getElementById("stderr_txt");
  stderr.value += value + "\n";
  stderr.scrollTop = stderr.scrollHeight;
};

minigrace.stdin_read = function() {
  return prompt("Input: ");
}

minigrace.stdout_write = function(value) {
    var stdout = document.getElementById("stdout_txt");
    stdout.value += value;
    scrollstdout();
};

function go() {
  editor.getSession().clearAnnotations();

  var old_stderr = document.getElementById('stderr_txt').value;
  document.getElementById('stderr_txt').value = "";
  minigrace.modname = document.getElementById('modname').value;
  var compiled = minigrace.compilerun(getCode());
  if (!compiled && !document.getElementById('debugtoggle').checked)
      document.getElementById('stderr_txt').value = old_stderr;
  document.getElementById('js_txt').value = minigrace.generated_output;
  if (minigrace.compileError) {
      var lines = document.getElementById('stderr_txt').value.split("\n");
      var bits;
      for (var i=0; i<lines.length; i++) {
          if (lines[i].substring(0, 10) != 'minigrace:') {
              bits = lines[i].split(':');
              break;
          }
      }
      editor.moveCursorTo(bits[1] - 1, bits[2] - 1);
      editor.getSelection().clearSelection();
      bits.shift();
      editor.getSession().setAnnotations([{
          row: bits.shift() - 1,
          column: bits.shift() - 1,
          text: bits.join(":"),
          type: "error"
      }]);
  }
  scrollstdout();
}


function clearstdout() {
    document.getElementById("stdout_txt").value = "";
}

function scrollstdout() {
    if(document.getElementById("autoscroll").checked) {
        var stdout = document.getElementById("stdout_txt");
        stdout.scrollTop = stdout.scrollHeight;
    }
}

function selectvisibility() {
    minigrace.vis = document.getElementById("defaultVisibility").value;
}
window.addEventListener("load", function() {
    document.getElementById('stdout_txt').value = "";
    document.getElementById('stderr_txt').value = "";
    if (window.location.hash) {
        if (window.location.hash.substring(0, 8) == "#sample=") {
            var s = window.location.hash.substring(8);
            loadsample(s);
        }
    }
});


/***************************************/
/****     Start of Tabs Section     ****/
/***************************************/
// manages the tabs on the right hand side of the screen (Program output/Generated code/Canvas)
function outputTabManager(that, target) {
    if (!that.className.match("selected")) {
        var divs = document.getElementById("output").getElementsByTagName("div");
        for (var i=0;i<divs.length;i++) {
            if (divs[i].className) {
                if (divs[i].className.match("selected")) {
                    divs[i].className = that.className;
                }
            } else {
                divs[i].style.display = "none";
            }
        }
        that.className += " selected";
        document.getElementById(target).style.display = "inline";
        if (target == "stdout_tab")
            document.getElementById("stdout_options").style.display = "inline";
    }
}

function startup() {
  document.getElementById('code_txt_real').style.display = 'block';
  document.getElementById('code_txt').style.display = 'none';
  editor = ace.edit("code_txt_real");
  editor.$blockScrolling = Infinity;
  var GraceMode = require("ace/mode/grace").Mode;
  editor.getSession().setMode(new GraceMode());
  editor.setBehavioursEnabled(false);
  editor.setHighlightActiveLine(true);
  editor.setShowFoldWidgets(false);
  editor.setShowPrintMargin(false);
  editor.getSession().setUseSoftTabs(true);
  editor.getSession().setTabSize(4);
  editor.commands.bindKeys({"ctrl-l":null, "ctrl-shift-r":null, "ctrl-r":null, "ctrl-t":null})

  var cursorMoved = false;  //Global varaible to be set when the cursor moves
                            //after a charachter replacement occurs

  //Possible replacements in the editor
  var replacements =
  {
       "!=":"≠",
       ">=":"≥",
       "<=":"≤",
       "->":"→",
       "[[":"⟦",
       "]]":"⟧"
 };

//Possible replacements for undoing the original replace
 var undoReplace =
 {
      "≠":"!=",
      "≥":">=",
      "≤":"<=",
      "→":"->",
      "⟦":"[[",
      "⟧":"]]"
 };

 var endSymbols = ['=','>','[',']'];

  //****** Add All Character Equivalancies ********//
  for(i =0; i<4; ++i)
  {
       var a = endSymbols[i];
       addCharEq(a);
  }

function addCharEq(a)
{
     editor.commands.addCommand({
        name: 'myCommand'+a,
        bindKey: {win: a,  mac: a},
        exec: function(editor) {
            //Insert '=' to support standard functionality
            editor.insert(a);

            //Set the cursor moved to false to allow backspace replacement
            cursorMoved = false;

            //Calculate the cursor position
            var cursor = editor.getCursorPosition();
            Range = require("ace/range").Range;

            //Check if replacement is possible
            if(cursor.column >= 2){

                  //Get the range and the text
                  var cursorLine = new Range(cursor.row, cursor.column-2, cursor.row, cursor.column);
                  var text = editor.session.getTextRange(cursorLine);
                  if(text in replacements)
                  {
                       //Insert the matching symbol
                       editor.session.replace(cursorLine, replacements[text]);

                       //Store text for undo
                       lastReplacement = text;
                  }
            }
        },
        readOnly: false // false if this command should not apply in readOnly mode
     });
}


//****** BACKSPACE Command Key ********//
  editor.commands.addCommand({
      name: 'BACK',
      bindKey: {win: 'backspace',  mac: 'backspace'},
      exec: function(editor) {
           var cursor = editor.getCursorPosition();
           Range = require("ace/range").Range;

           //Check if there is text here, then look for !=
           if(cursor.column >= 1){
                var cursorLine = new Range(cursor.row, cursor.column-1, cursor.row, cursor.column);
                var text = editor.session.getTextRange(cursorLine);
                if(text in undoReplace && !cursorMoved)
                {
                     editor.session.replace(cursorLine,undoReplace[text]);
                     return true;
                }
           }
          
          return false;

      },
      readOnly: false // false if this command should not apply in readOnly mode
  });


  //****** Cursor Move Check ********//
  //Editor check to see if the cursor has moved
  //used to provide dynamic replacement functionality
  editor.getSession().selection.on('changeSelection', function(e)
  {
       cursorMoved = true;
  });


  document.getElementById('code_txt_real').style.height = (document.getElementById('stdout_txt').clientHeight
                                                              + document.getElementById('stdout_options').clientHeight) + 'px';
  document.getElementById('code_txt_real').style.width = (document.getElementById('stdout_txt').clientWidth - 10) + 'px';

  // resize ace on window resize
  window.onresize = function(event) {
      document.getElementById('code_txt_real').style.height = (document.getElementById('stdout_txt').clientHeight
                                                                  + document.getElementById('stdout_options').clientHeight) + 'px';
      document.getElementById('code_txt_real').style.width = (document.getElementById('stdout_txt').clientWidth - 10) + 'px';
  }

  // Get code from ace editor.
  getCode = function() {
    return editor.getValue();
  }
}

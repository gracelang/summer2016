// the reworked mirror module

type Mirror = Object & type {
    //perhaps it should be possible to add a method?
    //addMethod -> Done
    startLineNumber -> Number
    moduleName -> String
    methods -> Dictionary⟦String, MethodMirror⟧
    methodNames -> Set⟦String⟧
    fieldNames -> Set⟦String⟧
    methodMirror(nm:String) -> MethodMirror
}

type MethodMirror = Object & type {
    name -> String
    startLineNumber -> Number
    moduleName -> String
    isField -> Boolean
    isVariable -> Boolean
    isDefinition -> Boolean
    parameters -> Sequence⟦ParameterMirror⟧
    typeParameters -> Sequence⟦ParameterMirror⟧
    request -> Unknown
    request(args:ArgList) -> Unknown
}
type ParameterMirror = Object & type {
    name -> String
    typeAnnotation -> Type
}
type ArgList = Sequence⟦Unknown⟧

method loadDynamicModule(name:String) -> Done { }
class reflect(obj:Unknown) -> Mirror {
    //method addMethod(name:String, body:Block) -> Done { }
    method startLineNumber -> Number { }
    method moduleName -> String { }
    method methods -> Dictionary⟦String, MethodMirror⟧ { }
    method methodNames -> Set⟦String⟧ { }
    method fieldNames -> Set⟦String⟧ { }
    class methodMirror(nm:String) -> MethodMirror { 
        method name -> String { }
        method startLineNumber -> Number { }
        method moduleName -> String { }
        method isField -> Boolean { }
        method isVariable -> Boolean { }
        method isDefinition -> Boolean { isField && isVariable.not }
        method parameters -> Sequence⟦ParameterMirror⟧ { }
        method typeParameters -> Sequence⟦ParameterMirror⟧ { }
        method request -> Unknown { request (emptySequence) }
        method request(args:ArgList) -> Unknown
    }
}

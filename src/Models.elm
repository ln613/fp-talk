module Models exposing (..)


type alias Model = { pages : List Page, idx: Int }

type alias Page = 
  { header: String,
    code: String, 
    lines: List String
  }

initialModel : Model
initialModel =
  { pages = 
    [ Page "JavaScript and the Rise of Functional Programming" "" [],
      Page "Agenda" "" [ "OOP vs FP", "Functional Programming concepts", "JavaScript frameworks", "&React + Redux, Angular 2, Vue, Cycle", "Elm" ],
      Page "Imperative vs Declarative" "" [ "Imperative", "&How (Implements logic in explicit steps)", "&C, C++, C#, Java, JavaScript, Ruby, Python...", "Declarative", "&What (Describe what the program will achieve)", "&Functional, logic (Prolog), db query (SQL)", "&Haskell, Lisp, Erlang, F#, Scala, Clojure, Elm..." ],      
      Page "Quick Sort - the imperative way" "&UdkRalSPm56TXldzanZK" [],
      Page "Quick Sort - the functional way" "&hIlpH2ZOV2X1d66B1qXn" [],
      Page "Quick Sort - Elm" "$2T7nr9SrJPKa1" [],
      Page "Imperative language structure" "" [ "A series of statements", "&Statement = \"do\" something = \"how\"", "Flow control", "&conditional", "&loop" ],
      Page "What is Functional Programming" "" [ "No statements", "&No assignment, stateless (no variables)", "&No side effect", "&Pure function", "Never \"do\" anything, always return new values based on input", "A series of data transformation", "Data in, data out" ],      
      Page "What is Side Effect" "" [ "Depend on/change the outside environment", "&Draw UI on screen", "&Make http calls", "&Read from/write to shared variables", "&Database/File access", "&Console.log", "Not predictable" ],      
      Page "What is Pure Function" "" [ "No side effects", "Always returns a value", "&Procedures always \"do\" something (side effect)", "Output only depends on input", "Given the same input, always produce the same output", "Mathmatical function" ],      
      Page "Side effects still need to be done" "" [ "If we don't do it, who's gonna do it?", "Frameworks, language runtime", "We produce data that represent the things we want to do", "Our code are kept pure/functional" ],            
      Page "Why Functional Programming" "" [ "A strong promise that our code will not change anything", "Predictable, Confidence, better code quality", "Fewer bugs because we don't \"do\" anything", "Easy to test", "Pure functions will never break existing features", "No regression tests anymore", "No concurrency/threading issues, perfect for parallel programming", "Better performance in some scenarios (e.g., Virtual DOM)" ],      
      Page "Change - a computer concept" "" [ "Memory address", "In real life, we always create new data", "Old data becomes history" ],      
      Page "Give up computer specific features" "" [ "Assembly -> C, no more direct CPU instructions", "C -> C#/Java, no more direct pointer manipulation", "Imperative -> Functional, no more state change" ],      
      Page "Can OOP be functional?" "" [ "An add-on to imperative language", "Static type system", "Divide and conquer, better structure, worse state management", "Encapsulation (black box, hide implementation detail)", "No discipline, no confidence", "Stateful (fields = shared states, methods not pure)", "Pure class = utility class (Math)", "OOP and FP co-exist" ],      
      Page "Why FP not popular in the past" "" [ "More memory consumption", "Multi-core/Parallel programming", "OOP dominance", "Getting popular thanks to JavaScript and open source" ],      
      Page "What makes FP possible" "" [ "Function as data", "Lambda expression", "Higher order functions", "&map, filter, reduce...", "Do FP in imperative languages", "Go fully functional in JavaScript, not so much in C#/Java" ],      
      Page "JavaScript frameworks" "" [ "jQuery, Backbone (MVC)", "&You render the view yourself", "MVVM (2-way data binding)", "&Knockout, Ember, Angular 1, Aurelia", "Unidirectional data flow + Immutable state", "&Redux (Elm Architecture), purely functional", "&React, Angular 2, Vue, Cycle" ],      
      Page "React" "" [ "State -> View, Virtual DOM", "&Produce a DOM tree data structure", "&Not imperatively update the DOM directly", "&Diff 2 virtual DOMs with immutable state", "&JSX", "Unidirectional data flow", "Components", "&Stateful (OOP) components and Stateless (FP) components" ],      
      Page "React - Single Component" "&yI4zmSIlzXiIIKrG8bnZ" [],
      Page "React - Multi Components" "&jumXaa80otFu3rRZvcNl" [],
      Page "Unidirectional data flow" "" [ "Only Parent component -> Child component", "Any other data flow is not allowed", "&Child -> Parent", "&Sibling -> Sibling" ],      
      Page "Redux" "" [ "Single global store", "Events -> Actions", "Reducer", "&(state, action) -> state" ],
      Page "React + Redux" "&PRCmpV0LTyVCRwEcSQIR" [],
      Page "Redux middlewares" "" [ "Redux-thunk", "Redux-promise", "Redux-saga", "Redux-observable" ],
      Page "Functional Reactive Programming" "" [ "Reactive Programming", "&a -> b, a$ -> b$, Observable", "Observable vs Promise", "&cancel, retry, debounce...", "Functional Reactive Programming", "&Array in the future, lazy", "ReactiveX operators", "&map, filter, reduce (scan, fold), combine, merge..." ],
      Page "React + Redux + Redux-Observable" "&aMJPRyA3a9SOHwOAocGj" [],
      Page "React - Final Version - Purely Functional" "&8kl06czG0QvYPh6ifEWR" [],
      Page "AutoComplete" "&X9shFacgc7dgGmLs3Vjr" [],
      Page "Angular 2" "" [ "Change detection", "&Component tree", "&Pure component and immutable state", "Both unidirectional data flow and 2-way data binding", "Built-in Observable support" ],      
      Page "Angular 2 - Demo" "&y5iDpMJ6VVWwfHRBmiNA" [],
      Page "Vue 2" "" [ "Change tracking", "&turn fields into getter/setter", "mutable state", "Both unidirectional data flow and 2-way data binding", "Vuex, Vue's version of Redux" ],
      Page "Cycle" "" [ "Everything is Observable", "Purely functional", "Side effects handled by drivers", "Virtual DOM", "Model-View-Intent, Cycle's version of Redux" ],
      Page "Cycle - Demo" "&JdvAwZStWs11nSKQ5ezA" [],
      Page "Elm" "" [ "Purely functional programming language", "Compile to JavaScript", "Statically typed", "&Record (Object without methods)", "No runtime exception", "Elm Architecture, influenced Redux" ],
      Page "Elm - Demo" "$4N9WmyTMDCFa1" [],
      Page "Summary" "" [ "React is the best choice for now", "https://ln613.github.io/fp-talk/", "Nan Li", "ln613@hotmail.com" ]
    ],
    idx = 1
  }
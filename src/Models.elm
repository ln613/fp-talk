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
      Page "Quick Sort - the imperative way" "nanazatugo" [],
      Page "Quick Sort - the functional way" "taloqivuna" [],
      Page "Quick Sort - Elm" "$0KkK65phG9Ma1" [],
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
      Page "JavaScript frameworks" "" [ "jQuery, Backbone (MVC)", "&You render the view yourself", "MVVM (2-way data binding)", "&Knockout, Ember, Angular 1, Aurelia", "Unidirectional data flow", "&Redux (Elm Architecture)", "&React, Angular 2, Vue, Cycle" ],      
      Page "React" "" [ "State -> View", "&Virtual DOM", "Unidirectional data flow", "Components" ],      
      Page "React - Single Component" "&yI4zmSIlzXiIIKrG8bnZ" [],
      Page "Unidirectional data flow" "" [ "Only Parent component -> Child component", "Any other data flow is not allowed", "&Child -> Parent", "&Sibling -> Sibling" ],      
      Page "Redux" "" [ "Single global store", "Events -> Actions", "Reducer", "&(state, action) -> state" ],
      Page "Observable VS Promise" "" [ "Observable", "&cancellable", "&retry" ],
      Page "Angular 2 - RxJS" "&y5iDpMJ6VVWwfHRBmiNA" [],
      Page "Cycle: Model-View-Intent" "qofajaz" [],
      Page "Elm Architecture" "$4N9WmyTMDCFa1" [],
      Page "The End" "" []
    ],
    idx = 1
  }
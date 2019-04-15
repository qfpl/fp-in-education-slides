# education

* interested in the first programming class a university student takes
  * first year, first semester
  * "Introduction to Programming" or "Programming One"
  * In particular, which language?
    +++
    * Most intro computing courses are _syntax-directed_
      * This week, if statement
      * next week, while statement
* FP has a history of being used in tertiary education. I believe it could be used there more
+++
* Start with SICP, a landmark book in the history of computing education
  * MIT 1985
  * Scheme, a dialect of Lisp
    +++
    * That's pretty weird! Common to see industry-fashionable languages (C, Basic, perhaps COBOL or Fortran)
    * Scheme only used in research or teaching. Good reasons why use it in research, but why use in teaching?
    * Scheme has almost no syntax! This has advantages for teaching
      +++
      * expressions, procedure declarations, if-statments all taught in the first week
      * No while-statements! or for-statements!
      * First hour of first lecture, almost the entirety of Scheme-the-language has been covered
      * We're not interested in details of some particular language
        * interested in computing
      +++
      * visualising recursion
  * Covers a lot of computer science concepts!
    * implementing OOP
    * implementing logic programming
    * Interpreters - "Metalinguistic abstraction"
    * Incredible breadth!
  * But it's not perfect
  * How could we improve on it?
+++
  * SICP's examples are drawn from complex domains
    * Calculus
    * Electrical engineering
  * doesn't teach decomposition of problems and assembly of solutions
  * ???      TODO other reasons
* How to Design Programs
  * They solved these problems!
  * If you don't take anything else from the talk, this book is a great place to start
  * Simpler examples
    * TODO examples
  <!-- * They provide a _staged introduction_ to the language -->
    <!-- * TODO advantages of doing so -->
  * Thinking about types helps you think about programs
    * System F type signatures in comments! TODO diagram of this
  * Helpful IDE (Dr. Racket)
    * TODO image
+++
* Wadler 1987
  * HTDP people weren't the only ones to criticise SICP
  * Wadler criticised the use of Scheme
  * He argued that KRC or Miranda would be more suitable as a first language
    * KRC and Miranda are both ancestors of Haskell
    * lazy functional languages with type inference
  * lack of pattern matching obscures the shape of data     TODO more
  * quote is hard to understand and unnecessary to an intro course      TODO (car (quote (a b)))
  * lack of typing discipline leads to fundamental misunderstandings     TODO more
    * type inference great for beginners. Types help before we even know what they are!
  * TODO more bullets
  * laziness means we can build our own control structures
    * and the substitution model of 
    * TODO diagram of recursion and "new-if" example
  * TODO more bullets
* I think Wadler's criticisms apply to HTDP as well
  * In particular, they saw the value in types, but did not move to a language that supported them
* Wouldn't it be cool to integrate the improvements of both
  * TODO push-out diagram
* Chak 2004
  *
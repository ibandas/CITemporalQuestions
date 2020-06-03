;;;; -*-  Mode: LISP; Syntax: Common-Lisp; Base: 10                          -*-
;;;; ---------------------------------------------------------------------------
;;;; File name: train-questions.lsp
;;;;    System: 
;;;;    Author: Crouse
;;;;   Created: November 26, 2018 12:16:12
;;;;   Purpose: 
;;;; ---------------------------------------------------------------------------
;;;;  $LastChangedDate: 2020-05-19 11:41:26 -0500 (Tue, 19 May 2020) $
;;;;  $LastChangedBy: hinrichs $
;;;; ---------------------------------------------------------------------------

(in-package :cl-user)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(setf *min-question-set* 
  '(

     ((:comment . "Who is teaching <course> next quarter?")
     (:lf (and (courseOffering course123 class123)
               (courseInstructor course123 person123)
               ; (likelyCourseTime course123 probable-quarter-of123)
               (psikiSayThis (courseInstructor course123 person123)))
          (isa person123 NUPerson) ; CSFaculty is too restrictive.
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts 
      "Who is teaching cs 371 next quarter?"
      ;"Who is teaching cs 348 next quarter?"
      ;"Who is teaching cs 361 next quarter?"
      "Who is the professor for cs 371 next quarter?"
      ;"Who is the professor for cs 348 next quarter?"
      ;"Who is the professor for cs 361 next quarter?"
      ;"Do you know the teacher for cs 325 next quarter?"
      ;"Show me the professor for cs 325 next quarter."
      ;"Tell me the name of the professor for cs 214 next quarter."
      ;"Is professor Forbus teaching cs 214 next quarter?"
      "Do you know whether Professor Forbus is teaching cs 371 next quarter?"
      ;"Do you know whether Professor Forbus is the professor for cs 371 next quarter?"
      ;"Do you know if Professor Forbus is teaching cs 371 next quarter?"
      ;"Do you know if Professor Forbus is the professor for cs 371 next quarter?"
      ))


     ;; Fall Quarter 2020
     ((:comment . "Who is teaching <course> in fall quarter of 2020?")
     (:lf (and (courseOffering course123 class123)
               (courseTerm course123 (FallQuarterFn (AcademicYearFn NorthwesternUniversity (YearFn 2020))))
               ; (likelyCourseTime course123 probable-quarter-of123)
               (courseInstructor course123 person123)
               (psikiSayThis (courseInstructor course123 person123)))
          (isa person123 NUPerson) ; CSFaculty is too restrictive.
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts
      "Who is teaching cs 330 in fall 2020?"
      ; "Who is teaching cs 330 in fall quarter of 2020?"
      ; "Who is teaching cs 330 in fall quarter 2020?"
      ; "Who teaches cs 330 in fall quarter of 2020?"
      "Who teaches cs 330 in fall 2020?"
      "Who is teaching cs 348 in fall 2020?"
      ; "Who is teaching cs 348 in fall quarter of 2020?"
      ; "Who is teaching cs 348 in fall quarter 2020?"
      ; "Who teaches cs 348 in fall quarter of 2020?"
      "Who teaches cs 348 in fall 2020?"
      "Who is teaching cs 325 in fall 2020?"
      ; "Who is teaching cs 325 in fall quarter of 2020?"
      ; "Who is teaching cs 325 in fall quarter 2020?"
      ; "Who teaches cs 325 in fall quarter of 2020?"
      "Who teaches cs 325 in fall 2020?"
      "Do you know whether Professor Riesbeck is teaching cs 325 fall quarter of 2020?"
      "Do you know whether Professor Worsley is teaching cs 330 fall quarter of 2020?"
      "Do you know whether Professor Birnbaum is teaching cs 348 fall quarter of 2020?"
      ))

     
     ;; Spring Quarter 2020
     ;; SpringQuarterFn of 2019 means Spring 2020
     ((:comment . "Who is teaching <course> in spring quarter of 2019?")
     (:lf (and (courseOffering course123 class123)
               (courseTerm course123 (SpringQuarterFn (AcademicYearFn NorthwesternUniversity (YearFn 2019))))
               ; (likelyCourseTime course123 probable-quarter-of123)
               (courseInstructor course123 person123)
               (psikiSayThis (courseInstructor course123 person123)))
          (isa person123 NUPerson) ; CSFaculty is too restrictive.
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts
      "Who is teaching cs 330 in spring 2020?"
      ; "Who is teaching cs 330 in spring quarter of 2020?"
      ; "Who is teaching cs 330 in spring quarter 2020?"
      ; "Who teaches cs 330 in spring quarter of 2020?"
      "Who teaches cs 330 in spring 2020?"
      "Who is teaching cs 348 spring 2020?"
      ; "Who is teaching cs 348 spring quarter of 2020?"
      ; "Who is teaching cs 348 spring quarter 2020?"
      ; "Who teaches cs 348 in spring quarter of 2020?"
      "Who teaches cs 348 in spring 2020?"
      ))

     ;; Summer Quarter 2020
     ;; SummerQuarterFn of 2019 means Summer 2020
     ((:comment . "Who is teaching <course> in summer quarter of 2019?")
     (:lf (and (courseOffering course123 class123)
               (courseTerm course123 (SummerQuarterFn (AcademicYearFn NorthwesternUniversity (YearFn 2019))))
               ; (likelyCourseTime course123 probable-quarter-of123)
               (courseInstructor course123 person123)
               (psikiSayThis (courseInstructor course123 person123)))
          (isa person123 NUPerson) ; CSFaculty is too restrictive.
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts
      "Who is teaching cs 349 in summer 2020?"
      ; "Who is teaching cs 349 in summer quarter of 2020?"
      ; "Who is teaching cs 349 in summer quarter 2020?"
      ; "Who teaches cs 349 in summer quarter of 2020?"
      "Who teaches cs 349 in summer 2020?"
      ))



     ;; Winter Quarter 2021
     ;; WinterQuarterFn of 2020 means Winter 2021
     ((:comment . "Who is teaching <course> in winter quarter of 2021?")
     (:lf (and (courseOffering course123 class123)
               (courseTerm course123 (WinterQuarterFn (AcademicYearFn NorthwesternUniversity (YearFn 2020))))
               ; (likelyCourseTime course123 probable-quarter-of123)
               (courseInstructor course123 person123)
               (psikiSayThis (courseInstructor course123 person123)))
          (isa person123 NUPerson) ; CSFaculty is too restrictive.
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts
      "Who is teaching cs 330 in winter 2021?"
      ; "Who is teaching cs 330 in winter quarter of 2021?"
      ; "Who is teaching cs 330 in winter quarter 2021?"
      ; "Who teaches cs 330 in winter quarter of 2021?"
      "Who teaches cs 330 in winter 2021?"
      "Who is teaching cs 348 in winter 2021?"
      ; "Who is teaching cs 348 in winter quarter of 2021?"
      ; "Who is teaching cs 348 in winter quarter 2021?"
      ; "Who teaches cs 348 in winter quarter of 2021?"
      "Who teaches cs 348 in winter 2021?"
      ))


     ;; Spring Quarter 2020 - Time
     ;; SpringQuarterFn of 2019 means Spring 2020
     ((:comment . "What time is <course> in spring quarter of 2020?")
     (:lf (and (courseOffering course123 class123)
               (courseTerm course123 (SpringQuarterFn (AcademicYearFn NorthwesternUniversity (YearFn 2019))))
               ; (likelyCourseTime course123 probable-quarter-of123)
               (courseInstructor course123 person123)
               (courseTimeString course123 time123)
               (psikiSayThis (courseTimeString course123 time123)))
          (isa time123 StringObject)
          (isa person123 NUPerson) ; CSFaculty is too restrictive.
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts
     "When is cs 349 in spring 2020?"
     ; "When is cs 349 in spring quarter of 2020?"
     ; "When is cs 349 in spring quarter 2020?"
     "What time is cs 349 in spring 2020?"
     ; "What time is cs 349 in spring quarter of 2020?"
     ; "What time is cs 333496 in spring quarter 2020?"
     "When is cs 348 in spring 2020?"
     ; "When is cs 348 in spring quarter of 2020?"
     ; "When is cs 348 in spring quarter 2020?"
     "What time is cs 348 in spring 2020?"
     ; "What time is cs 348 in spring quarter of 2020?"
     ; "What time is cs 348 in spring quarter 2020?"
      ))

     ;; Summer Quarter 2020 - Time
     ((:comment . "What time is <course> in summer quarter of 2020?")
     (:lf (and (courseOffering course123 class123)
               (courseTerm course123 (SummerQuarterFn (AcademicYearFn NorthwesternUniversity (YearFn 2019))))
               ; (likelyCourseTime course123 probable-quarter-of123)
               (courseInstructor course123 person123)
               (courseTimeString course123 time123)
               (psikiSayThis (courseTimeString course123 time123)))
          (isa time123 StringObject)
          (isa person123 NUPerson) ; CSFaculty is too restrictive.
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts
     "When is cs 349 in summer 2020?"
     ; "When is cs 349 in summer quarter of 2020?"
     ; "When is cs 349 in summer quarter 2020?"
     "What time is cs 349 in summer 2020?"
     ; "What time is cs 349 in summer quarter of 2020?"
     ; "What time is cs 349 in summer quarter 2020?"
      ))


     ;; Fall Quarter 2020 - Time
     ((:comment . "What time is <course> in fall quarter of 2020?")
     (:lf (and (courseOffering course123 class123)
               (courseTerm course123 (FallQuarterFn (AcademicYearFn NorthwesternUniversity (YearFn 2020))))
               ; (likelyCourseTime course123 probable-quarter-of123)
               (courseInstructor course123 person123)
               (courseTimeString course123 time123)
               (psikiSayThis (courseTimeString course123 time123)))
          (isa time123 StringObject)
          (isa person123 NUPerson) ; CSFaculty is too restrictive.
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts
     "When is cs 336 in fall 2020?"
     ; "When is cs 336 in fall quarter of 2020?"
     ; "When is cs 336 in fall quarter 2020?"
     "What time is cs 336 in fall 2020?"
     ; "What time is cs 336 in fall quarter of 2020?"
     ; "What time is cs 336 in fall quarter 2020?"
     "When is cs 348 in fall 2020?"
     ; "When is cs 348 in fall quarter of 2020?"
     ; "When is cs 348 in fall quarter 2020?"
     "What time is cs 348 in fall 2020?"
     ; "What time is cs 348 in fall quarter of 2020?"
     ; "What time is cs 348 in fall quarter 2020?"
      ))



     ;; Winter Quarter 2021 - Time
     ((:comment . "What time is <course> in winter quarter of 2021?")
     (:lf (and (courseOffering course123 class123)
               (courseTerm course123 (WinterQuarterFn (AcademicYearFn NorthwesternUniversity (YearFn 2020))))
               ; (likelyCourseTime course123 probable-quarter-of123)
               (courseInstructor course123 person123)
               (courseTimeString course123 time123)
               (psikiSayThis (courseTimeString course123 time123)))
          (isa time123 StringObject)
          (isa person123 NUPerson) ; CSFaculty is too restrictive.
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts
     "When is cs 348 in winter 2021?"
     ; "When is cs 348 in winter quarter of 2021?"
     ; "When is cs 348 in winter quarter 2021?"
     "What time is cs 348 in winter 2021?"
     ; "What time is cs 348 in winter quarter of 2021?"
     ; "What time is cs 348 in winter quarter 2021?"
      ))
  ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; End of Code
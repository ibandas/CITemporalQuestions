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


(setf *specific-time-instructor-question-set* 
  '(

     ;; Fall Quarter 2020 - Instructor
     ((:comment . "Who is teaching <course> in fall quarter of 2020?")
     (:lf (and (courseOffering course123 class123)
               (courseTerm course123 (FallQuarterFn (AcademicYearFn NorthwesternUniversity (YearFn 2020))))
               (courseInstructor course123 person123)
               (psikiSayThis (courseInstructor course123 person123)))
          (isa person123 NUPerson) ; CSFaculty is too restrictive.
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts
      "Who is teaching cs 330 fall 2020?"
      "Who teaches cs 348 in fall 2020?"
      "Who teaches cs 348 in fall quarter 2020?"
      "Who is the professor for cs 330 in fall 2020?"
      "Who is the teacher for cs 348 in fall 2020?"
      ))

     
     ;; Spring Quarter 2020 - Instructor
     ;; SpringQuarterFn of 2019 means Spring 2020
     ((:comment . "Who is teaching <course> in spring quarter of 2019?")
     (:lf (and (courseOffering course123 class123)
               (courseTerm course123 (SpringQuarterFn (AcademicYearFn NorthwesternUniversity (YearFn 2019))))
               (courseInstructor course123 person123)
               (psikiSayThis (courseInstructor course123 person123)))
          (isa person123 NUPerson) ; CSFaculty is too restrictive.
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts
      "Who is teaching cs 321 spring 2020?"
      "Who teaches cs 339 in spring 2020?"
      "Who teaches cs 339 in spring quarter 2020?"
      "Who is the professor for cs 321 in spring 2020?"
      "Who is the teacher for cs 339 in spring 2020?"
      ))

     ;; Summer Quarter 2020 - Instructor
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
      "Who teaches cs 349 in summer 2020?"
      "Who teaches cs 349 in summer quarter 2020?"
      "Who is the professor for cs 349 in summer 2020?"
      "Who is the teacher for cs 349 in summer 2020?"
      ))



     ;; Winter Quarter 2021 - Instructor
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
      "Who is teaching cs 371 in winter 2021?"
      "Who teaches cs 337 in winter 2021?"
      "Who teaches cs 337 in winter quarter 2021?"
      "Who is the professor for cs 371 in winter 2021?"
      "Who is the teacher for cs 337 in winnter 2021?"
      ))
))

(setf *specific-time-classtime-question-set* 
  '(
     ;; Spring Quarter 2020 - Time
     ;; SpringQuarterFn of 2019 means Spring 2020
     ((:comment . "What time is <course> in spring quarter of 2020?")
     (:lf (and (courseOffering course123 class123)
               (courseTerm course123 (SpringQuarterFn (AcademicYearFn NorthwesternUniversity (YearFn 2019))))
               (courseTimeString course123 time123)
               (psikiSayThis (courseTimeString course123 time123)))
          (isa time123 StringObject)
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts
     "When is cs 349 in spring 2020?"
     "What time is cs 348 in spring 2020?"
     "What days are cs 330 in spring 2020?"
     "Which days are cs 330 in spring 2020?"
     "Do you know when cs 349 in spring 2020 is?"
     ))

     ;; Summer Quarter 2020 - Time
     ((:comment . "What time is <course> in summer quarter of 2020?")
     (:lf (and (courseOffering course123 class123)
               (courseTerm course123 (SummerQuarterFn (AcademicYearFn NorthwesternUniversity (YearFn 2019))))
               (courseTimeString course123 time123)
               (psikiSayThis (courseTimeString course123 time123)))
          (isa time123 StringObject)
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts
     "When is cs 349 in summer 2020?"
     "What time is cs 349 in summer 2020?"
     "What days are cs 349 in summer 2020?"
     "Which days are cs 349 in summer 2020?"
     "Do you know when cs 349 in summer 2020 is?"
     ))


     ;; Fall Quarter 2020 - Time
     ((:comment . "What time is <course> in fall quarter of 2020?")
     (:lf (and (courseOffering course123 class123)
               (courseTerm course123 (FallQuarterFn (AcademicYearFn NorthwesternUniversity (YearFn 2020))))
               (courseTimeString course123 time123)
               (psikiSayThis (courseTimeString course123 time123)))
          (isa time123 StringObject)
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts
     "When is cs 336 in fall 2020?"
     "What time is cs 348 in fall 2020?"
     "What days are cs 348 in fall 2020?"
     "Which days are cs 348 in fall 2020?"
     "Do you know when cs 336 in fall 2020 is?"
      ))

     ;; Winter Quarter 2021 - Time
     ((:comment . "What time is <course> in winter quarter of 2021?")
     (:lf (and (courseOffering course123 class123)
               (courseTerm course123 (WinterQuarterFn (AcademicYearFn NorthwesternUniversity (YearFn 2020))))
               (courseTimeString course123 time123)
               (psikiSayThis (courseTimeString course123 time123)))
          (isa time123 StringObject)
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts
     "When is cs 348 in winter 2021?"
     "What time is cs 337 in winter 2021?"
     "What days are cs 348 in winter 2021?"
     "Which days are cs 348 in winter 2021?"
     "Do you know when cs 337 in winter 2021 is?"
     ))
  )
)


(setf *office-hours-question-set* 
  '(
     ;; Spring Quarter 2020 - Office Hours
     ;; SpringQuarterFn of 2019 means Spring 2020
     ((:comment . "What time is office hours for <course> in spring quarter of 2020?")
     (:lf (and (courseOffering course123 class123)
               (courseTerm course123 (SpringQuarterFn (AcademicYearFn NorthwesternUniversity (YearFn 2019))))
               (courseOfficeHoursString course123 time123)
               (psikiSayThis (courseOfficeHoursString course123 time123)))
          (isa time123 StringObject)
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts
     "When are office hours for cs 348 in spring quarter 2020?"
     "What time is office hours for cs 349 in spring 2020?"
     "What time does office hours begin for cs 348 in spring quarter 2020?"
     "What time does office hours end for cs 349 in spring 2020?"
     "How long are office hours for cs 349 in spring quarter 2020?"
     ))

     ;; Summer Quarter 2020 - Office Hours
     ;; SummerQuarterFn of 2019 means Summer 2020
     ((:comment . "What time is office hours for <course> in summer quarter of 2020?")
     (:lf (and (courseOffering course123 class123)
               (courseTerm course123 (SummerQuarterFn (AcademicYearFn NorthwesternUniversity (YearFn 2019))))
               (courseOfficeHoursString course123 time123)
               (psikiSayThis (courseOfficeHoursString course123 time123)))
          (isa time123 StringObject)
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts
     "When are office hours for cs 349 in summer quarter 2020?"
     "What time is office hours for cs 349 in summer 2020?"
     "What time does office hours begin for cs 349 in summer quarter 2020?"
     "What time does office hours end for cs 349 in summer 2020?"
     "How long are office hours for cs 349 in summer 2020?"
     ))

     ;; Fall Quarter 2020 - Office Hours
     ((:comment . "What time is office hours for <course> in fall quarter of 2020?")
     (:lf (and (courseOffering course123 class123)
               (courseTerm course123 (FallQuarterFn (AcademicYearFn NorthwesternUniversity (YearFn 2020))))
               (courseOfficeHoursString course123 time123)
               (psikiSayThis (courseOfficeHoursString course123 time123)))
          (isa time123 StringObject)
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts
     "When are office hours for cs 325 in fall quarter 2020?"
     "What time is office hours for cs 376 in fall quarter 2020?"
     "What time does office hours begin for cs 325 in fall 2020?"
     "What time does office hours end for cs 376 in fall 2020?"
     "How long are office hours for cs 376 in fall 2020?"
     ))

     ;; Winter Quarter 2020 - Office Hours
     ;; WinterQuarterFn of 2020 means Winter 2021
     ((:comment . "What time is office hours for <course> in winter quarter of 2021?")
     (:lf (and (courseOffering course123 class123)
               (courseTerm course123 (WinterQuarterFn (AcademicYearFn NorthwesternUniversity (YearFn 2020))))
               (courseOfficeHoursString course123 time123)
               (psikiSayThis (courseOfficeHoursString course123 time123)))
          (isa time123 StringObject)
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts
     "When are cs 337 office hours in winter quarter 2021?"
     "What time is cs 371 office hours in winter 2021?"
     "What time does office hours begin for cs 337 in winter 2021?"
     "What time does office hours end for cs 337 in winter 2021?"
     "How long are office hours for cs 371 in winter quarter 2021?"
     ))
))


(setf *relative-time-question-set* 
  '(
     ;; Current Quarter - Instructor
     ((:comment . "Who is teaching <course> this quarter?")
     (:lf (and (currentNUQuarter-Temporal quarter123)
               (courseOffering course123 class123)
               (courseTerm course123 quarter123)
               (courseInstructor course123 person123)
               (psikiSayThis (courseInstructor course123 person123)))
          (isa quarter123 AcademicQuarter)
          (isa person123 NUPerson) ; CSFaculty is too restrictive.
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts 
      "Who is teaching cs 348 this quarter?"
      "Who is the professor for cs 348 this quarter?"
      "Who is teaching cs 330 this quarter?"
      "Who is the professor for cs 330 this quarter?"
     ))

     ;; Current Quarter - Office Hours
     ((:comment . "When are office hours for <course> this quarter?")
     (:lf (and (currentNUQuarter-Temporal quarter123)
               (courseOffering course123 class123)
               (courseTerm course123 quarter123)
               (courseOfficeHoursString course123 time123)
               (psikiSayThis (courseOfficeHoursString course123 time123)))
          (isa time123 StringObject)
          (isa quarter123 AcademicQuarter)
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts 
      "When are office hours for cs 348 this quarter?"
      "When are office hours for cs 348?"
      "What time are office hours for cs 348 this quarter?"
      "What time are office hours for cs 330?"
     ))

     ;; Current Quarter - Time
     ((:comment . "What time is <course> this quarter?")
     (:lf (and (currentNUQuarter-Temporal quarter123)
               (courseOffering course123 class123)
               (courseTerm course123 quarter123)
               (courseTimeString course123 time123)
               (psikiSayThis (courseTimeString course123 time123)))
          (isa time123 StringObject)
          (isa quarter123 AcademicQuarter)
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts 
      "When is cs 348 this quarter?"
      "When is cs 348?"
      "What time is cs 330?"
     ))

     ;; Next Quarter - Instructor
     ((:comment . "Who is teaching <course> next quarter?")
     (:lf (and (currentNUQuarter-Temporal currentQuarter123)
               (nextNUQuarter-Temporal currentQuarter123 nextQuarter123)
               (courseOffering course123 class123)
               (courseTerm course123 nextQuarter123)
               (courseInstructor course123 person123)
               (psikiSayThis (courseInstructor course123 person123)))
          (isa currentQuarter123 AcademicQuarter)
          (isa nextQuarter123 AcademicQuarter)
          (isa person123 NUPerson) ; CSFaculty is too restrictive.
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts 
      "Who is teaching cs 348 next quarter?"
      "Who is the professor for cs 348 next quarter?"
      "Who is teaching cs 330 next quarter?"
      "Who is the professor for cs 330 next quarter?"
     ))

     ;; Next Quarter - Office Hours
     ((:comment . "When are office hours for <course> this quarter?")
     (:lf (and (currentNUQuarter-Temporal currentQuarter123)
               (nextNUQuarter-Temporal currentQuarter123 nextQuarter123)
               (courseOffering course123 class123)
               (courseTerm course123 nextQuarter123)
               (courseOfficeHoursString course123 time123)
               (psikiSayThis (courseOfficeHoursString course123 time123)))
          (isa time123 StringObject)
          (isa currentQuarter123 AcademicQuarter)
          (isa nextQuarter123 AcademicQuarter)
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts 
      "When are office hours for cs 348 next quarter?"
      "What time are office hours for cs 348 next quarter?"
     ))


     ;; Next Quarter - Time
     ((:comment . "When is <course> next quarter?")
     (:lf (and (currentNUQuarter-Temporal currentQuarter123)
               (nextNUQuarter-Temporal currentQuarter123 nextQuarter123)
               (courseOffering course123 class123)
               (courseTerm course123 nextQuarter123)
               (courseTimeString course123 time123)
               (psikiSayThis (courseTimeString course123 time123)))
          (isa time123 StringObject)
          (isa currentQuarter123 AcademicQuarter)
          (isa nextQuarter123 AcademicQuarter)
          (isa course123 NUCourse)
          (isa class123 NUClass))
     (:settings . ((:use-gen-antec-isas NUPeopleDataMt)))
     (:texts 
      "When is cs 348 next quarter?"
      "What time is cs 330 next quarter?"
     ))
  )
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; End of Code
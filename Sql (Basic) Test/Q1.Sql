# Author: Ayan Hussain

SELECT S.roll_number, S.name FROM student_information S , examination_marks E 
where S.roll_number = E.roll_number AND
(E.subject_one + E.subject_two + E.subject_three) < 100 
 order by S.roll_number ASC
test_students: Student.o test_student.o
	g++ Student.o test_student.o -o test_students

test_student.o: test_student.cpp Student.h
	g++ -c test_student.cpp

Student.o: Student.cpp Student.h
	g++ -c Student.cpp

clean:
	rm *.o test_students

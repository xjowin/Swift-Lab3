 // Khegay Boris IT2-2117 (31573)
 // Lab Work №3

// // Task 1
// struct Student {
//     var firstName: String
//     var lastName: String
//     var averageGrade: Double
// }

// class StudentJournal {
//     var students: [Student] = []

//     func addStudent(firstName: String, lastName: String, averageGrade: Double) {
//         let newStudent = Student(firstName: firstName, lastName: lastName, averageGrade: averageGrade)
//         students.append(newStudent)
//     }

//     func removeStudent(firstName: String, lastName: String) {
//         students.removeAll { $0.firstName == firstName && $0.lastName == lastName }
//     }

//     func displayStudentsInfo() {
//         for student in students {
//             print("Name: \(student.firstName) \(student.lastName), GPA: \(student.averageGrade)")
//         }
//     }

//     func listStudentsByGPA() {
//         let sortedStudents = students.sorted { $0.averageGrade > $1.averageGrade }
//         for student in sortedStudents {
//             print("Name: \(student.firstName) \(student.lastName), GPA: \(student.averageGrade)")
//         }
//     }

//     func averageScoreOfAllStudents() -> Double {
//         let totalGrade = students.reduce(0.0) { $0 + $1.averageGrade }
//         return totalGrade / Double(students.count)
//     }

//     func studentWithHighestGPA() -> Student? {
//         return students.max(by: { $0.averageGrade < $1.averageGrade })
//     }
// }

// let journal = StudentJournal()

// journal.addStudent(firstName: "John", lastName: "Doe", averageGrade: 85.5)
// journal.addStudent(firstName: "Jane", lastName: "Smith", averageGrade: 92.3)
// journal.addStudent(firstName: "Alice", lastName: "Johnson", averageGrade: 78.9)

// print("All Students:")
// journal.displayStudentsInfo()
// print()

// print("Students by GPA:")
// journal.listStudentsByGPA()
// print()

// let averageScore = journal.averageScoreOfAllStudents()
// print("Average score of all students: \(averageScore)")

// if let studentWithHighestGPA = journal.studentWithHighestGPA() {
//     print("Student with highest GPA: \(studentWithHighestGPA.firstName) \(studentWithHighestGPA.lastName), GPA: \(studentWithHighestGPA.averageGrade)")
// }

// print("\nRemove one student:")
// journal.removeStudent(firstName: "John", lastName: "Doe")
// journal.displayStudentsInfo()





// // Task 2
// struct Task {
//     var title: String
//     var description: String
//     var isCompleted: Bool
// }

// class ToDoList {
//     var tasks: [Task] = []

//     func addTask(title: String, description: String) {
//         let newTask = Task(title: title, description: description, isCompleted: false)
//         tasks.append(newTask)
//     }

//     func removeTask(title: String) {
//         tasks.removeAll { $0.title == title }
//     }

//     func changeTaskStatus(title: String, isCompleted: Bool) {
//         if let index = tasks.firstIndex(where: { $0.title == title }) {
//             tasks[index].isCompleted = isCompleted
//         }
//     }

//     func displayAllTasks() {
//         for task in tasks {
//             print("Title: \(task.title), Description: \(task.description), Completed: \(task.isCompleted ? "Yes" : "No")")
//         }
//     }

//     func displayCompletedTasks() {
//         let completedTasks = tasks.filter { $0.isCompleted }
//         print("Completed Tasks:")
//         for task in completedTasks {
//             print("Title: \(task.title), Description: \(task.description)")
//         }
//     }

//     func displayOutstandingTasks() {
//         let outstandingTasks = tasks.filter { !$0.isCompleted }
//         print("Outstanding Tasks:")
//         for task in outstandingTasks {
//             print("Title: \(task.title), Description: \(task.description)")
//         }
//     }

//     func clearCompletedTasks() {
//         tasks.removeAll { $0.isCompleted }
//     }
// }

// let toDoList = ToDoList()

// toDoList.addTask(title: "Homework", description: "Do homework")
// toDoList.addTask(title: "Extra lessons", description: "Go to ensglish extra lessonsw")

// print("\nAll Tasks:")
// toDoList.displayAllTasks()

// toDoList.changeTaskStatus(title: "Homework", isCompleted: true)

// print()
// toDoList.displayCompletedTasks()

// print()
// toDoList.displayOutstandingTasks()

// toDoList.clearCompletedTasks()

// print("\nAll Tasks after clearing completed tasks:")
// toDoList.displayAllTasks()

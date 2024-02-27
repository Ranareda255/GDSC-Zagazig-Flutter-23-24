

Map<String, int> analyzeGrades(List<int> grades) {
  int sum = 0;
  int numberOfFailures = 0;
   int numberOfStudents = grades.length;
  int numberOfValedivtorian = 0;
  Map<String, int> statistics = {
    'number of faild students': 0, 'numbers of student': 0, 'average grade': 0,'number of Valedictorian': 0,
    
  };
  if (grades.isEmpty) {
    return statistics;
  }
  for (int grade in grades) {
    sum += grade;
    if (grade > 85) {
      numberOfValedivtorian++;
    } else if (grade < 40) {
      numberOfFailures++;
    }
  }
  double averageGrade = sum.toDouble() / numberOfStudents;
  statistics['numbers of student'] = numberOfStudents;
  statistics['average grade'] = averageGrade.round();
  statistics['number of Valedictorian'] = numberOfValedivtorian;
  statistics['number of faild students'] = numberOfFailures;
  return statistics;
}

void main() {
  List<int> grades = [95, 92, 65, 80, 60, 89, 39 , 50];
  Map<String, int> statistics = analyzeGrades(grades);
  print(statistics);
}
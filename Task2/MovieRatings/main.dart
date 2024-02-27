
double findAverageRating(List<int> ratings) {
  int sum = 0;
  double average;
  for (int y = 0; y < ratings.length; y++) {
    sum += ratings[y];
  }
  average = sum / ratings.length;
  return average;
}
void main() {
  List<int> ratings = [1, 2, 3, 4, 5];
  if (ratings.isEmpty) {
    return null;
  }
  double averageRatings = findAverageRating(ratings);
  print(averageRatings);}
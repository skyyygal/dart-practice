/* Problem: Counting Balloons 🎈
Task: You have a string of balloons in different colors ('R', 'G', 'B').
Count how many balloons there are of each color and tell which color appears the most.

Examples:
"RRGBB" →
R: 2, G: 1, B: 2
Most: R and B (tie)
"GGG" →
G: 3
Most: G

How to Solve:
Look at each balloon one by one (loop through the string).
Keep a tally for each color (use a Map in Dart).
Find the highest number in the tally at the end.
 */

//Solution:

void main() {
  String balloons = "RRGBBU";
  Map<String, int> count = {};

  for (int i = 0; i < balloons.length; i++) {
    String color = balloons[i];
  }
}

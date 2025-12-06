class RestaurantRatings {
  final String name;
  final String cuisine;
  final List<double> ratings;
  const RestaurantRatings({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });
  int get numRatings => ratings.length;
  double avgRating() {
    if (ratings.isEmpty) {
      return 0;
    }
    return ratings.reduce((value, element) => value + element) / ratings.length;
  }
}

void main() {
  final restaurant = RestaurantRatings(
    name: "rose",
    cuisine: "Indian",
    ratings: [1.0, 1.0, 3.0],
  );
  restaurant.avgRating();
  print(restaurant.avgRating());
}

/*'''

name: Pizza Mario
cuisine: Italian
ratings: [5.0, 3.5, 4.5]

name: Chez Anne
cuisine: French
ratings: [5.0, 4.5, 4.0]

name:Navaratna 
cuisine: Indian
ratings: [4.0, 5.0, 4.0
]
'''*/
void main() {
  var restaurants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [5.0, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 5.0, 4.0],
    },
  ];

  for (var restaurant in restaurants) {
    // print(restaurant['name']);

    final ratings = restaurant['ratings'] as List<double>;
    var total = 0.0;

    for (var rating in ratings) {
      total += rating;
    }

    // print(total);
    final avgRating = total / ratings.length;
    print(avgRating);
    restaurant['avgRating'] = avgRating;
    print(restaurant);
    // final list = ratings[1];
    // print(list);
    // print(ratings);
  }
}

///Problem- Calculate the avg of rating

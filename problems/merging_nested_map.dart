/* void main() {
  var map1 = {
    'a': 1,
    'b': {'x': 10},
  };
  var map2 = {'b': {'y': 20}, 'c': 3};

  var merged = mergeMapsShallowOrNested(map1, map2);

  print(merged); // {a: 1, b: {x: 10, y: 20}, c: 3}
}

mergeMapsShallowOrNested(Map map1, Map map2) {
  var result = Map.from(map1);

  map2.forEach((key, value) {
    if (result.containsKey(key)) {
      if (result[key] is Map && value is Map) {
        result[key] = mergeMapsShallowOrNested(result[key], value);
      } else {
        // Otherwise, overwrite with the value from map2
        result[key] = value;
      }
    } else {
      // If the key only exists in map2, add it to the result
      result[key] = value;
    }
  });

  return result;
} */
void main() {
  Map<String, dynamic> map1 = {
    'a': 1,
    'b': {'x': 10},
  };
  Map<String, dynamic> map2 = {
    'b': {'y': 20},
    'c': 3,
  };

  Map<String, dynamic> result = {};

  // Step 1: Copy everything from map1
  result.addAll(map1);

  // Step 2: Add from map2
  map2.forEach((key, value) {
    if (result.containsKey(key) && value is Map && result[key] is Map) {
      // Merge inside map
      result[key] = {...result[key], ...value};
    } else {
      result[key] = value;
    }
  });

  print(result); // {a: 1, b: {x: 10, y: 20}, c: 3}
}

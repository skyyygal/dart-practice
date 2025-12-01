void main() {
  const banana = 5;
  const apples = 6;
  const grains = {'maccroni': '500g', 'rice': '1kg'};
  const addGrains = true;
  var shoppingList = {
    if (banana > 0) 'banana': banana,
    if (apples > 0) 'apple': apples,
    if (addGrains) ...grains,
  };

  print(shoppingList);
}

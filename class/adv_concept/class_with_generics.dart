class Stack<T> {
  // good eg of composition => we created a list composition.
  final List<T> _items = [];
  void push(T item) => _items.add(item);

  T pop() => _items.removeLast();
}

void main() {
  final stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.pop();
  print(stack._items);
  final names = Stack<String>();
  names.push('anita');
  names.push('theertha');
  print(names._items);
}






/*
Generics. 
1. Generics - more reusable code
2. Very common with fucntional operators.(map, where, reduce)
Eg with Stack class here. 
 ___
| 3 |  push 3   and on pop removes value from top or most recent value 3, 2...
|___|----|                     
| 2 |  push 2
|___|----|  
| 1 |
|___|
*/




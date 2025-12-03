const global = 15;
void main() {
  const a = 10;
  print(a);
  if (a > 5) {
    print(global);
    const b = 5;
    print(b);
    print(a);
    //print a is allowed inside this scope
  }
  // both are local scope - defined inside curly braces{}
  // print b valid here.
}
// We use global scope which is basically defined outside the main function. 
// We use Global scope to declare variables, functions, enums and other types



/*
Global mutable state and a fuction with side effects. 
A Pure function: 
1. always produces the same result
 when called with the same arguments
2. Doesn't mutate any variables outside its own scope

 Example: 

 var counter =1; //- not safe
 const bitsInByte =8; 
 void foo(){
 print("*"*counter);
 counter++;
 }
 void main(){
//  const kiloBit = 1024*bitsInByte;
// const megabit = 1024*kilobit; //-safe
 foo();
 foo();
 foo();
 }

 O/P: 
 *
 * *
 * * *
 Results are different. 

*/
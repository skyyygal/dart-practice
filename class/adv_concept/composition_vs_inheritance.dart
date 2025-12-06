abstract class Widget {}

class Text extends Widget {
  Text(this.text);
  final String text;
}

class Button extends Widget {
  final Widget child;
  final void Function()? onpressed;

  Button({required this.child, this.onpressed});
}

void main() {
  final button = Button(
    child: Text("Click me"),
    onpressed: () => print("Button Pressed!"),
  );
  print(button); //to remove the yellow line

  /* 
 We have used inheritance and widget composition to create a complex UI in flutter SDK
 It's the power of composition, because the button class doesn't know what child it looks like. It just takes the widget child argument
 It's a scalable approach because we use composition to create complex UI.

Composition and Inheritance are important
Use composition to model <-has-a-> relationship
Use Inheritance to model <-is-a-> relationship

*/
}

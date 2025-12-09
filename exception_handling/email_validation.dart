class EmailAddress {
  final String email;

  EmailAddress(this.email) {
    //In this case we can use assert.
    assert(email.isNotEmpty);
    assert(email.contains('@'));
    // Should we use assertion or throw exceptions?
    // Is Invalid email a programmer error or an exception that we must handle.
    if (email.isEmpty) {
      throw FormatException("Email can't be empty");
    }
    if (!email.contains('@')) {
      throw FormatException("$email doesn't contain the @ symbol");
    }
  }
  @override
  String toString() => email;
}

void main() {
  try {
    print(EmailAddress('me@example.com'));
    print(EmailAddress('example.com'));
    print(EmailAddress(''));
  } on FormatException catch (e) {
    print(e);
  }
}

/*
Implement a simple 'EmailAddress' class that takes an email 'String' as a constructor argument. 

This class should throw a 'Format Exception' if:
- it is initialized with an empty email.
- the email doesn't cont a '@' character
then. test this class eith the following code:

void main(){
 try {
 print(EmailAddress('me@example.com'));
 print(EmailAddress('example.com'));
 print(EmailAddress(''));
  } on FormatException catch(e){
 print(e);
   }
 }
 
*/

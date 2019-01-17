import 'dart:async';
import 'validators.dart';

//Applying a BLOC
//Single Global Instance  possibly OK for Small APPs or Scoped Instances(for larger Apps)

class Bloc extends Object with Validators{
  final  _emailController = StreamController<String>();
  final  _passwordController = StreamController<String>();

  //add to stream
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password => _passwordController.stream.transform(validatePassword);

  //change data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  dispose(){
    _emailController.close();
    _passwordController.close();
  }


}

final bloc = Bloc();

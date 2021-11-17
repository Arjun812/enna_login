
import 'package:enna_login/api/api_service.dart';
import 'package:enna_login/api/login_model.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';
class LoginEvent extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
///events
class LoginUser extends LoginEvent{
  final username;
  final password;
  LoginUser({this.password,this.username});
  @override
  // TODO: implement props
  List<Object?> get props => [username,password];

}
///state
class LoginState extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class NotLoggedIn extends LoginState{

}

class LoginProcessing extends LoginState{

}

class LoggedIn extends LoginState{
  final loggedInDetails;
  LoggedIn({this.loggedInDetails});
  @override
  // TODO: implement props
  List<Object?> get props => [loggedInDetails];
}

class Error extends LoginState{

}

class LoginBloc extends Bloc<LoginState,LoginEvent>{
  ApiService _apiService=ApiService();
  LoginBloc(LoginEvent initialState) : super(initialState);

  LoginState get initialState=>NotLoggedIn();
  Stream<LoginState>mapEventToStat(LoginEvent event)async*{
    if(event is LoginUser){
      yield LoginProcessing();
      try{
        LoginModal? logInModal=await _apiService.Login(username_:event.username,password_:event.password);
        yield LoggedIn(loggedInDetails: logInModal);
      }
      catch(e){
        yield Error();
      }
    }
  }

}
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_tutorial/model/account.dart';
import 'package:flutter_tutorial/service/database.dart';

part 'registration_event.dart';
part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  Database database = Database();
  @override
  RegistrationState get initialState => RegistrationInitial();

  @override
  Stream<RegistrationState> mapEventToState(
    RegistrationEvent event,
  ) async* {
    if (event is OnClickRegister) {
      if (await database.checkExistingUsername(event.username) == true) {
        print('Username already exist');
      } else if (await database.checkExistingUsername(event.username) ==
          false) {
        if (await database.checkExistingPhoneNumber(event.phoneNumber) ==
            true) {
          print('Phone number already exist');
        } else if (await database.checkExistingPhoneNumber(event.phoneNumber) ==
            false) {
          Account.registrationUsername = event.username;
          Account.registrationPassword = event.password;
          Account.verifyPhoneNumber = event.phoneNumber;
          yield RegistrationSuccess();
        } else {
          print('Phone number invalid');
        }
      } else {
        print('Connection Error');
      }
    }
  }
}

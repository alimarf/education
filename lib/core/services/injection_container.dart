import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../src/auth/data/datasources/auth_remote_data_source.dart';
import '../../src/auth/data/repos/auth_repo_impl.dart';
import '../../src/auth/domain/repos/auth_repo.dart';
import '../../src/auth/domain/usecases/forgot_password.dart';
import '../../src/auth/domain/usecases/sign_in.dart';
import '../../src/auth/domain/usecases/sign_up.dart';
import '../../src/auth/domain/usecases/update_user.dart';
import '../../src/auth/presentation/bloc/auth_bloc.dart';
import '../../src/on_boarding/data/datasources/on_boarding_local_data_source.dart';
import '../../src/on_boarding/data/repos/on_boarding_repo_impl.dart';
import '../../src/on_boarding/domain/repos/on_boarding_repo.dart';
import '../../src/on_boarding/domain/usecases/cache_first_timer.dart';
import '../../src/on_boarding/domain/usecases/check_if_user_is_first_timer.dart';
import '../../src/on_boarding/presentation/cubit/on_boarding_cubit.dart';

part 'injection_container.main.dart';

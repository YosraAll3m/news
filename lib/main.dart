import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/persenation/screens/news/news.dart';


import 'core/cubit/cubit.dart';
import 'core/cubit/state.dart';
import 'core/network/bloc_observer.dart';
import 'core/network/dio_helper.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
}

class MyApp extends StatelessWidget {
  bool isDark;
   MyApp(this.isDark, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (BuildContext context)=>NewsCubit()..getNewsData(),
      child: BlocConsumer<NewsCubit,NewsStates>(
        listener: (context,state){},
        builder: (context,state){

          return  MaterialApp(
            debugShowCheckedModeBanner: false,

            home:News() ,
          );
        },
      )

    );
  }
}


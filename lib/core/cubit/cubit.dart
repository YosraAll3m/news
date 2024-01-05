
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/cubit/state.dart';

import '../network/dio_helper.dart';


class NewsCubit extends Cubit<NewsStates>{
  NewsCubit():super(InitialNewsStates());

  static NewsCubit get(context)=>BlocProvider.of(context);

List news=[];
  void getNewsData(){
    emit(NewsHealthLoadingState());
    DioHelper.getData(
        url: 'v2/top-headlines',
        query: {
          'country': 'eg',
          'category': 'health',
          'apiKey': '60c0f90b6582441abfd7ce1ef7dc76ef',
        }

    ).then((value) {
      news=value.data["articles"];
      emit(GetHealthNewsSuccessState());
      print(news[0]['title']);

    }).catchError((error){
      print(error.toString());
      emit(GetHealthNewsErrorState(error.toString()));


    });

  }




}

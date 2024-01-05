import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../core/cubit/cubit.dart';
import '../../../core/cubit/state.dart';
import '../../widget/news_item.dart';

class News extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<NewsCubit,NewsStates>(
      listener: (context,NewsStates states){},
      builder: (context,NewsStates states){
        var list=NewsCubit.get(context).news;
          return  Padding(
  padding: const EdgeInsets.all(20.0),
  child: ListView.separated(itemBuilder: (context,index)=>NewsItem(list[index],context),
      separatorBuilder: (context,index)=>SizedBox(height: 25,),
      itemCount: list.length ),

);
      }

    );
  }
}
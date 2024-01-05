import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../screens/news_details/news_details.dart';

Widget NewsItem (articles,context) =>InkWell(
     onTap: (){

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  NewsDetails(url:"${articles['title']}",image:"${articles['urlToImage']}" ,)),
    );
     },
  child:   Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Color(0xff103176 ),blurRadius: 2)]

            ),
            child: Row(
              children: [
                CachedNetworkImage(
                  imageUrl: "${articles['urlToImage']}",
                  imageBuilder: (context, imageProvider) =>
                      Container(height: double.infinity,width: 120,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                              image:DecorationImage(fit: BoxFit.cover,
                                  image:  imageProvider

                              ))),
                  placeholder: (context, url) => CircularProgressIndicator(color:  Color(0xff103176 ),),
                  errorWidget: (context, url, error) => Icon(Icons.error),


                ),
                SizedBox(width: 15,),
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 5,),

                      Text("${articles['title']}",
                        maxLines: 4,overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Color(0xff103176 ) ),

                      ),
                      SizedBox(height: 10,),
                      Text("${articles['publishedAt']}",maxLines: 4,overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Colors.grey)
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
);


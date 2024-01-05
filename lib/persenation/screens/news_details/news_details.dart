import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NewsDetails extends StatelessWidget {
  final String? url,image;

  const NewsDetails({Key? key, this.url, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CachedNetworkImage(
              imageUrl: image!,
              imageBuilder: (context, imageProvider) =>
                  Container(height: double.infinity,width: 120,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          image:DecorationImage(fit: BoxFit.cover,
                              image:  imageProvider

                          ))),
              placeholder: (context, url) => CircularProgressIndicator(color:  Color(0xff103176 ),),
              errorWidget: (context, url, error) => Icon(Icons.error),


            ),
            SizedBox(height: 20,),
            Text(url!),
          ],
        )
    );
  }
}

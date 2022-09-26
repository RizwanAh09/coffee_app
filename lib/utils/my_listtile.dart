import 'package:flutter/material.dart';
class MyListTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subTitle;
  final color;

  const MyListTile({Key? key,
  required this.imagePath,
  required this.title,
  required this.subTitle,
  required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                height: 80,
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Image.network(imagePath),
              ),
              SizedBox(width: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(title,
                    style: const TextStyle(color: Colors.black54,
                        fontSize: 18,fontWeight: FontWeight.bold),),

                  SizedBox(height: 20,),

                  Text(subTitle,
                    style: TextStyle(color: Colors.black54),),
                ],
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios,
            color: Colors.black54,)
        ],
      ),
    );
  }
}

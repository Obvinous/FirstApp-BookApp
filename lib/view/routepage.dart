import 'package:book_app/models/books.dart';
import 'package:flutter/material.dart';

class RoutePage extends StatelessWidget {
  final Books
      bok; //just declaring a variable inside RoutePage class bok of of type Books(reference variable)
  RoutePage(this.bok); //constructor of RoutePage class to set the value for bok
  /**
  so the goal is just to bring the 'buk' from other file to here in this file?
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.network(
          bok.image,
          //ddaami image -- https://miro.medium.com/v2/resize:fit:1200/1*MqEReqJWCIcrLfmsXNDkrQ.jpeg
          height: 300,
          width: double.infinity,
          fit: BoxFit.cover,
        ),

        //Text(buk.label),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    bok.label,
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  Column(
                    children: [
                      Text(bok.rating),
                      Text(bok.genre,
                          style: TextStyle(fontWeight: FontWeight.w900))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(bok.description),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Read Book')),
                  OutlinedButton(onPressed: () {}, child: Text('More Info'))
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}

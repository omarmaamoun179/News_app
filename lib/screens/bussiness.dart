import 'package:flutter/material.dart';

class BussinesScreen extends StatelessWidget {
  const BussinesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                'https://resources.premierleague.com/photos/2023/03/08/c2f6b375-ccce-457e-aa4e-ed8b2bdf76ba/Salah-Liverpool.jpg?width=930&height=620',
                height: 100,
                width: 100,
              ),
              SizedBox(width: 50,),
              Text(
                  'Mohamed Salah',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              
              
            ],
     ),
        ],
      ),
      );
        
      
    
  }
}

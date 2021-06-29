import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: Home()
  ));
}

class Home extends StatelessWidget
{
  final List<String> imageURL=['images/my_photo.jpg','images/my_photo.jpg','images/my_photo.jpg','images/my_photo.jpg','images/my_photo.jpg'];
  final List<String> listOfLawyers=['Beverly Reid','Jessica McCoy','Tyler Green','Jess McCoy','Tim green'];
  final List<String> typeOfWork=['Divorce','Divorce','Corporate','Divorce','Corporate'];
  final List<String> ageOfLawyers=['30 years','23 years','21 years','31 years','24 years'];
  final List<String> moneyPerWorkDne=['AED 10/hr','AED 13/hr','AED 20/hr','AED 12/hr','AED 15/hr'];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout')),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin:EdgeInsets.all(15.0),
                child: Image(image: AssetImage('images/my_photo.jpg'), width: 60.0, height: 60.0),
                //color: Colors.red
              ),
              Container(
                margin:EdgeInsets.all(15.0),
                child: Text("Lawyers",style: TextStyle(fontSize: 25.0, color: Colors.grey[600])),
                  //color: Colors.blue
              ),
              Container(
                  margin:EdgeInsets.all(15.0),
                child: Icon(Icons.image_search_outlined, color: Colors.grey[600], size: 50.0),
                  //color: Colors.green
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextButton(onPressed: () {}, child: Text("Lawyer",style: TextStyle(color: Colors.black, fontSize: 35.0)))
              ),
              Expanded(
                child: TextButton(onPressed: () {},child: Text("History",style: TextStyle(color: Colors.black, fontSize: 35.0),),)
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text("20 Results Found", style: TextStyle(fontSize: 15.0, color: Colors.black))
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: IconButton(
                  onPressed: (){}, icon: Icon(Icons.view_list, color: Colors.grey[400], size: 25.0)
                ),
              )
            ],
          ),
            ListView.builder(
           padding: const EdgeInsets.all(5.0),
           itemCount: 1,
           //sof
           itemBuilder: (BuildContext context, int index)
           {
             return Row(
               children: <Widget>[
                 Column(
                   children: <Widget>[
                     Container(
                       child: Image(image: AssetImage(imageURL[0]), width: 50, height: 50)
                     )
                   ],
                 ),
                 Column(
                   children: <Widget>[
                     Row(
                       children: <Widget>[
                         Container(
                           child: Text('${listOfLawyers[0]}',style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black))
                         )
                       ],
                     ),
                     Row(
                       children: <Widget>[
                         Container(
                           child: Text('${typeOfWork[0]}',style: TextStyle(fontSize: 15.0, color: Colors.green[300]))
                         )
                       ],
                     ),
                     Row(
                       children: <Widget>[
                         Container(
                             child: Text('${ageOfLawyers[0]}',style: TextStyle(fontSize: 15.0, color: Colors.green[300])),
                             color: Colors.grey[300]
                         ),
                         Container(
                             child: Text('${moneyPerWorkDne[0]}',style: TextStyle(fontSize: 15.0, color: Colors.green[300])),
                             color: Colors.grey[300]
                         )
                       ],
                     ),
                     Row(
                       children: <Widget>[
                         Container(
                           child: TextButton(
                             onPressed: (){}, child: Text('Consult'),
                           ), color: Colors.green[600],
                         ),
                         Container(
                           child: Image(image: AssetImage('images/user_ratings.png'), width: 100, height: 30)
                         )
                       ],
                     )
                   ],
                 )
               ],
             );
           }
         )
        ],
      ),
    );
  }
}
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
                color: Colors.red
              ),
              Container(
                margin:EdgeInsets.all(15.0),
                child: Text("Lawyers",style: TextStyle(fontSize: 25.0, color: Colors.grey[600])),
                  color: Colors.blue
              ),
              Container(
                  margin:EdgeInsets.all(15.0),
                child: Icon(Icons.image_search_outlined, color: Colors.grey[600], size: 50.0),
                  color: Colors.green
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
        ],
      ),
    );
  }

}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: Home()));
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
    //var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                 shape: BoxShape.circle, image:DecorationImage(
                  image: AssetImage('images/my_photo.jpg'),fit: BoxFit.fill
                ),
                ),
                margin:EdgeInsets.all(15.0),
                //color: Colors.red
              ),
              Container(
                padding: EdgeInsets.only(top: 30.0),
                child: Text("Lawyers",style: TextStyle(fontSize: 20.0, color: Colors.grey[600])),
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
                child: TextButton(onPressed: () {}, child: Text("Lawyer",style: TextStyle(color: Colors.black, fontSize: 24.0)))
              ),
              Expanded(
                child: TextButton(onPressed: () {},child: Text("History",style: TextStyle(color: Colors.black, fontSize: 24.0),),)
              )
            ],
          ),
          Container(
              width: (MediaQuery.of(context).size.width)*0.5, color: Colors.green[500], height: 4.0
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text("20 Results Found", style: TextStyle(fontSize: 12.0, color: Colors.black))
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: IconButton(
                  onPressed: (){}, icon: Icon(Icons.view_list, color: Colors.grey[400], size: 25.0)
                ),
              )
            ],
          ),
            Container(
              height: (MediaQuery.of(context).size.height)*0.5,
                child: ListView.builder(
                    padding: const EdgeInsets.all(5.0),
                    itemCount: listOfLawyers.length,
                    itemBuilder: (BuildContext context, int index)
                    {
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 10.0, top: 0.0, right: 10.0,bottom: 0.0),
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle, image:DecorationImage(
                                    image: AssetImage('images/my_photo.jpg'),fit: BoxFit.fill
                                ),
                                ),
                              ),
                              Container(
                                width: 80.0,
                                height: 80.0
                              )
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.only(bottom: 7.0),
                                  child: Text('${listOfLawyers[index]}',style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black))
                              ),
                              Container(
                                  margin: EdgeInsets.only(bottom: 7.0),
                                  child: Text('${typeOfWork[index]}',style: TextStyle(fontSize: 12.0, color: Colors.green[300]))
                              ),
                              Container(
                                  padding: EdgeInsets.only(bottom: 7.0, left: 5.0,top:7.0),
                                  width: width*0.75,
                                  height: 30.0,
                                  color:Colors.grey[300],
                                    child: Text('${ageOfLawyers[index]} | ${moneyPerWorkDne[index]}',style: TextStyle(fontSize: 12.0, color: Colors.black))
                                ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.only(top:7.0,bottom: 15.0),
                                      width: 90.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color:Colors.green[400], borderRadius: BorderRadius.all(Radius.circular(20))
                                      ),
                                      child: Center(
                                        child: Text('Consult', style: TextStyle(color: Colors.black), textAlign: TextAlign.center),
                                      )
                                  ),
                                  /*Container(
                                    child:  ButtonTheme(
                                      minWidth: 20.0,
                                      height: 20.0,
                                      child: TextButton(onPressed: () {}, child: Text('Consult', style: TextStyle(color: Colors.black),)),
                                      buttonColor:Colors.green[500],
                                      shape: new RoundedRectangleBorder( borderRadius: new BorderRadius.circular(20.0))
                                    )
                                  )*/
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
            )
        ],
      ),
    );
  }
}
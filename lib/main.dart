import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: Home()));
}
class Home extends StatelessWidget
{
  // List's of Information for Lawyers.
  final List<String> imageURL=['images/my_photo.jpg','images/my_photo.jpg','images/my_photo.jpg','images/my_photo.jpg','images/my_photo.jpg'];
  final List<String> listOfLawyers=['Beverly Reid','Jessica McCoy','Tyler Green','Jess McCoy','Tim green'];
  final List<String> typeOfWork=['Divorce','Divorce','Corporate','Divorce','Corporate'];
  final List<String> ageOfLawyers=['30 years','23 years','21 years','31 years','24 years'];
  final List<String> moneyPerWorkDne=['AED 10/hr','AED 13/hr','AED 20/hr','AED 12/hr','AED 15/hr'];

  @override
  Widget build(BuildContext context)
  {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout')),
      /*
      Structure of body:
      One Column contains -
        Row Widget -> three Containers   | for UpperBar containing image,text,Button
        Row Widget-> two Expanded Widgets //for Selection between History and Lawyers.
        Container  // for the half page underline.
        Row Widget -> two Containers // for total searches found and button ar end.
        Container // for list Builder.
       */
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Image Container.
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
              // Text Container.
              Container(
                padding: EdgeInsets.only(top: 30.0),
                child: Text("Lawyers",style: TextStyle(fontSize: 20.0, color: Colors.grey[600])),
                  //color: Colors.blue
              ),
              // Icon/Button Container.
              Container(
                  margin:EdgeInsets.all(15.0),
                child: Icon(Icons.image_search_outlined, color: Colors.grey[600], size: 50.0),
                  //color: Colors.green
              )
            ],
          ),
          Row(
            children: <Widget>[
              // Selection for Lawyer using Expanded.
              Expanded(
                child: TextButton(onPressed: () {}, child: Text("Lawyer",style: TextStyle(color: Colors.black, fontSize: 24.0)))
              ),
              // Selection for History using Expanded.
              Expanded(
                child: TextButton(onPressed: () {},child: Text("History",style: TextStyle(color: Colors.black, fontSize: 24.0),),)
              )
            ],
          ),
          Container(
              width: (MediaQuery.of(context).size.width)*0.5, color: Colors.green[500], height: 4.0
          ),// Half Page UnderLine.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Results found Container.
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text("20 Results Found", style: TextStyle(fontSize: 12.0, color: Colors.black))
              ),
              // Icon Button Container.
              Container(
                padding: EdgeInsets.all(10.0),
                child: IconButton(
                  onPressed: (){}, icon: Icon(Icons.view_list, color: Colors.grey[400], size: 25.0)
                ),
              )
            ],
          ),
            Container(
              height: (MediaQuery.of(context).size.height)*0.5,  // giving height to Whole Container containing ListView.
                //ListView Builder
                /*
                  Structure of ListView Builder.
                  Returning Row that Contains-
                  Two Columns:
                  First Column -> Containers // For image only.
                  Second Column contains-
                  Four Rows:
                  First Row-> Container //name of Lawyer.
                  Second Row-> Container //type of Work done by him/her.
                  Third Row->  Containers //age and money taken for work by lawyer.
                  Forth Row-> Row // Consult the Lawyer and review rating.
                 */
                child: ListView.builder(
                    padding: const EdgeInsets.all(5.0),
                    itemCount: listOfLawyers.length,
                    itemBuilder: (BuildContext context, int index)
                    {
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          // First Column
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              // Image Container
                              Container(
                                margin: EdgeInsets.only(left: 10.0, top: 0.0, right: 10.0,bottom: 0.0),
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle, image:DecorationImage(
                                    image: AssetImage('${imageURL[index]}'),fit: BoxFit.fill //getting image and Boxing it.
                                ),
                                ),
                              ),
                              // Shift Image Upwards.
                              Container(
                                width: 80.0,
                                height: 80.0
                              )
                            ],
                          ),
                          // Second Column
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              // Name of Lawyer Container
                              Container(
                                  margin: EdgeInsets.only(bottom: 7.0),
                                  child: Text('${listOfLawyers[index]}',style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black))
                              ),
                              // type of Work done Container.
                              Container(
                                  margin: EdgeInsets.only(bottom: 7.0),
                                  child: Text('${typeOfWork[index]}',style: TextStyle(fontSize: 12.0, color: Colors.green[300]))
                              ),
                              // Age and Money taken per Hour.
                              Container(
                                  padding: EdgeInsets.only(bottom: 7.0, left: 5.0,top:7.0),
                                  width: width*0.75,
                                  height: 30.0,
                                  color:Colors.grey[300],
                                    child: Text('${ageOfLawyers[index]} | ${moneyPerWorkDne[index]}',style: TextStyle(fontSize: 12.0, color: Colors.black))
                                ),
                              // Consult and rating Row
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  // Consult Container.
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
                                  // Space Between Container
                                  Container(width: 130.0),
                                  /*Container(
                                    child:  ButtonTheme(
                                      minWidth: 20.0,
                                      height: 20.0,
                                      child: TextButton(onPressed: () {}, child: Text('Consult', style: TextStyle(color: Colors.black),)),
                                      buttonColor:Colors.green[500],
                                      shape: new RoundedRectangleBorder( borderRadius: new BorderRadius.circular(20.0))
                                    )
                                  )*/
                                  // Rating Container.
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
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:marquee/marquee.dart';

class MyDesktop extends StatefulWidget {
  const MyDesktop({super.key});

  @override
  State<MyDesktop> createState() => _MyDesktopState();
}

class _MyDesktopState extends State<MyDesktop> {
  Map<String, double> dataMap = {
    "Abset": 5,
    "Present": 95,
  };

  

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 81, 167, 229),
          title: Text(
              'Hello Pooja!',
              style: GoogleFonts.montserrat(fontSize: 25)
          ),
          leading: IconButton(
              icon: Icon(Icons.calendar_month),
              onPressed: (){
                if(scaffoldKey.currentState!.isDrawerOpen){
                      scaffoldKey.currentState!.closeDrawer();
                      //close drawer, if drawer is open
                }else{
                      scaffoldKey.currentState!.openDrawer();
                      //open drawer, if drawer is closed
                }
              },
          ),
          actions: [
            Center(
              child: Container(
                height: 30,
                width: width/4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 255, 255, 255),
                  ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.search),
              ),
            SizedBox(
              width: 20,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('asset/images/photo.jpg'),
              radius: 30,
            ),
          ],
        ),
        key: scaffoldKey,
        drawer: Center(
          child: Container(
            width: width/2,
            height: height/2,
            child: Padding(
              padding: const EdgeInsets.only(top: 75),
              child: Drawer(
                child: ListView(
                children :[
                  Text('T I M E T A B L E',textScaleFactor: 1.5,
                  textAlign: TextAlign.center,),
                  Table(
                    
                  // textDirection: TextDirection.rtl,
                  //defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                  border:TableBorder.all(width: 2.0),
                  children: [
                    TableRow(
                      children: [
                        Text("  ",textScaleFactor: 1.5,),
                        Text(" 1 ",textScaleFactor: 1.5,),
                        Text(" 2 ",textScaleFactor: 1.5,),
                        Text(" 3 ",textScaleFactor: 1.5,),
                        Text(" 4 ",textScaleFactor: 1.5,),
                        Text(" 5 ",textScaleFactor: 1.5,),
                        Text(" 6 ",textScaleFactor: 1.5,),
                        Text(" 7 ",textScaleFactor: 1.5,),
                      ]
                    ),
                    TableRow(
                      children: [
                        Text(" MON ",textScaleFactor: 1.5,),
                        Text(" - ",textScaleFactor: 1,),
                        Text(" DE ",textScaleFactor: 1,),
                        Text(" OS ",textScaleFactor: 1,),
                        Text(" CON ",textScaleFactor: 1,),
                        Text(" DBMS ",textScaleFactor: 1,),
                        Text(" HONOURS ",textScaleFactor: 1,),
                        Text(" HONOURS ",textScaleFactor: 1,),
                      ]
                    ),
                     TableRow(
                      children: [
                        Text(" TUES ",textScaleFactor: 1.5),
                        Text(" DS/OS LAB ",textScaleFactor: 1,),
                        Text(" DS/OS LAB ",textScaleFactor: 1,),
                        Text(" DS/OS LAB ",textScaleFactor: 1,),
                        Text(" CON ",textScaleFactor: 1,),
                        Text(" GT ",textScaleFactor: 1,),
                        Text(" DBMS ",textScaleFactor: 1,),
                        Text(" - ",textScaleFactor: 1,),
                      ]
                    ),
                    TableRow(
                      children: [
                        Text(" WED ",textScaleFactor: 1.5),
                        Text(" CON ",textScaleFactor: 1,),
                        Text(" OS ",textScaleFactor: 1,),
                        Text(" COI ",textScaleFactor: 1,),
                        Text(" HONOURS ",textScaleFactor: 1,),
                        Text(" GT ",textScaleFactor: 1,),
                        Text(" DE ",textScaleFactor: 1,),
                        Text(" - ",textScaleFactor: 1,),
                      ]
                    ),
                    TableRow(
                      children: [
                        Text(" THURS ",textScaleFactor: 1.5,),
                        Text(" OS ",textScaleFactor: 1,),
                        Text(" GT ",textScaleFactor: 1,),
                        Text(" DBMS ",textScaleFactor: 1,),
                        Text(" DS/OS LAB ",textScaleFactor: 1,),
                        Text(" DS/OS LAB ",textScaleFactor: 1,),
                        Text(" DS/OS LAB ",textScaleFactor: 1,),
                        Text(" - ",textScaleFactor: 1,),
                      ]
                    ),
                    TableRow(
                      children: [
                        Text(" FRI ",textScaleFactor: 1.5),
                        Text(" COI ",textScaleFactor: 1,),
                        Text(" GT ",textScaleFactor: 1,),
                        Text(" CON ",textScaleFactor: 1,),
                        Text(" - ",textScaleFactor: 1,),
                        Text(" DBMS ",textScaleFactor: 1,),
                        Text(" OS ",textScaleFactor: 1,),
                        Text(" HONOURS ",textScaleFactor: 1,),
                      ]
                    )
                  ],
                        ),
                ],
                ),
              ),
            ),
          ),
        ),
        body: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8,top: 10,bottom: 47),
                  child: Text('RANDOM INSPIRATIONAL QUOTE',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 30),),
                ),
                SizedBox(
                  width: width/2,
                  
                  child:
                      Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: width/2,
                                height: height/1.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20),
                                  ), 
                                  color: Color.fromARGB(255, 81, 167, 229),
                                ),
                                child:  Center(
                                  child :GridView(
                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3, 
                                          mainAxisSpacing: 16,
                                          childAspectRatio: (.5/.3),
                                          crossAxisSpacing: 3),
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(20),),
                                                  color: Colors.white,
                                                ),
                                                child:Icon(Icons.app_registration_outlined, color: Color.fromARGB(255, 81, 167, 229),size: 70,) 
                                              ),
                                              SizedBox(height: 20,),
                                              TextButton(
                                                onPressed: () {},
                                                child: Text('ATTENDANCE',
                                                style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(20),),
                                                  color: Colors.white,
                                                ),
                                                child:Icon(Icons.calendar_today_sharp, color: Color.fromARGB(255, 81, 167, 229),size: 70,) 
                                              ),
                                              SizedBox(height: 20,),
                                              TextButton(
                                                onPressed: () {},
                                                child: Text('ACADEMIC CALENDAR',
                                                style: GoogleFonts.montserrat(fontSize: 15, color: Colors.white),),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(20),),
                                                  color: Colors.white,
                                                ),
                                                child:Icon(Icons.assignment, color: Color.fromARGB(255, 81, 167, 229),size: 70,) 
                                              ),
                                              SizedBox(height: 20,),
                                              TextButton(
                                                onPressed: () {},
                                                child: Text('ASSIGNMENT',
                                                style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(20),),
                                                  color: Colors.white,
                                                ),
                                                child:Icon(Icons.assignment_turned_in, color: Color.fromARGB(255, 81, 167, 229),size: 70,) 
                                              ),
                                              SizedBox(height: 20,),
                                              TextButton(
                                                onPressed: () {},
                                                child: Text('RESULTS',
                                                style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(20),),
                                                  color: Colors.white,
                                                ),
                                                child:Icon(Icons.auto_stories_outlined, color: Color.fromARGB(255, 81, 167, 229),size: 70,) 
                                              ),
                                              SizedBox(height: 20,),
                                              TextButton(
                                                onPressed: () {},
                                                child: Text('STUDY MATERIALS',
                                                style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(20),),
                                                  color: Colors.white,
                                                ),
                                                child:Icon(Icons.biotech, color: Color.fromARGB(255, 81, 167, 229),size: 70,) 
                                              ),
                                              SizedBox(height: 20,),
                                              TextButton(
                                                onPressed: () {},
                                                child: Text('LAB',
                                                style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(20),),
                                                  color: Colors.white,
                                                ),
                                                child:Icon(Icons.content_paste, color: Color.fromARGB(255, 81, 167, 229),size: 70,) 
                                              ),
                                              SizedBox(height: 20,),
                                              TextButton(
                                                onPressed: () {},
                                                child: Text('EXAM',
                                                style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(20),),
                                                  color: Colors.white,
                                                ),
                                                child:Icon(Icons.credit_score_rounded, color: Color.fromARGB(255, 81, 167, 229),size: 70,) 
                                              ),
                                              SizedBox(height: 20,),
                                              TextButton(
                                                onPressed: () {},
                                                child: Text('FEES',
                                                style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(20),),
                                                  color: Colors.white,
                                                ),
                                                child:Icon(Icons.diversity_1_outlined, color: Color.fromARGB(255, 81, 167, 229),size: 70,) 
                                              ),
                                              SizedBox(height: 20,),
                                              TextButton(
                                                onPressed: () {},
                                                child: Text('COUNSELLING',
                                                style: GoogleFonts.montserrat(fontSize: 20, color: Colors.white),),
                                              ),
                                            ],
                                          ),
                                        ),
                                        ]
                                    )
                                ),
                              ),
                            ),
                          ),
                ),
              ],
            ),
            SizedBox(
              width: width/2,
              height: height,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('ATTENDANCE',
                      style: GoogleFonts.montserrat(fontSize: 20),
                      ),
                      SizedBox(width: 50),
                      PieChart(
                        dataMap: dataMap,
                        animationDuration: Duration(milliseconds: 800),
                        chartLegendSpacing: 20,
                        chartRadius: width/20,
                        //colorList: colorList,
                        initialAngleInDegree: 0,
                        chartType: ChartType.ring,
                        ringStrokeWidth: 10,
                        //centerText: "ATTENDANCE",
                        chartValuesOptions: ChartValuesOptions(
                          showChartValueBackground: false,
                          showChartValues: true,
                          showChartValuesInPercentage: true,
                          showChartValuesOutside: false,
                          decimalPlaces: 1,
                        ),
                        // gradientList: ---To add gradient colors---
                        // emptyColorGradient: ---Empty Color gradient---
                      ),
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: width/2,
                        height: height/1.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20),
                          ), 
                          color: Color.fromARGB(255, 81, 167, 229),
                        ),
                        child: Center(
                          child: ListView(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  'NOTIFICATIONS!',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(fontSize: 30,color: Colors.white),
                                ),
                              ),
                               Padding(
                                 padding: const EdgeInsets.fromLTRB(10,40,10,10),
                                 child: Container(
                                    height: 75,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      ),
                                      alignment: Alignment.centerLeft,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                                '  Series Exam started on 16-03-23!',
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.montserrat(fontSize: 20,color: Colors.black),
                                                ),
                                      ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(10.0),
                                 child: Container(
                                    height: 75,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      ),
                                      alignment: Alignment.centerLeft,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                                '  Design Engineering Assignment uploaded!',
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.montserrat(fontSize: 20,color: Colors.black),
                                                ),
                                      ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(10.0),
                                 child: Container(
                                    height: 75,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      ),
                                      alignment: Alignment.centerLeft,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                                '  DBMS Assignment Due Today !',
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.montserrat(fontSize: 20,color: Colors.black),
                                                ),
                                      ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(10.0),
                                 child: Container(
                                    height: 75,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      ),
                                      alignment: Alignment.centerLeft,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                                '  KTU Academic Calendar updated!',
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.montserrat(fontSize: 20,color: Colors.black),
                                                ),
                                      ),
                                 ),
                               ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
          
      ),
    );
  }
}


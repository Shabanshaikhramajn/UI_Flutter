import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

              backgroundColor: Color.fromRGBO(244, 243, 243, 1),
              appBar: AppBar(
                backgroundColor: Colors.white,
                  elevation: 0,
                  leading: IconButton( onPressed: (){},
                   icon: Icon(Icons.menu,color: Colors.black87,)),
              ),


            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
              
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25)
                        )
                
                      ),
                
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Find Your', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),),
                          Text('Inspiration', style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),),
                          SizedBox(height: 30,),
                
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(30),

                              ),

                            child: TextField(
                              
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[200],
                            
                               border:  OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none
                               ),
                                
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black87,
                                
                                ),
                                hintText: "Search you're looking for",
                                hintStyle: TextStyle(color: Colors.grey, fontSize: 17)
                              ),
                            ),
                          
                          ),
                          SizedBox(height: 30,)
                
                        ],
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                         Padding(
                           padding: const EdgeInsets.only(  top: 25,bottom: 30, left: 20),
                           child: Text('promo today ',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                         ),
             
                    Container(
                    height: 200,

                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(width: 20,),
                          PromoCard('assets/1.jpg'),
                          PromoCard('assets/2.jpg'),
                          PromoCard('assets/3.jpg'),
                          PromoCard('assets/4.jpg')
                        ],
                      ),
                    
                    
                    
                    ),
                    SizedBox(height: 5,),

                    Container(

                        height: 170,
                        width: double.infinity,
                        margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/5.jpg'), fit: BoxFit.cover)
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Best Design', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),),
                        ),
                      ),

                    ),




             

                      ],
                    )
                   
  

                  ],
                ),
              )),


    );
  }
}


Widget PromoCard (image){

return AspectRatio(
  aspectRatio: 2.62/3,
  child: Container(
        margin: EdgeInsets.only(right: 15),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover )
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.bottomRight, stops: [
                  .1, .9
                ],
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1)
              ])
          ),
          ),
  ),







  );




}
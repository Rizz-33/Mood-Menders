
// import 'package:app/activeUser/pages/music.dart';
// import 'package:flutter/material.dart';

// import 'myprofile.dart';

// class mainpage extends StatelessWidget {
//   const mainpage({super.key});
  
 
  
 

//   @override
//   Widget build(BuildContext context) {
    
//     return MaterialApp(
      
//       debugShowCheckedModeBanner: false,
//       home: SafeArea(
//           child: Scaffold(
//             backgroundColor: Color.fromARGB(255, 255, 255, 255),
//             appBar: AppBar(
//               backgroundColor: Color.fromARGB(255, 93, 118, 144),
//               title: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 IconButton(
//                   icon: Icon(Icons.home),
//                   onPressed: () {
                    
//                   },
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.person),
//                   onPressed: () {
//                     Navigator.push(
//                       context, 
//                      MaterialPageRoute(
//                     builder: (context) => MyProfilePage(),
//                      ),
//                     );
//                   },
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.music_note),
//                   onPressed: () {
//                     Navigator.push(context, 
//                     MaterialPageRoute(builder: (context)=>MusicPage()),
//                     );
//                   },
//                 ),
//               ],
//               ),
//                 shape: const RoundedRectangleBorder(
//              borderRadius: BorderRadius.only(
//                bottomLeft: Radius.circular(25),
//                bottomRight: Radius.circular(25),
//              ), 
//            ),
              
//             ),
//             body: SingleChildScrollView(
//               child: Column(
                
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                 Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Container(
//                     width: double.infinity,
//                     height: 30,
//                     decoration: BoxDecoration(
                      
//                       color: Color.fromARGB(255, 211, 237, 211),
//                       borderRadius: BorderRadius.circular(5)
//                     ),
//                     child: const Center(child: Text('M O O D  M E N D E R S',style: TextStyle(fontWeight: FontWeight.w600),),
                
//                   ),
//                 ),
//                 ),
              
//                 /*const Padding(
//                   padding: EdgeInsets.all(.0),
//                   child:Card (child: Image(image: AssetImage('assets/relax_melodies.jpg'))),
//                 ),*/
// Padding(
//   padding: EdgeInsets.all(0.0),
//   child: Card(
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(15.0), 
//     ),
//     child: ClipRRect(
//       borderRadius: BorderRadius.circular(15.0), 
//       child: Image(
//         image: AssetImage('assets/relax_melodies.jpg'),
//       ),
//     ),
//   ),
// ),
//                 const SizedBox(
//                   height: 7,
//                 ),
//                  const Padding(
//                   padding: EdgeInsets.all(.8),
//                   child:  Column(
//                       children: [
                        
//                            Stack(
                           
//                             alignment: Alignment.center,
//                             children:[
                            
//                               Padding(
//                                 padding: EdgeInsets.all(.0),
//                                 child: Card(
//                                   shadowColor: Colors.black,
//                                  color: Color.fromARGB(255, 211, 237, 211),
//                                   elevation: 5,
//                                   margin: EdgeInsets.all(0.0),
//                                   child: Text("Welcome to Mood Menders, your sanctuary for mental well-being! Designed exclusively for NSBM Green University students, our app is your go-to platform for fostering a healthier mind. Engage in open discussions, seek support from peers, and discover a plethora of mind-relaxing activities. Let's journey together towards a brighter, balanced state of being. Your mental wellness matters, and here, you're never alone.",style: TextStyle(fontSize: 13.0,
//                                   color: Color.fromARGB(255, 9, 17, 10),fontWeight: FontWeight.w900,wordSpacing: 2,fontFamily: AutofillHints.birthday
                                  
//                                   ),
                                  
                                 
//                                 ),
                                                         
//                                ),
//                               ),
//                             ],
//                           ),
                        
                      
//                       ],
                       
//                     ),
//                   ),
//                 const SizedBox(
//                   height: 14,
//                 ),
//                        Padding(
//                padding: const EdgeInsets.all(4.0),
//                child: SizedBox(
//                  width: null,
//                  child: Padding(
//                    padding: const EdgeInsets.all(.0),
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      children: [
//                        Center(
                         
//                          child: ElevatedButton(
//                            onPressed: () {
                            
//                          }, child: Text('What We Do'),
//                          style: ButtonStyle(
//                          backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(74, 76, 175, 79)), // Set the background color
//                          ),
//                          ),
                         
//                        ),
//                        const SizedBox(
//                          width: 4,
//                        ),
//                       ElevatedButton(
                        
//                            onPressed: () {
                            
//                          }, child: const Text('About Us'),
//                          style: ButtonStyle(
//               backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(74, 33, 149, 243)), // Set the background color
//             ),
//                          ),
//                          const SizedBox(
//                          width: 4,
//                        ),
//                          ElevatedButton(
//                            onPressed: () {
                            
//                          }, child: const Text('Waterproofing?'),
//                          style: ButtonStyle(
//               backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(74, 76, 175, 79)), // Set the background color
//             ),
//                          ),
//                      ],
//                    ),
//                  ),
//                ),
//                 ),
//                 const SizedBox(
//                   height: 1,
//                 ),
                
              
                   
//     TextButton(
      
//   onPressed: () {
    
//   },
//   child: Padding(
//     padding: const EdgeInsets.all(16.0),
//     child: Container(
//     color: Colors.white,
//      child: const Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Expanded(
//           child: Padding(
//             padding: EdgeInsets.all(2.0),
//             child: Card(
//               color: Color.fromARGB(255, 59, 90, 59),
//               child: Column(
//                 children: [
//                   Image(
//                     image: AssetImage("assets/welcome.jpg"),
//                     width: 150,
//                     height: 85,
//                   ),
//                   SizedBox(
//                     child: Text(
//                       "Click If You Are NEW!",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.normal),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     ),
//   ),
//   )

    
            
//     ),
//               Column(children: [
                
//                    Padding(
//                      padding: const EdgeInsets.all(16.0),
//                      child: Card(
//                        color: const Color.fromARGB(255, 46, 67, 46),
//                        child: Container(
//                                        child: const Text('ONGOING SOCIAL ACTIVITIES IN NSBM PREMISES',style: TextStyle(
//                           color: Colors.white,fontWeight: FontWeight.bold,fontFamily: AutofillHints.addressState
//                                        ),
//                                        ),
//                                        ),
//                      ),
//                    ),
//            Row(
//   children: [
//     Center(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Card(
//           color: Colors.blueGrey,
//           child: Positioned(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
          
//                 children: [
//                   Image(
//                     image: AssetImage('assets/newcomers.jpg'),
//                     width: 89,
//                     height: 100,
//                   ),
//                   SizedBox(width: 8),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Meet up with new comers',
//                         style: TextStyle(
//                           fontFamily: AutofillHints.addressCity,
//                           color: Colors.white,
//                           fontSize: 12,
//                           fontWeight: FontWeight.w200,
//                         ),
//                       ),
//                       SizedBox(height: 4),
//                       TextButton(
//                         onPressed: () {
//                           // Add your "See More" functionality here
//                         },
//                         child: Text(
//                           'See More',
//                           style: TextStyle(
//                             color: Color.fromARGB(255, 148, 221, 148),
//                             fontSize: 10,
//                             fontWeight: FontWeight.w100
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//   ],
// )

               
//               ]
              
              
//               )
              
//               ]
                
              
              
                
//             ),
                   
//           ),
//         )
//       ),
//     );
            
            
//   }
// }
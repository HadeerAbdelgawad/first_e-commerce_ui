
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class HomePage extends StatelessWidget{
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//
//       appBar: AppBar(
//         backgroundColor: Colors.grey,
//         centerTitle: true,
//         title: Text(
//           "My New App Bar",
//           style: TextStyle(
//             color:Colors.white60 ,
//           )
//         )
//       ),
//
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children:[
//             Image.network(
//               "https://plus.unsplash.com/premium_photo-1765927690120-94a4484a90a8?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxNnx8fGVufDB8fHx8fA%3D%3D"
//             ),
//             SizedBox(
//               height: 12,
//             ),
//             Text("Hello User",
//                 style: TextStyle(color:Colors.black , fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//
//             Container(
//                 height: 50,
//                 width: 250,
//                 decoration:BoxDecoration(
//                     color:  Colors.blue,
//                     borderRadius:BorderRadius.circular(20)
//                 ),
//                 child:Center(
//                   child:Text(
//                     "login",
//                     style: TextStyle(color:Colors.white),
//                   )),
//
//             ),
//             SizedBox(height:12),
//             ElevatedButton(
//                 style:ElevatedButton.styleFrom(
//                   backgroundColor:Colors.amber,
//                   fixedSize: Size(200,50),
//                   side: BorderSide(width: 1)
//                 ),
//                 onPressed: (){}, child: Text('Sign Up')
//             ),
//
//
//
//           ]
//         ),
//       ),
//
//
//
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          backgroundColor: Colors.cyan,
          centerTitle: true,
          leading: BackButton(
            color: Colors.white,
          ),
          leadingWidth: 12,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.menu, color: Colors.white),
            )

          ],
          title: Text(
              "Task App",
              style: TextStyle(
                color: Colors.white60,
              )
          )
      ),


      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch ,
            children: [

              Image.network("https://img.freepik.com/free-vector/flat-scrum-task-board-with-hands-team-members-color-paper-stickers-group-software-developers-create-work-project-schedule-with-sticky-notes-teamwork-development-sprint-planning-concept_88138-909.jpg?t=st=1766655978~exp=1766659578~hmac=9a71245eaf3230f49f7fbbf8948924ba6ca6f00114a6ee8eaa21aa22d761a166.jpg"
              ),
              SizedBox(
                height: 12,
              ),

              Text("Hello User",
                  style: TextStyle(color:Colors.black , fontSize: 20, fontWeight: FontWeight.bold),
              ),

              SizedBox(height:12),

              Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                  border: Border.all(width: 2 , color: Colors.black26),
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  children: [
                    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa20TYhgbAlN9rS0euIfbocW1J2M2RgwhhDw&s"
                      ,width:100 ,
                    height: 200,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Task 1",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height:12),

              Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(width: 2 , color: Colors.black26),
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  children: [
                    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa20TYhgbAlN9rS0euIfbocW1J2M2RgwhhDw&s"
                      ,width:100 ,
                      height: 200,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Task 1",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height:12),

              Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(width: 2 , color: Colors.black26),
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  children: [
                    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa20TYhgbAlN9rS0euIfbocW1J2M2RgwhhDw&s"
                      ,width:100 ,
                      height: 200,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Task 1",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height:12),
              
              Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(width: 2 , color: Colors.black26),
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  children: [
                    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa20TYhgbAlN9rS0euIfbocW1J2M2RgwhhDw&s"
                      ,width:100 ,
                      height: 200,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Task 1",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400
                      ),
                    )
                  ],
                ),
              )
            ]

        ),
      ),
    );
  }
}
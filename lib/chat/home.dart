// import 'package:app/chat/chat.dart';
// import 'package:app/chat/components/usertile.dart';
// import 'package:app/chat/service/auth/auth_service.dart';
// import 'package:app/chat/service/chat/chat_service.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class HomePage extends StatelessWidget {
//   HomePage({Key? key});

//   final ChatService _chatService = ChatService();
//   final AuthService _authService = AuthService();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.background,
//       appBar: AppBar(
//         title: Padding(
//           padding: const EdgeInsets.only(left: 10),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 5.0),
//                     child: Text(
//                       'CHAT',
//                       style: GoogleFonts.poppins(
//                         textStyle: Theme.of(context).textTheme.headlineMedium,
//                         color: const Color.fromARGB(255, 70, 66, 68),
//                         fontSize: 24,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Image.asset(
//                 'lib/images/leaf2.png',
//                 fit: BoxFit.cover,
//               ),
//             ],
//           ),
//         ),
//         titleSpacing: 4.0,
//         toolbarHeight: 60,
//         toolbarOpacity: 0.9,
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//               bottomRight: Radius.circular(18),
//               bottomLeft: Radius.circular(18)),
//         ),
//         iconTheme: const IconThemeData(
//           color: Colors.black,
//         ),
//         elevation: 0.00,
//         backgroundColor: const Color.fromARGB(255, 134, 208, 203),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
//         child: _buildUserList(),
//       ),
//     );
//   }

//   Widget _buildUserList() {
//     return StreamBuilder(
//       stream: _chatService.getUserStream(),
//       builder: (context, AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
//         if (snapshot.hasError) {
//           return Text('Error');
//         }
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Text("Loading...");
//         }
//         List<Map<String, dynamic>> users = snapshot.data ?? [];
//         return ListView.builder(
//           itemCount: users.length,
//           itemBuilder: (context, index) {
//             return _buildUserListItem(users[index], context);
//           },
//         );
//       },
//     );
//   }

//   Widget _buildUserListItem(Map<String, dynamic> userData, BuildContext context) {
//     if (userData['email'] != _authService.getCurrentUser()!.email) {
//       return UserTile(
//         text: userData['name'].toString(),
//         isNewMessage: false,
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => ChatPage(
//                 receiverEmail: userData['email'],
//                 receiverID: userData['uid'],
//                 receiverName: userData['username'],
//               ),
//             ),
//           );
//         },
//       );
//     } else {
//       return Container();
//     }
//   }
// }

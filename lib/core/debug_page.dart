import 'package:flutter/material.dart';
// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
class DebugPage extends StatelessWidget {
  const DebugPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
//
// class DebugPage extends StatefulWidget {
//
//   final String title = 'asdfa';
//
//   @override
//   _DebugPageState createState() => _DebugPageState();
// }
//
// class _DebugPageState extends State<DebugPage> {
//
//   FocusNode _focusNode = FocusNode();
//   GlobalKey _textFieldKey = GlobalKey();
//   TextStyle _textFieldStyle = TextStyle(fontSize: 20);
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = QuillController.basic();
//     _controller
//     _controller.addListener(() {
//
//     });
//   }
//
//   // Code reference for overlay logic from MTECHVIRAL's video
//   // https://www.youtube.com/watch?v=KuXKwjv2gTY
//   showOverlaidTag(BuildContext context, String newText) async {
//
//     TextPainter painter = TextPainter(
//       textDirection: TextDirection.ltr,
//       text: TextSpan(
//         style: _textFieldStyle,
//         text: newText,
//       ),
//     );
//     painter.layout();
//
//
//     OverlayState overlayState = Overlay.of(context);
//     OverlayEntry suggestionTagoverlayEntry = OverlayEntry(builder: (context) {
//       return Positioned(
//
//         // Decides where to place the tag on the screen.
//         top: _focusNode.offset.dy + painter.height + 3,
//         left: _focusNode.offset.dx + painter.width + 10,
//
//         // Tag code.
//         child: Material(
//             elevation: 4.0,
//             color: Colors.lightBlueAccent,
//             child: Text(
//               'Show tag here',
//               style: TextStyle(
//                 fontSize: 20.0,
//               ),
//             )),
//       );
//     });
//     overlayState.insert(suggestionTagoverlayEntry);
//
//     // Removes the over lay entry from the Overly after 500 milliseconds
//     await Future.delayed(Duration(milliseconds: 500));
//     suggestionTagoverlayEntry.remove();
//   }
//   QuillController _controller;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           QuillToolbar.basic(controller: _controller),
//           Expanded(
//             child: Container(
//
//               child: QuillEditor.basic(
//                 controller: _controller,
//                 readOnly: false, // true for view only mode
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
//
// //
// // class SliverHeader extends StatelessWidget {
// //   const SliverHeader({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return SliverPersistentHeader(
// //       pinned: true,
// //       floating: false,
// //       delegate: Delegate(Colors.blue, 'appbar', 60, 60),
// //     );
// //   }
// // }
// //
// // class SliverChatItem extends StatelessWidget {
// //   const SliverChatItem({super.key, required this.title});
// //
// //   final String title;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return SliverPersistentHeader(
// //       pinned: false,
// //       floating: false,
// //       delegate: Delegate(Colors.lightBlueAccent, title, 60, 60),
// //     );
// //   }
// // }
// //
// // class SliverChat extends StatelessWidget {
// //   final double maxHeight;
// //
// //   const SliverChat({super.key, required this.maxHeight});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return SliverPersistentHeader(
// //       pinned: true,
// //       floating: true,
// //       delegate: ChatDelegate(Colors.purple, 'chat', maxHeight, 0),
// //     );
// //   }
// // }
// //
// // class ChatDelegate extends SliverPersistentHeaderDelegate {
// //   final Color backgroundColor;
// //   final String _title;
// //
// //   ChatDelegate(this.backgroundColor, this._title, this.maxExtent, this.minExtent);
// //
// //   @override
// //   Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
// //     return CustomScrollView(
// //         reverse: true,
// //         slivers: List.generate(
// //           150,
// //           (index) => SliverChatItem(title: '$index asdf'),
// //         ));
// //   }
// //
// //   @override
// //   final double maxExtent;
// //
// //   @override
// //   final double minExtent;
// //
// //   @override
// //   bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
// //     return true;
// //   }
// // }
// //
// // class Delegate extends SliverPersistentHeaderDelegate {
// //   final Color backgroundColor;
// //   final String _title;
// //
// //   Delegate(this.backgroundColor, this._title, this.maxExtent, this.minExtent);
// //
// //   @override
// //   Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
// //     return Container(
// //       decoration: BoxDecoration(color: backgroundColor, border: Border.all(color: Colors.white)),
// //       child: Center(
// //         child: Text(
// //           _title,
// //           style: TextStyle(
// //             color: Colors.white,
// //             fontSize: 25,
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// //
// //   @override
// //   final double maxExtent;
// //
// //   @override
// //   final double minExtent;
// //
// //   @override
// //   bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
// //     return true;
// //   }
// // }
// //
// // class SliverInput extends StatelessWidget {
// //   const SliverInput({super.key, required this.onTap, required this.maxHeight});
// //
// //   final GestureTapCallback onTap;
// //   final double maxHeight;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return SliverPersistentHeader(
// //       pinned: true,
// //       floating: false,
// //       delegate: InputDelegate(Colors.limeAccent, maxHeight, 170, onTap),
// //     );
// //   }
// // }
// //
// // class InputDelegate extends SliverPersistentHeaderDelegate {
// //   final Color backgroundColor;
// //   final GestureTapCallback onTap;
// //
// //   InputDelegate(this.backgroundColor, this.maxExtent, this.minExtent, this.onTap);
// //
// //   @override
// //   Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
// //     return Container(alignment: Alignment.topLeft, color: backgroundColor, child: TextField()).gestureDetector(
// //       onTap: onTap,
// //     );
// //   }
// //
// //   @override
// //   final double maxExtent;
// //
// //   @override
// //   final double minExtent;
// //
// //   @override
// //   bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
// //     return true;
// //   }
// // }
// //
// // class SliverUsers extends StatelessWidget {
// //   const SliverUsers({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return SliverPersistentHeader(
// //       pinned: true,
// //       floating: false,
// //       delegate: Delegate(Colors.orange, 'пользователи', 70, 70),
// //     );
// //   }
// // }
// //
// // class SliverEmoji extends StatelessWidget {
// //   const SliverEmoji({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return SliverPersistentHeader(
// //       pinned: true,
// //       floating: false,
// //       delegate: Delegate(Colors.purple, 'смайлики', 170, 170),
// //     );
// //   }
// // }
// //
// // class DebugPage extends StatefulWidget {
// //   @override
// //   State<DebugPage> createState() => _DebugPageState();
// // }
// //
// // class _DebugPageState extends State<DebugPage> {
// //   Widget _buildFixedList(Color color, String _text) {
// //     return Container(
// //       color: color,
// //       child: Center(
// //         child: Text(
// //           _text,
// //           style: TextStyle(color: Colors.white, fontSize: 25),
// //         ),
// //       ),
// //     );
// //   }
// //
// //   int adv = 0;
// //   var keys = [
// //     GlobalKey(),
// //     GlobalKey(),
// //     GlobalKey(),
// //     GlobalKey(),
// //   ];
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Color(0xFFEDF2F8),
// //       body: CustomScrollView(
// //         slivers: <Widget>[
// //           SliverHeader(key: keys[0]),
// //           SliverChat(
// //               key: keys[1],
// //               maxHeight: MediaQuery.of(context).size.height -
// //                   60 -
// //                   (adv == 0
// //                       ? 0
// //                       : adv == 1
// //                           ? 70
// //                           : 170) -
// //                   150),
// //           // SliverAppBar(
// //           //   title: Text('Flutter Slivers Demo',style:
// //           //   TextStyle(fontSize: 25,
// //           //       fontWeight: FontWeight.bold,
// //           //       color: Colors.white),),
// //           //   backgroundColor: Color(0xFFEDF2F8),
// //           //   expandedHeight: 200,
// //           //   flexibleSpace: FlexibleSpaceBar(
// //           //     background: Image.network(
// //           //         "https://images.unsplash.com/photo-1603785608232-44c43cdc0d70?ixlib=rb-1.2.1&"
// //           //             "ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDY4fEo5eXJQYUhYUlFZfHxlbnwwfHx8&auto=format&"
// //           //             "fit=crop&w=500&q=60",
// //           //         fit: BoxFit.cover),
// //           //   ),
// //           // ),
// //           if (adv == 1) SliverUsers(),
// //           if (adv == 2) SliverEmoji(),
// //           SliverInput(
// //             key: keys[3],
// //             onTap: () => setState(() {
// //               if (adv < 2) {
// //                 adv++;
// //               } else {
// //                 adv = 0;
// //               }
// //             }),
// //             maxHeight: MediaQuery.of(context).size.height -
// //                 60 -
// //                 (adv == 0
// //                     ? 0
// //                     : adv == 1
// //                         ? 70
// //                         : 170),
// //           )
// //           // SliverList(
// //           //   delegate: SliverChildListDelegate([
// //           //     Container(
// //           //       margin: EdgeInsets.all(24),
// //           //       child: Form(
// //           //         key: _formKey,
// //           //         child: Column(
// //           //           mainAxisAlignment: MainAxisAlignment.center,
// //           //           children: <Widget>[
// //           //             Text('Add Name', style: TextStyle(fontSize: 22)),
// //           //             _buildName(),
// //           //             SizedBox(height: 16),
// //           //           ],
// //           //         ),
// //           //       ),
// //           //     )
// //           //   ]),
// //           // ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// //
// // class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
// //   SliverAppBarDelegate({required this.minExtent, required this.maxExtent});
// //
// //   @override
// //   final double maxExtent;
// //   @override
// //   final double minExtent;
// //
// //   @override
// //   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
// //     return true;
// //   }
// //
// //   @override
// //   Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
// //     return FlexibleSpaceBar.createSettings(
// //       minExtent: minExtent,
// //       maxExtent: maxExtent,
// //       currentExtent: math.max(minExtent, maxExtent - shrinkOffset),
// //       child: AppBar(
// //         flexibleSpace: const FlexibleSpaceBar(
// //           expandedTitleScale: 1,
// //           title: Text("Hello world"),
// //         ),
// //         elevation: 0,
// //         primary: true,
// //       ),
// //     );
// //   }
// // }
// //
// // class SliverGreenMenuBarDelegate extends SliverPersistentHeaderDelegate {
// //   SliverGreenMenuBarDelegate({required this.minExtent, required this.maxExtent, required this.color});
// //
// //   final Color color;
// //
// //   @override
// //   final double maxExtent;
// //   @override
// //   final double minExtent;
// //
// //   @override
// //   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
// //     return true;
// //   }
// //
// //   @override
// //   Widget build(
// //     BuildContext context,
// //     double shrinkOffset,
// //     bool overlapsContent,
// //   ) {
// //     return FlexibleSpaceBar.createSettings(
// //       maxExtent: maxExtent,
// //       minExtent: minExtent,
// //       currentExtent: math.max(minExtent, maxExtent - shrinkOffset),
// //       isScrolledUnder: true,
// //       child: Column(
// //         children: [
// //           Container(
// //             decoration: BoxDecoration(
// //               color: color,
// //             ),
// //           ),
// //           Text('data')
// //         ],
// //       ),
// //     );
// //   }
// // }

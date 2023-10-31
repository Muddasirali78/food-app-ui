// import 'package:flutter/material.dart';

// class faverate extends StatefulWidget {
//   final List<CartItem> cartItems;
//   const faverate({super.key, required this.cartItems});

//   @override
//   State<faverate> createState() => _faverateState();
// }

// class _faverateState extends State<faverate> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cart'),
//       ),
//       body: ListView.builder(
//         itemCount: cartItems.length,
//         itemBuilder: (context, index) {
//           final item = cartItems[index];
//           return ListTile(
//             title: Text(item.name),
//             subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
//             trailing:trailing: IconButton(
//               icon: Icon(Icons.favorite),
//               color: item.isFavorite ? Colors.red : Colors.grey,
//               onPressed: () {
//                 // Toggle the favorite status when the icon is pressed
//                 item.isFavorite = !item.isFavorite;
//                 setState(() {});
//               // }
//             ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

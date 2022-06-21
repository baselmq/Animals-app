import 'package:flutter/material.dart';

class ShowImages extends StatelessWidget {
  const ShowImages({required String image, Key? key})
      : images = image,
        super(key: key);
  final String images;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(images),
            fit: BoxFit.cover,
          ),
          border: Border.all(color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}

// Expanded showImages({required String image}) {
//   return Expanded(
//     flex: 2,
//     child: Container(
//       margin: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         image:  DecorationImage(
//           image: AssetImage(image),
//           fit: BoxFit.fill,
//         ),
//         border: Border.all(color: Colors.black),
//         borderRadius: const BorderRadius.all(Radius.circular(10)),
//       ),
//     ),
//   );
// }


import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    //required this.controller,
    //required this.onChanged,
  });

  //final TextEditingController controller;
  //final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      //onChanged: onChanged,
      //controller: controller,
      style: const TextStyle(fontSize: 14, color: Colors.white),
      textAlignVertical: TextAlignVertical.center,
      cursorColor: Colors.white,
      cursorWidth: 1.5,
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: const TextStyle(color: Colors.white),

        prefixIcon: const Padding(
          padding: EdgeInsets.all(10),
          child: Icon(Icons.search, color: Colors.white, size: 20),
        ),
        prefixIconConstraints: BoxConstraints.loose(const Size.fromHeight(45)),
        contentPadding: const EdgeInsets.all(14),
        fillColor: Colors.white.withOpacity(0.2),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        errorBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
      ),
    );
  }
}






// TextField(
//       onChanged: onChanged,
//       controller: controller,
//       style: const TextStyle(fontSize: 12),
//       textAlignVertical: TextAlignVertical.center,
//       cursorColor: Colors.black,
//       cursorWidth: 1.5,
//       decoration: InputDecoration(
//         hintText: 'Search',
//         prefixIcon: const Padding(
//           padding: EdgeInsets.all(10),
//           child: Icon(Icons.search, color: Colors.black, size: 20),
//         ),
//         prefixIconConstraints: BoxConstraints.loose(const Size.fromHeight(45)),
//         contentPadding: const EdgeInsets.all(14),
//         fillColor: Colors.black.withOpacity(0.2),
//         filled: true,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(6),
//           borderSide: const BorderSide(
//             color: Colors.black,
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(6),
//           borderSide: const BorderSide(
//             color: Colors.black,
//           ),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(6),
//           borderSide: const BorderSide(
//             color: Colors.black,
//           ),
//         ),
//         errorBorder: InputBorder.none,
//         focusedErrorBorder: InputBorder.none,
//       ),
//     );
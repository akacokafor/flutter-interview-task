import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
            child: TextField(
              cursorHeight: 43.5,
              style:  TextStyle(fontFamily: 'Poppins'),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF0F0F0),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(
                    Icons.location_pin,
                  ),
                  hintText: 'Kiyv, Ukrane',
                  hintStyle: TextStyle(fontFamily: 'Poppins'),
                  suffixIcon: Icon(FeatherIcons.sliders)),
            ),
          );
  }
}
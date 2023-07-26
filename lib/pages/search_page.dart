import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ksi/theme.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: whiteColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(117.0),
        child: AppBar(
          title: Container(
            width: 320,
            height: 44,
            child: CupertinoSearchTextField(
              autofocus: true,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0), 
                  color: whiteColor, 
            ),
            ),
          ),
          backgroundColor: BlueDarkColor,
          elevation: 0,
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back,
            color: whiteColor,))
          ),
      ),
    );
  }
}
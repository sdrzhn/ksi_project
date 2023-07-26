import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ksi/pages/search_page.dart';
import 'package:ksi/theme.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: PreferredSize(
         preferredSize: Size.fromHeight(56.0),
        child: SafeArea(
          top: true,
          child: AppBar(
            backgroundColor: whiteColor,
            elevation: 0,
            title: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchPage()));
              },
              child: Container(
                height: 44,
                width: 375,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: BlueDarkColor,
                    width: 1.2,
                  ),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                        ),
                        Text('Search',
                            style: lightTextStyle.copyWith(
                                fontSize: 14, color: greyColor))
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: BlueDarkColor,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      height: 44,
                      width: 80,
                      child: Center(
                        child: Icon(
                          Icons.search_outlined,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

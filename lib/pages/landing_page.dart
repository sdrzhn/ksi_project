import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ksi/Bussiness_Logic/landing_page_bloc/landing_page_bloc.dart';
import 'package:ksi/theme.dart';

import 'items_page.dart';

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.inventory_2),
    label: 'Items',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.edit),
    label: 'Edit',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.analytics_outlined),
    label: 'Analytics',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.shopping_cart_outlined),
    label: 'Cart',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.more_horiz_outlined),
    label: 'More',
  ),
];

const List<Widget> bottomNavScreen = <Widget>[
  ItemPage(),
  Text('Index 1: Edit'),
  Text('Index 2: Analytics'),
  Text('Index 3: Cart'),
  Text('Index 4: More'),
];



class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LandingPageBloc, LandingPageState>(
      listener: (context, state) {},
      builder: (context, state){
        return Scaffold(
          body: Center(child: bottomNavScreen.elementAt(state.tabIndex)),
          bottomNavigationBar: BottomNavigationBar(
            items: bottomNavItems,
            currentIndex: state.tabIndex,
            selectedItemColor: BlueDarkColor,
            unselectedItemColor:  unselectedIconColor,
            onTap: (index){
              BlocProvider.of<LandingPageBloc>(context)
                  .add(TabChange(tabIndex: index));
            },
            ),
        );
      }
    );
  }
}
import 'package:disenos/widgets/background.dart';
import 'package:disenos/widgets/card_table.dart';
import 'package:disenos/widgets/custom_bottom_navigation.dart';
import 'package:disenos/widgets/page_title.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Background
          Background(),

          _HomeBody()

        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
      // bottomNavigationBar 
   );
  }
}

class _HomeBody extends StatelessWidget {
  // const _HomeBody({
  //   Key? key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //SingleChildScrollView, si el hijo es mas grande que todas las dimensiones va a permitir hacer ScrollView
    return SingleChildScrollView(
      child: Column(
        children: [

          //Titulos
          PageTitle(),

          //Card Table
          CardTable(),

        ],
      ),
    );
  }
}
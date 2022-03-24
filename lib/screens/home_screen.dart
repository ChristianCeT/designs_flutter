import 'package:flutter/material.dart';

import 'package:disenos_flutter/widgets/background.dart';
import 'package:disenos_flutter/widgets/custom_bottom_navigaton.dart';
import 'package:disenos_flutter/widgets/page_title.dart';
import 'package:disenos_flutter/widgets/card_table.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Background(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          //Titles
          PageTitle(),

          //Card Table
          CardTable()
        ],
      ),
    );
  }
}

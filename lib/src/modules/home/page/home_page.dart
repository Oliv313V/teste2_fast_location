import 'package:flutter_fast_location_vaos1/src/shared/colors/app_colors.dart';
import 'package:flutter_fast_location_vaos1/src/shared/components/app_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    redirect(context);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColors.appPageBackground,
        body: SingleChildScrollView(
            child: SafeArea(
          child: Center(
              child: Padding(
            padding: EdgeInsets.only(top: 30, left: 25, right: 25),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.multiple_stop,
                      size: 35,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Fast Location',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 20,
                    top: 20,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFFE0E0E0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: const SearchIsEmpty(),
                      ),
                    ),
                  ),
                ),
                AppButton(
                  label: 'Localizar endereço',
                  action: () {},
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.place,
                        color: Colors.green,
                      ),
                      Text(
                        'Ultimos endereços localizados',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: Text('Aqui terá a lista de endereços'),
                )
              ],
            ),
          )),
        )));
  }

  void redirect(BuildContext context) {
    // ignore: prefer_const_constructors
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('AppRouter.home');
    });
  }
}

class SearchIsEmpty {
  const SearchIsEmpty();
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/src/block/app/app_state.dart';
import 'package:my_app/src/block/app/app_state_bloc.dart';
import 'package:my_app/src/block/app/app_state_event.dart';
import 'package:my_app/src/data/models/AppState/app_state.dart';

import './../components/Drawer.dart';

class HomePage extends StatefulWidget {
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  AppBloc appBloc;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    appBloc = BlocProvider.of<AppBloc>(context);
    GlobalKey<FormState> _homeKey =
        GlobalKey<FormState>(debugLabel: '_homeScreenkey');
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        key: _homeKey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BlocBuilder<AppBloc, AppState>(builder: (context, state) {
                if (state is AppInitialState) {
                  return Text('company, email, password Loading........');
                } else if (state is AppLoadingState) {
                  return Text('AppLoadingState Loading........');
                } else if (state is AppErrorState) {
                  return Text(state.message);
                }

                return Text(state.accessToken);
              }),
              SizedBox(height: 20),
              RawMaterialButton(
                fillColor: Color(0xFF28bbff),
                splashColor: Color(0xFF0386d2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Change state',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                onPressed: () {
                  appBloc.add(
                      ChangeAccessToken(accessToken: 'TEST', context: context));
                },
              ),
            ],
          ),
        ),
        drawer: DrawerComponent(),
      ),
    );
  }
}

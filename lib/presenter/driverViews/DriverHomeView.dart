


import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:ruttaplication/presenter/controllers/driver/driverHomeState.dart';

class DriverHomeView extends StatefulWidget {
  const DriverHomeView({Key ?key}) : super(key: key);

  @override
  _DriverHomeViewState createState() => _DriverHomeViewState();
}

class _DriverHomeViewState extends ModularState<DriverHomeView,DriverHomeState> {
  late Future getAllDrivers;
  @override
  void initState() {
    getAllDrivers = store.fetchAllDrivers();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getAllDrivers,
        builder: (context, snapshot) {
          return Center(
              child: Container(
                child:ScopedBuilder(
                  store: store,
                  onLoading: (context) => Center(child: CircularProgressIndicator()),
                  onError: (context,error)=>Center(child: Text("falhou")),
                  onState: (context,driverModels){
                    return Center(
                      child: Text(driverModels.toString()),
                    );
                  },
                ) ,
              ));
        }
      ),
    );
  }
}

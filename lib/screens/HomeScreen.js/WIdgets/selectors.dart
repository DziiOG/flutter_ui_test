import 'package:flutter/material.dart';
import './DeviceAndToggler.dart';
import '../../../models/room.dart';

class SelectorContainer extends StatelessWidget {
  const SelectorContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          height: (MediaQuery.of(context).size.height * 0.7),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topCenter,
                height: MediaQuery.of(context).size.height * 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                        child: ListView.builder(
                            itemCount: devices.length,
                            itemBuilder: (BuildContext context, int index) {
                              return DeviceAndToggler(
                                device: devices[index],
                              );
                            }))
                  ],
                ),
              ),
              Center(
                child: null,
              ),
            ],
          )),
    );
  }
}

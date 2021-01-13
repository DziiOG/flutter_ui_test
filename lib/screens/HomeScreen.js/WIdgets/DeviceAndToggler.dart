import 'package:flutter/material.dart';
import '../../../models/room.dart';

class DeviceAndToggler extends StatefulWidget {
  final RoomDevice device;
  DeviceAndToggler({this.device});

  @override
  _DeviceAndTogglerState createState() => _DeviceAndTogglerState();
}

class _DeviceAndTogglerState extends State<DeviceAndToggler> {
  //State

  bool _togglerState = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height * 0.6) * 0.16,
      width: (MediaQuery.of(context).size.width),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 2.0, color: Colors.black12),
          bottom: BorderSide(width: 2.0, color: Colors.black12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              widget.device.device,
              style: TextStyle(color: Colors.black87, fontSize: 24),
            ),
            _togglerState
                ? IconButton(
                    icon: Icon(
                      Icons.toggle_on,
                      size: 40,
                      color: Colors.green,
                    ),
                    onPressed: () {
                      _togglerState = !_togglerState;
                      setState(() {});
                    },
                  )
                : IconButton(
                    icon: Icon(Icons.toggle_off, size: 40, color: Colors.grey),
                    onPressed: () {
                      _togglerState = !_togglerState;
                      setState(() {});
                    },
                  )
          ],
        ),
      ),
    );
  }
}

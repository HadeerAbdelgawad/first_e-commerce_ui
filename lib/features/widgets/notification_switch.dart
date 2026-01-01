import 'package:flutter/material.dart';

class NotificationSwitch extends StatefulWidget {
  const NotificationSwitch({super.key});

  @override
  State<NotificationSwitch> createState() => _NotificationSwitchState();
}

class _NotificationSwitchState extends State<NotificationSwitch> {
  bool isSwitchOn = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      activeTrackColor: Color(0xffFF5E00),
      value: isSwitchOn,
      onChanged: (value) {
        setState(() {
          isSwitchOn = value;
        });
      },
    );
  }
}

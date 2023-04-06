import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SampleSwitch extends StatefulWidget {
  const SampleSwitch({super.key});

  @override
  State<SampleSwitch> createState() => _SampleSwitchState();
}

class _SampleSwitchState extends State<SampleSwitch> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: status ? Colors.black : Colors.orange,
        title: const Text('Switch'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Switch(
                activeThumbImage: const NetworkImage(
                    'https://w7.pngwing.com/pngs/163/715/png-transparent-dark-mode-moon-night-forecast-weather-multimedia-solid-px-icon-thumbnail.png'),
                activeColor: Colors.black,
                value: status,
                onChanged: (value) {
                  setState(() {
                    status = !status;
                  });
                },
              ),
              Text(
                status ? "Switch On" : "Switch Off",
              )
            ],
          ),
        ),
      ),
    );
  }
}

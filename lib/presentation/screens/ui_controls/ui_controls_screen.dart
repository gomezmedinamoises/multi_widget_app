import 'package:flutter/material.dart';

class UIControlsScreen extends StatelessWidget {

  static const String name = 'ui_controls_screen';
  
  const UIControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI controls'),
      ),
      body: const _UIControlsView(),
    );
  }
}

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UIControlsViewState extends State<_UIControlsView> {

  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLaunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [

        SwitchListTile(
          title: const Text('Developer mode'),
          subtitle: const Text('Additional controls'),
          value: isDeveloper, 
          onChanged: (value) {
            setState(() {
              isDeveloper = !isDeveloper;
            });
          }
        ),

        ExpansionTile(
          title: const Text('Transport'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Travel in car'),
              value: Transportation.car, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              })
            ),

            RadioListTile(
              title: const Text('By Boat'),
              subtitle: const Text('Travel in boat'),
              value: Transportation.boat, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              })
            ),

            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Travel in plane'),
              value: Transportation.plane, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              })
            ),

            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Travel in submarine'),
              value: Transportation.submarine, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarine;
              })
            )
          ],
        ),

        CheckboxListTile(
          title: const Text('Breakfast?'),
          value: wantsBreakfast, 
          onChanged: ((value) => setState(() {wantsBreakfast = !wantsBreakfast;})
          ),
        ),

        CheckboxListTile(
          title: const Text('Lunch?'),
          value: wantsLaunch, 
          onChanged: ((value) => setState(() {wantsLaunch = !wantsLaunch;})
          ),
        ),


        CheckboxListTile(
          title: const Text('Dinner?'),
          value: wantsDinner, 
          onChanged: ((value) => setState(() {wantsDinner = !wantsDinner;})
          ),
        ),

      ],
    );
  }
}
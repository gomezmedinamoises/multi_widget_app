import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            const ElevatedButton(onPressed: null, child: Text('Elevated Disabled')),
            ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.access_alarms_rounded), label: const Text('Elevated Icon')),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.icon(onPressed: () {}, icon: const Icon(Icons.accessibility_new), label: const Text('Filled I.')),
            OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
            OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.access_time), label: const Text ('Outlined Icon')),
            TextButton(onPressed: () {}, child: const Text('Text Button')),
            TextButton.icon(onPressed: () {}, icon: const Icon(Icons.zoom_out), label: const Text('Text Button Icon')),
            // Custom button
            const CustomButton(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.yard)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.wysiwyg), style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(colors.primary),
              iconColor: const MaterialStatePropertyAll(Colors.white)
            )),
            const CustomGradientButton()




          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hello World', style: TextStyle(color: Colors.white))
          ),
        ),
      ),
    );
  }
}

class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.transparent, Colors.orange])
          ),
          child: InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text('Hello World', style: TextStyle(color: Colors.white))
            ),
          ),
        ),
      ),
    );
  }
}
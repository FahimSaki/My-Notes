import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          // notes logo
          Theme(
            data: Theme.of(context).copyWith(
              dividerTheme: const DividerThemeData(color: Colors.transparent),
            ),
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .surface, // Use your drawer background color
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/notes_logo_lightmode.png',
                  width: 170,
                  height: 170,
                ),
              ),
            ),
          ),

          // notes tile

          // settings tile
        ],
      ),
    );
  }
}

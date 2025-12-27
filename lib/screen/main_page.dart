import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Nahom Tewodros',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.blueGrey,
              ),
            ),
            Spacer(),
            GFAvatar(
              backgroundImage: AssetImage("assets/images/user.png"),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(20),
              mainAxisSpacing: 30,
              crossAxisSpacing: 10,
              childAspectRatio: 0.5,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                // Grid  1
                InkWell(
                  onTap: () {
                    print('Tapped Box 1');
                    // Navigate or perform action
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_outline,
                          size: 40,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'psychiatrist',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Talk to a specialist',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                              color: Colors.white70,
                               fontSize: 14,
                     ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Grid Item 2
                InkWell(
                  onTap: () {
                    print('Tapped Box 2');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.forum,
                          size: 40,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Forum',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Talk to other people',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Grid Item 3
                InkWell(
                  onTap: () {
                    print('Tapped Box 3');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.tips_and_updates,
                          size: 40,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Tips and suggestion',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'get advice to improve',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Grid Item 4
                InkWell(
                  onTap: () {
                    print('Tapped Box 4');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.logout,
                          size: 40,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Logout',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Sign out',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

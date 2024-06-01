import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/profile/component/customshape.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              painter: HeaderCurvedContainer(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 35.0,
                      letterSpacing: 1.5,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.width / 2,
                  padding: const EdgeInsets.all(10.0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/I_1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Sanyam Sanjay Kudale ",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                const Text(
                  "App Developer",
                  style: TextStyle(fontSize: 15.0),
                ),
                const SizedBox(height: 5),
                const ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Email"),
                  subtitle: Text("sanyamkudale@gmail.com"),
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Phone"),
                  subtitle: Text("9322720904"),
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.location_on_rounded),
                  title: Text("Address"),
                  subtitle: Text(
                    "At.Post.Vyajwadi Tal. Wai Dist. Satara",
                  ),
                ),
                const Divider(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

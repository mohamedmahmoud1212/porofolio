import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class portofolio extends StatefulWidget {
  const portofolio({super.key});

  @override
  State<portofolio> createState() => _portofolioState();
}

class _portofolioState extends State<portofolio> {
  // List<String> url=["","https://github.com/mohamedmahmoud1212",""];
  final Uri _url =
      Uri.parse("https://www.linkedin.com/in/محمد-محمود-b84291210");
  final Uri _url1 = Uri.parse("https://github.com/mohamedmahmoud1212");
  final Uri _url2 = Uri.parse("https://www.facebook.com/profile.php?id=100028837565557&locale=ar_AR");

  Future<void> _launchLinkd() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  Future<void> _launchGit() async {
    if (!await launchUrl(_url1)) {
      throw Exception('Could not launch $_url1');
    }
  }
  Future<void> _launchFace() async {
    if (!await launchUrl(_url2)) {
      throw Exception('Could not launch $_url2');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(180)),
                child: CircleAvatar(
                  radius: 110,
                  child: Image.asset("assets/Screenshot 2024-10-06 134902.png"),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      '''Hi, I'am Mohamed ''',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Container(
                    child: Text(
                      ''' i'm a flutter developer , i'm passoinate about 
            Creating  usable digital products
                    ''',
                      style: TextStyle(
                          fontSize: 18, color: Colors.black.withOpacity(0.5)),
                    ),
                  ),
                  Container(
                    width: 200,
                    child: Row(
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.white)),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            onPressed: _launchLinkd,
                            child: Container(
                                height: 70,
                                width: 40,
                                child: Image.asset(
                                  'assets/download.png',
                                  fit: BoxFit.contain,
                                ))),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.white)),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            onPressed: _launchGit,
                            child: Container(
                                height: 70,
                                width: 40,
                                child: Image.asset('assets/download (1).png'))),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Divider(),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(

                height: 60,
                width: 250,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(

                        elevation: 0.5,
                        surfaceTintColor: Colors.white,
                        color: Colors.white,
                        child: Text(" Projects Develped by me ",style: TextStyle(fontSize: 18),)),
                  ],
                ),
              )],
            ),
            SizedBox(height: 15,),
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              height: 250,
              width: 380,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: Image.asset(
                "assets/Screenshot 2024-09-23 205458.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 17,
                ),
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  height: 250,
                  width: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.asset('assets/Screenshot 2024-09-23 205433.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  height: 250,
                  width: 180,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.asset('assets/Screenshot 2024-09-23 205448.png'),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      "Thank You!",
                      style: TextStyle(fontSize: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        ''' Do you have a great idea share . 
 Let's make something amazing together
                    ''',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 48.0),
                      child: ElevatedButton(
                        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white),elevation:WidgetStatePropertyAll(1.5) ),
                          onPressed: _launchFace, child: Text("Get Touch with me")),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                  height: 8,
                ),
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  height: 120,
                  width: 100,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(
                    "assets/macos-big-sur-stock-cold-winter-sedimentary-rocks-night-1920x1080-3767.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}

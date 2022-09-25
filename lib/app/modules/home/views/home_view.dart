import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEC2028),
        elevation: 0,
        title: RichText(
          text: TextSpan(
            text: "Hai, ",
            style: TextStyle(
              fontSize: 20,
            ),
            children: [
              TextSpan(
                text: "Alfian",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
                margin: EdgeInsets.only(right: 20),
                width: 30,
                height: 30,
                child: Image.asset(
                  "assets/icons/qrcode.png",
                  fit: BoxFit.contain,
                )),
          )
        ],
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 170,
              width: Get.width,
              color: Color(0xFFEC2028),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Column(
                    children: [
                      ClipPath(
                        clipper: ClipInfoClass(),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          height: 225,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xFFE52D27),
                                Color(0xFFB31217)
                              ]),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "081290112333",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Image.asset("assets/logo/simpati.png")
                                ],
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Sisa Pulsa Anda",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Rp. 69.000",
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Isi Pulsa",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.amber[400]),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Colors.black,
                              ),
                              SizedBox(height: 12),
                              RichText(
                                text: TextSpan(
                                    text: "Berlaku sampai ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "19 April 2023",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ]),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    "Telkomsel POIN ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 6,
                                      vertical: 2,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    child: Text(
                                      "190",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            StatusCard(
                              title: "Internet",
                              data: "19.09",
                              unit: "GB",
                            ),
                            StatusCard(
                              title: "Telepon",
                              data: "5",
                              unit: "Min",
                            ),
                            StatusCard(
                              title: "SMS",
                              data: "18",
                              unit: "SMS",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12),
                    ],
                  ),
                  Container(
                    height: 7,
                    color: Colors.grey[300],
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              children: [
                                SizedBox(height: 20),
                                Text("Kategori Paket",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),),
                              ],
                            ),
                          ),
                          Container(
                            height: 90,
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(color: Color(0xFFE4E5EA))
                              )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconTabs(
                                  status: true,
                                  title: "Beranda",
                                  icon: "home",
                                ),
                                IconTabs(
                                  status: false,
                                  title: "Riwayat",
                                  icon: "history",
                                ),
                                IconTabs(
                                  status: false,
                                  title: "Bantuan",
                                  icon: "hint",
                                ),
                                IconTabs(
                                  status: false,
                                  title: "Inbox",
                                  icon: "message",
                                ),
                                IconTabs(
                                  status: false,
                                  title: "Akun Saya",
                                  icon: "account",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

class IconTabs extends StatelessWidget {
  const IconTabs({
    Key? key,
    required this.status,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final bool status;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: 25,
            child: Image.asset(
              (status == true)
                  ? "assets/icons/$icon-active.png"
                  : "assets/icons/$icon.png",
              fit: BoxFit.contain,
            )),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
            color:
            (status == true) ?
             Color(0xFFEC2028):
             Color(0xFF747D8C),
            fontSize: 11,
          ),
        )
      ],
    );
  }
}

class StatusCard extends StatelessWidget {
  StatusCard(
      {Key? key, required this.title, required this.data, required this.unit})
      : super(key: key);

  final String title;
  final String data;
  final String unit;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: Get.width * 0.25,
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            RichText(
              text: TextSpan(
                  text: data,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFE52D27),
                    fontSize: 22,
                  ),
                  children: [
                    TextSpan(
                      text: " $unit",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 80, size.height);
    path.lineTo(size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

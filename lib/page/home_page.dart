import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/model/dummy_data.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 248, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 234, 248, 255),
        toolbarHeight: 80,
        title: Container(
          padding: const EdgeInsets.all(10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(2),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset('assets/cat.jpg', width: 50)),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hallo Bapakmu',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      'Welcome back',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            ClipRRect(
              child: Container(
                  height: 40,
                  width: 60,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(50),
                          right: Radius.circular(50)),
                      border: Border(
                        left: BorderSide(width: 0.6, color: Colors.indigo),
                        right: BorderSide(width: 0.6, color: Colors.indigo),
                        top: BorderSide(width: 0.6, color: Colors.indigo),
                        bottom: BorderSide(width: 0.6, color: Colors.indigo),
                      )),
                  child: Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.deepPurple[900],
                    fill: 0.5,
                  )),
            )
          ]),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 83, 109, 224),
                      Color.fromARGB(255, 37, 22, 195)
                    ]),
              ),
              padding: const EdgeInsets.all(10),
              width: 350,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.wallet_outlined, color: Colors.white),
                      SizedBox(width: 5),
                      Text(
                        'Your Walet Balance',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        "\$ 98.499.00",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.remove_red_eye_outlined, color: Colors.white),
                      SizedBox(width: 70),
                      Icon(
                        Icons.qr_code_scanner_outlined,
                        color: Colors.white,
                        size: 40,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      cardHeader(Icons.attach_money_sharp, 'Balance'),
                      cardHeader(Icons.ios_share_sharp, 'Send'),
                      cardHeader(Icons.question_mark_sharp, 'Request'),
                      cardHeader(Icons.add_card_rounded, 'Transfer'),
                      cardHeader(Icons.history_outlined, 'Histori'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
              color: Colors.white,
              width: 350,
              height: 200,
              padding: const EdgeInsets.all(12),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Other Service',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        cardService(
                            Icons.table_rows_outlined,
                            'Invoice',
                            Colors.indigo,
                            const Color.fromARGB(131, 176, 187, 255)),
                        cardService(
                            Icons.payments_outlined,
                            'Pay Bils',
                            const Color.fromARGB(255, 235, 189, 8),
                            const Color.fromARGB(195, 246, 253, 163)),
                        cardService(
                            Icons.account_balance_sharp,
                            'Transfer',
                            const Color.fromARGB(255, 163, 67, 67),
                            const Color.fromARGB(255, 248, 241, 241)),
                        cardService(
                            Icons.av_timer,
                            'Savings',
                            Colors.deepPurple,
                            const Color.fromARGB(178, 230, 216, 255)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        cardService(
                            Icons.electric_meter_outlined,
                            'Electricity',
                            const Color.fromARGB(255, 163, 67, 67),
                            const Color.fromARGB(255, 248, 241, 241)),
                        cardService(
                            Icons.movie_creation_rounded,
                            'Movie',
                            Colors.deepPurple,
                            const Color.fromARGB(178, 230, 216, 255)),
                        cardService(
                            Icons.account_balance_wallet_rounded,
                            'Add Money',
                            Colors.indigo,
                            const Color.fromARGB(131, 176, 187, 255)),
                        cardService(
                            Icons.share,
                            'Share',
                            const Color.fromARGB(255, 235, 189, 8),
                            const Color.fromARGB(195, 246, 253, 163)),
                      ],
                    )
                  ])),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          width: 380,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Recent Activity',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[900],
                      fontWeight: FontWeight.w400)),
              const Row(
                children: [
                  Text('See all',
                      style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 58, 167, 244))),
                  Icon(
                    Icons.arrow_right_outlined,
                    color: Color.fromARGB(255, 58, 167, 244),
                    size: 15,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 400,
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            itemCount: DummyData().persons.length,
            itemBuilder: (context, index) =>
                cardActivity(context, DummyData().persons[index]),
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 10);
            },
          ),
        )
      ])),
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: SizedBox(
          width: 70,
          height: 70,
          child: FloatingActionButton(
            backgroundColor: const Color.fromARGB(255, 52, 43, 184),
            onPressed: () {},
            child: const Icon(
              Icons.qr_code_scanner_outlined,
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(40)),
        child: BottomAppBar(
          padding: const EdgeInsets.all(5),
          surfaceTintColor: Colors.white,
          color: Colors.white,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  iconSize: 42,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home,
                    color: Colors.indigo,
                  )),
              IconButton(
                  iconSize: 42,
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/userlist',
                    );
                  },
                  icon: Icon(
                    Icons.person_outline_outlined,
                    color: Colors.grey[600],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardActivity(BuildContext context, PersonData personData) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/detail', arguments: personData);
        },
        child: Container(
          padding: const EdgeInsets.all(15),
          color: Colors.white,
          width: 360,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset('assets/cat.jpg', width: 40)),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        personData.name,
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: GoogleFonts.josefinSans().fontFamily,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        personData.subtitle,
                        style: TextStyle(
                            fontSize: 10,
                            color: personData.color,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    personData.price,
                    style: TextStyle(
                        color: personData.color, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    personData.date,
                    style: const TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Column cardService(IconData icons, String title, Color color, Color color2) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: 40,
          height: 40,
          color: color2,
          padding: const EdgeInsets.all(5),
          child: Icon(
            icons,
            color: color,
            size: 20,
          ),
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      Text(
        title,
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 10),
      )
    ],
  );
}

Column cardHeader(IconData icons, String title) {
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Container(
          width: 50,
          height: 50,
          color: Colors.white,
          padding: const EdgeInsets.all(5),
          child: Icon(
            icons,
            color: const Color.fromARGB(255, 8, 9, 88),
            size: 30,
          ),
        ),
      ),
      Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12),
      )
    ],
  );
}

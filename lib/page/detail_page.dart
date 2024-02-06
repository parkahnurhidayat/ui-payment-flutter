import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/model/dummy_data.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final PersonData data =
        ModalRoute.of(context)!.settings.arguments as PersonData;
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(children: [
            const SizedBox(
              height: 20.0,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  'assets/cat.jpg',
                  width: 150,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                        image: NetworkImage(
                            'https://ugm.iaas.or.id/wp-content/uploads/sites/15/2020/09/facebooklogomedianetworksocialicon-1320192913497992427.png'),
                        width: 40,
                      )),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                        image: NetworkImage(
                            'https://cdn4.iconfinder.com/data/icons/logos-brands-7/512/google_logo-google_icongoogle-512.png'),
                        width: 40,
                      )),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                        image: NetworkImage(
                            'https://cdn.icon-icons.com/icons2/2972/PNG/512/twitter_logo_icon_186891.png'),
                        width: 40,
                      )),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                        image: NetworkImage(
                            'https://static-00.iconduck.com/assets.00/linkedin-icon-2048x2048-znrfbdj4.png'),
                        width: 40,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(data.name,
                style: const TextStyle(
                    fontFamily: 'MyFont',
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20.0,
            ),
            Text(data.subtitle),
            Text(data.price,
                style: const TextStyle(
                    fontFamily: 'MyFont',
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20.0,
            ),
            const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 60,
            ),
            const Text(
              'Successful',
            ),
            Text(data.date)
          ]),
        ));
  }
}

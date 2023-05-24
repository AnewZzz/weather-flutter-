import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:intl/intl.dart';
import 'package:weather/model/weather_model.dart';
import 'package:weather/widget/customer_frawer_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int ind = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: CustomeDrawerWidget(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              floating: true,
              snap: true,
              title: RichText(
                  text: WidgetSpan(
                      child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 5,
                children: [
                  Icon(
                    Icons.pin_drop_outlined,
                    color: Colors.white,
                  ),
                  Text('Kathmandu')
                ],
              ))),
              leading: Builder(builder: (context) {
                return InkWell(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Iconify(
                    Bx.menu_alt_left,
                    color: Colors.white,
                  ),
                );
              })),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              // margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80),
                ),
              ),
              // height: MediaQuery.of(context).size.height / 1.75,
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Image.network(
                    weatherList[ind].networkImage,
                    height: 200,
                    width: 200,
                    // errorBuilder: (context, error, stackTrace) {
                    //   return Image.asset(
                    //     AssetPath.logo,
                    //     height: 200,
                    //     width: 200,
                    //   );
                    // },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    weatherList[ind].temperature,
                    style: TextStyle(fontSize: 55),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    weatherList[ind].weatherType,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    DateFormat('EEEE, dd MMM')
                        .format(weatherList[ind].dateTime),
                    style:
                        // Theme.of(context).textTheme.labelSmall,

                        TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '${weatherList.length} days',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),

            SizedBox(
              height: 180,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  primary: false,
                  itemCount: weatherList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          ind = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 7.5),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            color: ind == index ? Colors.blue : null,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: Colors.grey,
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              weatherList[index].temperature,
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Image.network(
                              weatherList[index].networkImage,
                              height: 50,
                              width: 50,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              DateFormat('hh : mm')
                                  .format(weatherList[index].dateTime),
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
            // Text('data')

            // ...List.generate(
            //     200,
            //     (index) => Text(
            //           'data $index',
            //           style: TextStyle(color: Colors.white),
            //         ))
          ]))
        ],
      ),
    );
  }
}

import 'package:enna_login/constants/constants.dart';
import 'package:enna_login/data/restaurant_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: blue,
          child: TabBar(
            indicatorColor: blue,
            tabs: <Widget>[
              Container(
                color: blue,
                width: MediaQuery.of(context).size.width,
                // width:double.infinity,
                child: const Tab(
                  child: Text(
                    "CONTACTS",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const Tab(
                child: Text(
                  "BUSINESSES",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            const SizedBox(width: 20, height: 80),
            const Icon(
              Icons.arrow_back_ios,
              size: 18,
              color: Color(0xA6000000),
            ),
            const SizedBox(width: 15),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(2),
              ),
              height: 45,
              width: 300,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  suffixIcon: Container(
                    padding: EdgeInsets.all(14),
                    width: 3,
                    height: 3,
                    child: Image.asset(
                      'assets/images/search.png',
                      color: Colors.grey,

                      // IconButton(
                      //   onPressed: (){},
                      //   icon:Icon(Icons.search)
                    ),
                  ),
                  hintText: 'Search for businesses',
                  hintStyle: const TextStyle(
                    fontSize: 13,
                    color: Color(0xA6000000),
                    fontWeight: FontWeight.w400,
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            'Restaurants',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10),
              itemCount: restaurantList.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 1),
                            color: Colors.black38,
                            blurRadius: 3,
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            restaurantList[index].restaurantsName,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            restaurantList[index].category,
                            style: const TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.person,
                                      size: 17, color: Colors.grey),
                                  const SizedBox(width: 5),
                                  Text(
                                    restaurantList[index].userName,
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.call,
                                    color: Colors.grey,
                                    size: 17,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    restaurantList[index].teleNumber,
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Boxicons.bx_mobile,
                                      color: Colors.grey, size: 17),
                                  const SizedBox(width: 5),
                                  Text(
                                    restaurantList[index].mobNumber,
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.email,
                                          color: Colors.grey, size: 17),
                                      const SizedBox(width: 5),
                                      Text(
                                        restaurantList[index].email,
                                        style:
                                            const TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: [
                                      const Icon(
                                        MdiIcons.web,
                                        size: 17,
                                        color: Colors.grey,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        restaurantList[index].webSite,
                                        style:
                                            const TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: blue,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                padding: EdgeInsets.all(8),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.call,
                                      size: 16,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 7),
                                    Text(
                                      'Call',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}

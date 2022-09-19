import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tuters/Data/pupblicData.dart';

class acount extends StatefulWidget {
  const acount({Key? key}) : super(key: key);

  @override
  State<acount> createState() => _acountState();
}

class _acountState extends State<acount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            child: UserName("Ahmed Zeyad"),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          Expanded(
              child: ListView(
            children: [
// 
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Icon(
                      Icons.card_giftcard,
                      color: mainColoe(),
                      size: 30,
                    ),
                    Column(
                      children: [
                        SubTitle("Green"),
                        Text(
                          "0 Pts",
                          style: TextStyle(color: longWordc()),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: mainColoe(),
                      size: 25,
                    )
                  ],
                ),
              ),
              // 
              Container(
                height: 100,
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: longWordc(),
                        blurRadius: 0.01,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: SecondColor(),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: [
                                Icon(
                                  Icons.manage_accounts_outlined,
                                  size: 30,
                                )
                              ],
                            ),
                          ),
                          SubTitle("Profile"),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: SecondColor(),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: [
                                Icon(
                                  Icons.headset_mic_outlined,
                                  size: 30,
                                )
                              ],
                            ),
                          ),
                          SubTitle(
                            "Support",
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: SecondColor(),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: [
                                Icon(
                                  Icons.payment,
                                  size: 30,
                                )
                              ],
                            ),
                          ),
                          SubTitle("Payments"),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: SecondColor(),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: [
                                Icon(
                                  Icons.language,
                                  size: 30,
                                )
                              ],
                            ),
                          ),
                          SubTitle("Language"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: longWordc(),
                        blurRadius: 0.01,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 20, top: 10),
                        child: Row(
                          children: [
                            Text(
                              "Toters Cash",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.info_outline,color: mainColoe(),)
                          ],
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 5, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Stack(
                                  children: [
                                    Icon(
                                      Icons.wallet,
                                      size: 30,
                                      color: longWordc(),
                                    )
                                  ],
                                ),
                              ),
                              SubTitle("Wallet"),
                            ],
                          ),
                          Mone(0)
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        color: longWordc(),
                        height: 0.2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 5),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 30,
                                  color: longWordc(),
                                )
                              ],
                            ),
                          ),
                          SubTitle("Add Funds"),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        color: longWordc(),
                        height: 0.2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 5),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: [
                                Icon(
                                  Icons.north_east,
                                  size: 30,
                                  color: longWordc(),
                                )
                              ],
                            ),
                          ),
                          SubTitle("Send Funds"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: longWordc(),
                        blurRadius: 0.01,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          "Promotins",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 5, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Stack(
                                  children: [
                                    Icon(
                                      Icons.monetization_on_outlined,
                                      size: 30,
                                      color: longWordc(),
                                    )
                                  ],
                                ),
                              ),
                              SubTitle("Wallet"),
                            ],
                          ),
                          Mone(0)
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        color: longWordc(),
                        height: 0.2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 5),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: [
                                Icon(
                                  Icons.discount_outlined,
                                  size: 30,
                                  color: longWordc(),
                                )
                              ],
                            ),
                          ),
                          SubTitle("Add Funds"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: longWordc(),
                        blurRadius: 0.01,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          "Account details",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        top: 5,
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: [
                                Icon(
                                  Icons.notifications_none,
                                  size: 30,
                                  color: longWordc(),
                                )
                              ],
                            ),
                          ),
                          SubTitle("Notifications"),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        color: longWordc(),
                        height: 0.2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 5),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 30,
                                  color: longWordc(),
                                )
                              ],
                            ),
                          ),
                          SubTitle("Addresses"),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        color: longWordc(),
                        height: 0.2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 5),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  size: 30,
                                  color: longWordc(),
                                )
                              ],
                            ),
                          ),
                          SubTitle("Favorites"),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        color: longWordc(),
                        height: 0.2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 5),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: [
                                Icon(
                                  Icons.display_settings_sharp,
                                  size: 30,
                                  color: longWordc(),
                                )
                              ],
                            ),
                          ),
                          SubTitle("Preferences"),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        color: longWordc(),
                        height: 0.2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 5),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: [
                                Icon(
                                  Icons.add_link,
                                  size: 30,
                                  color: longWordc(),
                                )
                              ],
                            ),
                          ),
                          SubTitle("Refer a friend"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: longWordc(),
                        blurRadius: 0.01,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          "Help center",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        top: 5,
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: [
                                Icon(
                                  Icons.headset_mic_outlined,
                                  size: 30,
                                  color: longWordc(),
                                )
                              ],
                            ),
                          ),
                          SubTitle("Get support"),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        color: longWordc(),
                        height: 0.2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 5),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: [
                                Icon(
                                  Icons.message_outlined,
                                  size: 30,
                                  color: longWordc(),
                                )
                              ],
                            ),
                          ),
                          SubTitle("Support Tickets"),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        color: longWordc(),
                        height: 0.2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 5),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: [
                                Icon(
                                  Icons.gavel,
                                  size: 30,
                                  color: longWordc(),
                                )
                              ],
                            ),
                          ),
                          SubTitle("Legal"),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        color: longWordc(),
                        height: 0.2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 5),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: [
                                Icon(
                                  Icons.help_outline,
                                  size: 30,
                                  color: longWordc(),
                                )
                              ],
                            ),
                          ),
                          SubTitle("FAQ"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: longWordc(),
                        blurRadius: 0.01,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 5, right: 20),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Stack(
                              children: [
                                Icon(
                                  Icons.logout_outlined,
                                  size: 30,
                                  color: Colors.red,
                                )
                              ],
                            ),
                          ),
                          RedSubTitle("Sing out"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
        ]),
      ),
    );
  }
}

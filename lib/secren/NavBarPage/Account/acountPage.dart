import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tuters/Data/pupblicData.dart';
import 'package:tuters/costom/chosePage.dart';

import '../../InitPages/login_page.dart';
import '../Home/homepage.dart';

class acount extends StatefulWidget {
  const acount({Key? key}) : super(key: key);

  @override
  State<acount> createState() => _acountState();
}

class _acountState extends State<acount> {

  @override
  Widget build(BuildContext context)
  {    print(user);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            child:user!=null? UserName(user?[0].userName??"uu"):null,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          Expanded(
              child: ListView(
            children: [
              //user point
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child:user==null?null: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.card_giftcard,
                      color: mainColoe(),
                      size: 30,
                    ),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SubTitle("Green"),
                        Text(
                          "${user?[0].point} Pts",
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

              // option
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
                  mainAxisAlignment: user==null?MainAxisAlignment.start:MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if(user==null)SizedBox(width: 30,),

                    //profile
                    Container(
                      child: user==null?null:Column(
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
                    //suppport
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
                    //pament
                    Container(
                      child:user==null?null: Column(
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
                    if(user==null)SizedBox(width: 30,),
                    //language
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

              // Toters Cash
              if(user!=null)Container(
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
                          Mone(user?[0].mone??00)
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

              //Promatios
              if(user!=null)Container(
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
                          Mone(user?[0].mone??00)
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

              //Account detils
              if(user!=null)Container(
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

              //Help center
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
                    //title
                    Container(
                        margin: EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          "Help center",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                    // element

                    if(user!=null) Container(
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
                    if(user!=null) Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        color: longWordc(),
                        height: 0.2,
                      ),
                    ),
                    if(user!=null)Container(
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
                    if(user!=null)Center(
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

              //sing out
              if(user!=null)GestureDetector(
                onTap: (){
                  setState(() {
                    user=null;
                    indexPage=0;
                  });
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) =>  chosePage()));

                },

                child: Container(
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
              ),
              if(user==null)GestureDetector(
                onTap: (){

                  Navigator.of(context).push(MaterialPageRoute(builder: (_) =>  login()));
                },
                child: Container(
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
                                    color: mainColoe(),
                                  )
                                ],
                              ),
                            ),
                            mainSubTitle("log in /Sing up "),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ]),
      ),
    );
  }
}

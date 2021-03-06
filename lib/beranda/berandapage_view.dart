

import 'package:flutter/material.dart';
import 'package:flutter_app/beranda/beranda_gojek_appbar.dart';
import 'package:flutter_app/beranda/beranda_model.dart';
import 'package:flutter_app/constant.dart';

class BerandaPage extends StatefulWidget{
  @override
  _BerandaPageState createState()=> new _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage>{
  List<GojekService> _gojekServiceList=[];

  @override
  void initState() {
    super.initState();

    _gojekServiceList.add(GojekService(Icons.directions_bike, GojekPallete.menuRide, "GO-RIDE"));
    _gojekServiceList.add(GojekService(Icons.local_car_wash, GojekPallete.menuCar, "GO-CAR"));
    _gojekServiceList.add(GojekService(Icons.directions_car, GojekPallete.menuBluebird, "GO-BLUEBIRD"));
    _gojekServiceList.add(GojekService(Icons.restaurant, GojekPallete.menuFood, "GO-FOOD"));
    _gojekServiceList.add(GojekService(Icons.next_week, GojekPallete.menuSend, "GO-SEND"));
    _gojekServiceList.add(GojekService(Icons.local_offer, GojekPallete.menuDeals, "GO-DEALS"));
    _gojekServiceList.add(GojekService(Icons.phonelink_ring, GojekPallete.menuPulsa, "GO-PULSA"));
    _gojekServiceList.add(new GojekService(
        Icons.apps, GojekPallete.menuOther,  "LAINNYA"));
    _gojekServiceList.add(new GojekService(
        Icons.shopping_basket,
        GojekPallete.menuShop,
        "GO-SHOP"));
    _gojekServiceList.add(new GojekService(
       Icons.shopping_cart,
        GojekPallete.menuMart,
        "GO-MART"));
    _gojekServiceList.add(new GojekService(
       Icons.local_play,GojekPallete.menuTix, "GO-TIX"));
  }

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
        child: Scaffold(
          appBar: new GojekAppBar(),
          backgroundColor: GojekPallete.grey,
          body: new Container(
            child: ListView(
              physics: ClampingScrollPhysics(),
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                  color: Colors.white,
                  child: new Column(
                    children: <Widget>[
                      _buildGopayMenu(),
                      _buildGojekServicesMenu()
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
  
  Widget _buildGopayMenu(){
    return new Container(
      height: 120.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [const Color(0xff3164bd),const Color(0xff295cb5)]
        ),
        borderRadius: new BorderRadius.all(new Radius.circular(3.0)),
      ),
      child: new Column(
        children: <Widget>[
          new Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
              ),
              borderRadius:  new BorderRadius.only(
                topLeft: new Radius.circular(3.0),
                topRight: new Radius.circular(3.0),
              )
            ),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "GOPAY",
                  style: new TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontFamily: "NeoSansBold"
                  ),
                ),
                new Container(
                  child: Text("Rp. 120.000",
                    style: new TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "NeoSansBold"
                    ),
                  )
                )
              ],
            ),

          ),
          new Container(
            padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 12.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text('Tap'),
                    ));
                  },
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Image.asset(
                        "assets/icons/icon_transfer.png",
                        width: 32.0,
                        height: 32.0,
                      ),
                      new Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      new Text(
                        "Transfer",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                ),

                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset(
                      "assets/icons/icon_scan.png",
                      width: 32.0,
                      height: 32.0,
                    ),
                    new Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    new Text(
                      "Scan QR",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset(
                      "assets/icons/icon_saldo.png",
                      width: 32.0,
                      height: 32.0,
                    ),
                    new Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    new Text(
                      "Isi Saldo",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset(
                      "assets/icons/icon_menu.png",
                      width: 32.0,
                      height: 32.0,
                    ),
                    new Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    new Text(
                      "Lainnya",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildGojekServicesMenu(){
    return new SizedBox(
      width: double.infinity,
      height: 220.0,
      child: new Container(
        margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: GridView.builder(
            physics: ClampingScrollPhysics(),
            itemCount: _gojekServiceList.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemBuilder: (context, position){
              return _rowGojekService(_gojekServiceList[position]);
            }),
      ),
    );
  }

  Widget _rowGojekService(GojekService gojekService){
    return new Container(
      child: InkWell(
        onTap: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text(gojekService.title),
          ));
        },
        child:         new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              decoration: BoxDecoration(
                  border: Border.all(color: GojekPallete.grey200, width: 1.0),
                  borderRadius: new BorderRadius.all(new Radius.circular(20.0))
              ),
              padding: EdgeInsets.all(12.0),
              child: new Icon(
                gojekService.image,
                color: gojekService.color,
                size: 32.0,
              ),
            ),
            new Padding(padding: EdgeInsets.only(top: 6.0)),
            new Text(gojekService.title, style: new TextStyle(fontSize: 10.0),)
          ],
        ),
      ),
    );
  }

}
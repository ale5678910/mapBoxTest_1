import 'package:flutter_mapbox_navigation/flutter_mapbox_navigation.dart';

class Points{
  final syncroweb = WayPoint(
    name: "Syncroweb",
    latitude: 45.04768730423189,
    longitude: 7.617304701960858,
  );
  final nearSyncroweb = WayPoint(
    name: "nearSyncroweb",
    latitude: 45.04936158986258,
    longitude: 7.618236268998734,
  );

  final gru = WayPoint(
    name: "Le Gru",
    latitude: 45.05495768753128,
    longitude: 7.613323762727203,
  );
  final fermi = WayPoint(
    name: "Fermi",
    latitude: 45.07623426681593,
    longitude: 7.590906612795777,
  );
  final scuola = WayPoint(
    name: "Scuola",
    latitude: 45.06751063111083,
    longitude: 7.585754983726897,
  );
  final point1 = WayPoint(
    name: "point1",
    latitude: 45.050047759836175,
    longitude: 7.615642547144329,
  );
  final point2 = WayPoint(
    name: "point2",
    latitude: 45.052968382533436,
    longitude: 7.615505452818118,
  );
  final point3 = WayPoint(
    name: "point3",
    latitude: 45.05508894482836,
    longitude: 7.615477311315183,
  );
  final point4 = WayPoint(
    name: "point4",
    latitude: 45.05712991176741,
    longitude: 7.615299081824736,
  );
  final point5 = WayPoint(
    name: "point5",
    latitude: 45.059729860653334,
    longitude: 7.613773799636114,
  );
  final point6 = WayPoint(
    name: "point6",
    latitude: 45.06064049681494,
    longitude: 7.6079338855549,
  );
  final point7 = WayPoint(
    name: "point7",
    latitude: 45.06213239149718,
    longitude: 7.60050234580756,
  );
  final point8 = WayPoint(
    name: "point8",
    latitude: 45.06274550035917,
    longitude: 7.5979289198812205,
  );
  final point9 = WayPoint(
    name: "point9",
    latitude: 45.063936519585425,
    longitude: 7.596138396839307,
  );
  final point10 = WayPoint(
    name: "point10",
    latitude: 45.06430487101896,
    longitude: 7.601231826370654,
  );
  final point11 = WayPoint(
    name: "point11",
    latitude: 45.06473636991392,
    longitude: 7.60588970596914,
  );
  final point12 = WayPoint(
    name: "point12",
    latitude: 45.06681749524626,
    longitude: 7.608132205683285,
  );
  final point13 = WayPoint(
    name: "point13",
    latitude: 45.066774522945316,
    longitude: 7.609479443901904,
  );
  final point14 = WayPoint(
    name: "point14",
    latitude: 45.06781198856371,
    longitude: 7.611443804138649,
  );
  final point15 = WayPoint(
    name: "point15",
    latitude: 45.07042802457406,
    longitude: 7.611168592572688,
  );
  final point16 = WayPoint(
    name: "point16",
    latitude: 45.072212514511754,
    longitude: 7.611100606998593,
  );
  final point17 = WayPoint(
    name: "point17",
    latitude: 45.072796662802645,
    longitude: 7.61350276387836,
  );
  final point18 = WayPoint(
    name: "point18",
    latitude: 45.075957361543786,
    longitude: 7.614613194904704,
  );
  final point19 = WayPoint(
    name: "point19",
    latitude: 45.07834177301438,
    longitude: 7.614647187689203,
  );
  final point20 = WayPoint(
    name: "point20",
    latitude: 45.082230230600196,
    longitude: 7.614613194902153,
  );
  final point21 = WayPoint(
    name: "point21",
    latitude: 45.08609078552279,
    longitude: 7.6145131540311315,
  );
  final point22 = WayPoint(
    name: "point22",
    latitude: 45.0903324362751,
    longitude: 7.6151743057334835,
  );
  final point23 = WayPoint(
    name: "point23",
    latitude: 45.09220962137922,
    longitude: 7.616496609153288,
  );
  final point24 = WayPoint(
    name: "point24",
    latitude: 45.095020210153905,
    longitude: 7.620089824890041,
  );
  final point25 = WayPoint(
    name: "point25",
    latitude: 45.09620731261413,
    longitude: 7.625680868606154,
  );
  final point26 = WayPoint(
    name: "point26",
    latitude: 45.09311635946466,
    longitude: 7.6338123153028,
  );
  final point27 = WayPoint(
    name: "point27",
    latitude: 45.091406653405684,
    longitude: 7.639002007858782,
  );
  final point28 = WayPoint(
    name: "point28",
    latitude: 45.088921968673986,
    longitude: 7.646374589542804,
  );
  final point29 = WayPoint(
    name: "point29",
    latitude: 45.08778545263925,
    longitude: 7.649895941007766,
  );
  final point30 = WayPoint(
    name: "point30",
    latitude: 45.08596900951228,
    longitude: 7.655587594760333,
  );

  List<WayPoint> oneToFiveListWaypoint = [];
  List<WayPoint> oneToTenListWaypoint = [];
  List<WayPoint> oneToFifteenListWaypoint = [];
  List<WayPoint> oneToTwelveListWaypoint = [];
  List<WayPoint> oneToTwentyFiveListWaypoint = [];
  List<WayPoint> oneToThirtyListWaypoint = [];

  void fillList(){
    oneToFiveListWaypoint.add(point1);
    oneToFiveListWaypoint.add(point2);
    oneToFiveListWaypoint.add(point3);
    oneToFiveListWaypoint.add(point4);
    oneToFiveListWaypoint.add(point5);

    oneToTenListWaypoint.add(point1);
    oneToTenListWaypoint.add(point2);
    oneToTenListWaypoint.add(point3);
    oneToTenListWaypoint.add(point4);
    oneToTenListWaypoint.add(point5);
    oneToTenListWaypoint.add(point6);
    oneToTenListWaypoint.add(point7);
    oneToTenListWaypoint.add(point8);
    oneToTenListWaypoint.add(point9);
    oneToTenListWaypoint.add(point10);

    oneToFifteenListWaypoint.add(point1);
    oneToFifteenListWaypoint.add(point2);
    oneToFifteenListWaypoint.add(point3);
    oneToFifteenListWaypoint.add(point4);
    oneToFifteenListWaypoint.add(point5);
    oneToFifteenListWaypoint.add(point6);
    oneToFifteenListWaypoint.add(point7);
    oneToFifteenListWaypoint.add(point8);
    oneToFifteenListWaypoint.add(point9);
    oneToFifteenListWaypoint.add(point10);
    oneToFifteenListWaypoint.add(point11);
    oneToFifteenListWaypoint.add(point12);
    oneToFifteenListWaypoint.add(point13);
    oneToFifteenListWaypoint.add(point14);
    oneToFifteenListWaypoint.add(point15);


    oneToTwelveListWaypoint.add(point1);
    oneToTwelveListWaypoint.add(point2);
    oneToTwelveListWaypoint.add(point3);
    oneToTwelveListWaypoint.add(point4);
    oneToTwelveListWaypoint.add(point5);
    oneToTwelveListWaypoint.add(point6);
    oneToTwelveListWaypoint.add(point7);
    oneToTwelveListWaypoint.add(point8);
    oneToTwelveListWaypoint.add(point9);
    oneToTwelveListWaypoint.add(point10);
    oneToTwelveListWaypoint.add(point11);
    oneToTwelveListWaypoint.add(point12);
    oneToTwelveListWaypoint.add(point13);
    oneToTwelveListWaypoint.add(point14);
    oneToTwelveListWaypoint.add(point15);
    oneToTwelveListWaypoint.add(point16);
    oneToTwelveListWaypoint.add(point17);
    oneToTwelveListWaypoint.add(point18);
    oneToTwelveListWaypoint.add(point19);
    oneToTwelveListWaypoint.add(point20);

    oneToTwentyFiveListWaypoint.add(point1);
    oneToTwentyFiveListWaypoint.add(point2);
    oneToTwentyFiveListWaypoint.add(point3);
    oneToTwentyFiveListWaypoint.add(point4);
    oneToTwentyFiveListWaypoint.add(point5);
    oneToTwentyFiveListWaypoint.add(point6);
    oneToTwentyFiveListWaypoint.add(point7);
    oneToTwentyFiveListWaypoint.add(point8);
    oneToTwentyFiveListWaypoint.add(point9);
    oneToTwentyFiveListWaypoint.add(point10);
    oneToTwentyFiveListWaypoint.add(point11);
    oneToTwentyFiveListWaypoint.add(point12);
    oneToTwentyFiveListWaypoint.add(point13);
    oneToTwentyFiveListWaypoint.add(point14);
    oneToTwentyFiveListWaypoint.add(point15);
    oneToTwentyFiveListWaypoint.add(point16);
    oneToTwentyFiveListWaypoint.add(point17);
    oneToTwentyFiveListWaypoint.add(point18);
    oneToTwentyFiveListWaypoint.add(point19);
    oneToTwentyFiveListWaypoint.add(point20);
    oneToTwentyFiveListWaypoint.add(point21);
    oneToTwentyFiveListWaypoint.add(point22);
    oneToTwentyFiveListWaypoint.add(point23);
    oneToTwentyFiveListWaypoint.add(point24);
    oneToTwentyFiveListWaypoint.add(point25);

    oneToThirtyListWaypoint.add(point1);
    oneToThirtyListWaypoint.add(point2);
    oneToThirtyListWaypoint.add(point3);
    oneToThirtyListWaypoint.add(point4);
    oneToThirtyListWaypoint.add(point5);
    oneToThirtyListWaypoint.add(point6);
    oneToThirtyListWaypoint.add(point7);
    oneToThirtyListWaypoint.add(point8);
    oneToThirtyListWaypoint.add(point9);
    oneToThirtyListWaypoint.add(point10);
    oneToThirtyListWaypoint.add(point11);
    oneToThirtyListWaypoint.add(point12);
    oneToThirtyListWaypoint.add(point13);
    oneToThirtyListWaypoint.add(point14);
    oneToThirtyListWaypoint.add(point15);
    oneToThirtyListWaypoint.add(point16);
    oneToThirtyListWaypoint.add(point17);
    oneToThirtyListWaypoint.add(point18);
    oneToThirtyListWaypoint.add(point19);
    oneToThirtyListWaypoint.add(point20);
    oneToThirtyListWaypoint.add(point21);
    oneToThirtyListWaypoint.add(point22);
    oneToThirtyListWaypoint.add(point23);
    oneToThirtyListWaypoint.add(point24);
    oneToThirtyListWaypoint.add(point25);
    oneToThirtyListWaypoint.add(point26);
    oneToThirtyListWaypoint.add(point27);
    oneToThirtyListWaypoint.add(point28);
    oneToThirtyListWaypoint.add(point29);
    oneToThirtyListWaypoint.add(point30);
  }
}



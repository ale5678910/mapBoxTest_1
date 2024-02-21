import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapbox_navigation/flutter_mapbox_navigation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:test6/point.dart';

class Test2 extends StatefulWidget {
  const Test2({super.key});

  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  final Points points = Points();

  final bool _isMultipleStop = true;
  MapBoxNavigationViewController? _controller;

  late Position? currentPosition;

  bool _isDonePositionGru = false;
  bool _isDonePositionFermi = false;
  bool _isNavigationPositionGru = false;
  bool _isNavigationPositionFermi = false;

  bool _isSimulateRouteOn = true;

  double? _distanceRemaining, _durationRemaining;
  bool _routeBuilt = false;
  bool _isNavigating = false;

  MapBoxOptions opt = MapBoxOptions(
    language: "en",
    zoom: 13.0,
    tilt: 0.0,
    bearing: 0.0,
    simulateRoute: true,
    animateBuildRoute: true,
    voiceInstructionsEnabled: true,
    bannerInstructionsEnabled: true,
    units: VoiceUnits.metric,
    mode: MapBoxNavigationMode.drivingWithTraffic,
    isOptimized: true,
    allowsUTurnAtWayPoints: true,
    enableRefresh: true,
    longPressDestinationEnabled: false,
  );

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    initialize();
    points.fillList();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  Future<void> initialize() async {
    if (!mounted) return;
    MapBoxNavigation.instance.registerRouteEventListener(_onEmbeddedRouteEvent);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  color: Colors.grey,
                  child: MapBoxNavigationView(
                      options: opt,
                      onRouteEvent: _onEmbeddedRouteEvent,
                      onCreated:
                          (MapBoxNavigationViewController controller) async {
                        _controller = controller;
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Spacer(),
                      const Text("Simulate rute :"),
                      const SizedBox(width: 40),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isSimulateRouteOn = !_isSimulateRouteOn;
                            opt.simulateRoute = _isSimulateRouteOn;
                          });
                        },
                        child: Text(_isSimulateRouteOn ? "On" : "Off"),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      var wayPoints = <WayPoint>[];
                      wayPoints.add(points.syncroweb);
                      wayPoints.add(points.gru);
                      await MapBoxNavigation.instance
                          .startFreeDrive(options: opt);
                    },
                    child: const Text("Free drive"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      var wayPoints = <WayPoint>[];
                      wayPoints.add(points.syncroweb);
                      wayPoints.add(points.gru);
                      /*await MapBoxNavigation.instance
                          .startNavigation(wayPoints: wayPoints, options: opt);*/
                      _controller?.buildRoute(wayPoints: wayPoints);
                      _controller?.startNavigation(options: opt);
                    },
                    child: const Text("Syncroweb - gru"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      var wayPoints = <WayPoint>[];
                      wayPoints.add(points.syncroweb);
                      wayPoints.add(points.nearSyncroweb);
                      await MapBoxNavigation.instance
                          .startNavigation(wayPoints: wayPoints, options: opt);
                    },
                    child: const Text("Syncroweb - near"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      var wayPoints = <WayPoint>[];
                      wayPoints.add(points.syncroweb);
                      wayPoints.add(points.fermi);
                      await MapBoxNavigation.instance
                          .startNavigation(wayPoints: wayPoints, options: opt);
                    },
                    child: const Text("Syncroweb - fermi"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      var wayPoints = <WayPoint>[];
                      wayPoints.add(points.gru);
                      wayPoints.add(points.fermi);
                      await MapBoxNavigation.instance
                          .startNavigation(wayPoints: wayPoints, options: opt);
                    },
                    child: const Text("gru - fermi"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      var wayPoints = <WayPoint>[];
                      wayPoints.add(points.syncroweb);
                      wayPoints.add(points.gru);
                      wayPoints.add(points.fermi);
                      await MapBoxNavigation.instance
                          .startNavigation(wayPoints: wayPoints, options: opt);
                    },
                    child: const Text("syncroweb - gru -fermi"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      var wayPoints = <WayPoint>[];
                      wayPoints.add(points.syncroweb);
                      wayPoints.add(points.fermi);
                      wayPoints.add(points.gru);
                      await MapBoxNavigation.instance
                          .startNavigation(wayPoints: wayPoints, options: opt);
                    },
                    child: const Text("syncroweb - fermi - gru"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      var wayPoints = <WayPoint>[];
                      wayPoints.add(points.syncroweb);
                      wayPoints.add(points.fermi);
                      wayPoints.add(points.gru);
                      wayPoints.add(points.scuola);
                      await MapBoxNavigation.instance
                          .startNavigation(wayPoints: wayPoints, options: opt);
                    },
                    child: const Text("syncroweb - fermi - gru - scuola"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      var wayPoints = <WayPoint>[];
                      wayPoints.add(points.syncroweb);
                      wayPoints.add(points.fermi);
                      wayPoints.add(points.scuola);
                      wayPoints.add(points.gru);
                      await MapBoxNavigation.instance
                          .startNavigation(wayPoints: wayPoints, options: opt);
                    },
                    child: const Text("syncroweb - fermi - scuola - gru"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      await MapBoxNavigation.instance.startNavigation(
                          wayPoints: points.oneToFiveListWaypoint,
                          options: opt);
                    },
                    child: const Text("1 to 5"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      await MapBoxNavigation.instance.startNavigation(
                          wayPoints: points.oneToTenListWaypoint, options: opt);
                    },
                    child: const Text("1 to 10"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      await MapBoxNavigation.instance.startNavigation(
                          wayPoints: points.oneToFifteenListWaypoint,
                          options: opt);
                    },
                    child: const Text("1 to 15"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      await MapBoxNavigation.instance.startNavigation(
                          wayPoints: points.oneToTwelveListWaypoint,
                          options: opt);
                    },
                    child: const Text("1 to 20"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      await MapBoxNavigation.instance.startNavigation(
                          wayPoints: points.oneToTwentyFiveListWaypoint,
                          options: opt);
                    },
                    child: const Text("1 to 25"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      await MapBoxNavigation.instance.startNavigation(
                          wayPoints: points.oneToThirtyListWaypoint,
                          options: opt);
                    },
                    child: const Text("1 to 30"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      Position current = await _determinePosition();
                      debugPrint("${current.latitude} ${current.longitude}");
                    },
                    child: const Text("Position"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Spacer(),
                      SizedBox(
                        width: 200,
                        height: 30,
                        child: ElevatedButton(
                          onPressed: () async {
                            var wayPoints = <WayPoint>[];
                            try {
                              currentPosition = await _determinePosition();
                            } catch (e) {
                              debugPrint("nooooo");
                            }
                            if (currentPosition != null) {
                              final current = WayPoint(
                                  name: "Current",
                                  latitude: currentPosition!.latitude,
                                  longitude: currentPosition!.longitude);
                              wayPoints.add(current);
                              wayPoints.add(points.gru);
                              _isNavigationPositionGru = true;
                              await MapBoxNavigation.instance.startNavigation(
                                  wayPoints: wayPoints, options: opt);
                            } else {
                              debugPrint("nooooo2");
                            }
                          },
                          child: const Text("position - gru"),
                        ),
                      ),
                      Image(
                        image: _isDonePositionGru
                            ? const AssetImage('assets/done.png')
                            : const AssetImage('assets/not_done.png'),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Spacer(),
                      SizedBox(
                        width: 200,
                        height: 30,
                        child: ElevatedButton(
                          onPressed: () async {
                            var wayPoints = <WayPoint>[];
                            try {
                              currentPosition = await _determinePosition();
                            } catch (e) {
                              debugPrint("nooooo");
                            }
                            if (currentPosition != null) {
                              final current = WayPoint(
                                  name: "Current",
                                  latitude: currentPosition!.latitude,
                                  longitude: currentPosition!.longitude);
                              wayPoints.add(current);
                              wayPoints.add(points.fermi);
                              _isNavigationPositionFermi = true;
                              await MapBoxNavigation.instance.startNavigation(
                                  wayPoints: wayPoints, options: opt);
                            } else {
                              debugPrint("nooooo2");
                            }
                          },
                          child: const Text("position - fermi"),
                        ),
                      ),
                      Image(
                        image: _isDonePositionFermi
                            ? const AssetImage('assets/done.png')
                            : const AssetImage('assets/not_done.png'),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onEmbeddedRouteEvent(e) async {
    _distanceRemaining = await MapBoxNavigation.instance.getDistanceRemaining();
    _durationRemaining = await MapBoxNavigation.instance.getDurationRemaining();

    switch (e.eventType) {
      case MapBoxEvent.values:
        setState(() {
          debugPrint(
              "values-------------------------------------------------------------------------------------------------------");
        });
      case MapBoxEvent.map_ready:
        debugPrint(
            "map_ready---------------------------------------------------------------------------------------------------------------");
      case MapBoxEvent.progress_change:
        setState(() {
          _isNavigating = true;
          debugPrint(
              "progress_change-------------------------------------------------------------------------------------------------------");
        });
        var progressEvent = e.data as RouteProgressEvent;
        if (progressEvent.currentStepInstruction != null) {}
        break;
      case MapBoxEvent.route_building:
        setState(() {
          debugPrint(
              "route_building-------------------------------------------------------------------------------------------------------");
        });
      case MapBoxEvent.route_built:
        setState(() {
          debugPrint(
              "route_built-------------------------------------------------------------------------------------------------------");
          //_isNavigating = true;
        });
        break;
      case MapBoxEvent.route_build_failed:
        setState(() {});
        break;
      case MapBoxEvent.navigation_running:
        setState(() {
          _isNavigating = true;
          debugPrint(
              "navigation_running-------------------------------------------------------------------------------------------------------");
        });
        break;
      case MapBoxEvent.on_arrival:
        debugPrint(
            "on_arrival-------------------------------------------------------------------------------------------------------");
        debugPrint("case3-");
        if (!_isMultipleStop) {
          debugPrint("case4");
          await Future.delayed(const Duration(seconds: 3));
          await _controller?.finishNavigation();
        } else {
          debugPrint("case1");
          setState(() {
            if (_isNavigationPositionGru) {
              _isDonePositionGru = true;
              _isNavigationPositionGru = false;
            }
            if (_isNavigationPositionFermi) {
              _isDonePositionFermi = true;
              _isNavigationPositionFermi = false;
            }
          });
        }
        break;
      case MapBoxEvent.navigation_finished:
        setState(() {
          debugPrint(
              "navigation_finished-------------------------------------------------------------------------------------------------------");
        });
        debugPrint("case2");
      case MapBoxEvent.navigation_cancelled:
        setState(() {
          debugPrint(
              "navigation_cancelled-------------------------------------------------------------------------------------------------------");
          _isNavigationPositionGru = false;
          _isNavigationPositionFermi = false;
        });
        break;
      default:
        break;
    }
    setState(() {});
  }

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      //se non funziona l'utente deve attivare la navigazione
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return false;
    }
    return true;
  }

  Future<Position> _determinePosition() async {
    final hasPermission = await _handleLocationPermission();
    if (!hasPermission) return Future.error("no pos");
    // Check if location services are enabled
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled return an error message
      return Future.error('Location services are disabled.');
    }
    // Check location permissions
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // If permissions are granted, return the current location
    return await Geolocator.getCurrentPosition();
  }
}

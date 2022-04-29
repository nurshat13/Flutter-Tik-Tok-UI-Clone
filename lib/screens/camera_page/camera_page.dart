import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../../const.dart';
import 'widgets/camera_buttons.dart';
import 'widgets/camera_configurations.dart';

class CameraPage extends StatefulWidget {
  final List<CameraDescription>? cameras;
  const CameraPage({this.cameras, Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(
      widget.cameras![1],
      ResolutionPreset.max,
    );
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return const SizedBox(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              // Camera
              CameraPreview(
                controller,
                child: SafeArea(
                  child: Scaffold(
                    backgroundColor: Colors.transparent,
                    extendBody: true,
                    body: Stack(
                      children: [
                        // appBar
                        AppBar(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          centerTitle: true,
                          leading: IconButton(
                              onPressed: () {
                                controller.dispose();
                                Navigator.pop(context);
                              },
                              icon:
                                  ImageIcon(AssetImage('$kIconWay/Close.png'))),
                          title: Container(
                            width: 80,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(100, 0, 0, 0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('$kIconWay/Double-Tone.png'),
                                const Text("Sounds",
                                    style: TextStyle(
                                      fontFamily: 'ProximaNova',
                                      color: Color(0xffffffff),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        // cameara settings
                        Positioned(
                          top: 15,
                          right: 15,
                          child: Image.asset('$kIconWay/Camera-Settings.png'),
                        ),
                        // camera buttons
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            cameraButtons,
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Camera Configurations
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    cameraConfigurations,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

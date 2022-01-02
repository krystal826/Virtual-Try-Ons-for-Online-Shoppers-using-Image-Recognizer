import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:rwa_deep_ar/rwa_deep_ar.dart';
import 'dart:io' as Platform;

class CameraWithFilterScreen extends StatefulWidget {
  const CameraWithFilterScreen({Key? key}) : super(key: key);

  @override
  _CameraWithFilterScreenState createState() => _CameraWithFilterScreenState();
}

class _CameraWithFilterScreenState extends State<CameraWithFilterScreen> {
  late CameraDeepArController cameraDeepArController;
  String platformVersion = "Unknown";
  int currentPage=0;
  final vp = PageController(viewportFraction: .24);
  Effects currentEffects = Effects.none;
  Filters currentFilters = Filters.none;
  Masks currentMask = Masks.none;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [


            //Deep AR Camera
            CameraDeepAr(
              onCameraReady: (isReady)
              {
                platformVersion = "Camera Status $isReady";
                print(platformVersion);
                setState(() {

                });
              },
              onImageCaptured: (path)
              {
                platformVersion = "Image save at $path";
                print(platformVersion);
                setState(() {

                });
              },
              androidLicenceKey: "931ef2f8a372e1347c3c9f948b1c241c8c135f87ec60999b2b1ed5ac9536b653fd96c5520e2745b6",
              cameraDeepArCallback: (c) async{
                cameraDeepArController = c;
                setState(() {

                });
              },
            ),

            //Face Mask Filters - Image Buttons
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:28.0,right:28.0),
                      child: Expanded(
                        child: FlatButton(
                          child: Icon(Icons.camera_enhance),
                          color: Colors.white54,
                          padding: EdgeInsets.all(15.0),
                          onPressed:()
                            {
                              if(null == cameraDeepArController)
                                {
                                  return;
                                }
                              cameraDeepArController.snapPhoto();
                            },
                        ),
                      ),

                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(8, (page)
                        {
                          bool active = currentPage == page;

                          return Platform.Platform.isIOS
                          //ios app view
                              ? GestureDetector(
                              onTap: ()
                              {
                                currentPage = page;
                                cameraDeepArController.changeMask(page);
                                setState(() {

                                  });
                                },
                              child: AvatarView(
                                radius: active ? 65 : 30,
                                borderColor: Colors.yellow,
                                borderWidth: 2,
                                isOnlyText: false,
                                avatarType: AvatarType.CIRCLE,
                                backgroundColor: Colors.red,
                                imagePath: "assets/ios/${page.toString()}.jpg",
                                placeHolder: const Icon(Icons.person, size:50,),
                                errorWidget: const Icon(Icons.error,size:50,),
                                ),
                              )


                              //android app view
                              :GestureDetector(
                                  onTap: ()
                                  {
                                    currentPage = page;
                                    cameraDeepArController.changeMask(page);
                                    setState(() {

                                    });
                                  },
                                  child: AvatarView(
                                    radius: active ? 45 : 25,
                                    borderColor: Colors.yellow,
                                    borderWidth: 2,
                                    isOnlyText: false,
                                    avatarType: AvatarType.CIRCLE,
                                    backgroundColor: Colors.red,
                                    imagePath: "assets/android/${page.toString()}.jpg",
                                    placeHolder: const Icon(Icons.person, size:50,),
                                    errorWidget: Container(child: Icon(Icons.error,size:50,),),
                                  ),
                            );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

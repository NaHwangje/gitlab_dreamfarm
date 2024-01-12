import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class CamScreen extends StatefulWidget {
  const CamScreen({super.key});

  @override
  State<CamScreen> createState() => _CamScreenState();
}

class _CamScreenState extends State<CamScreen> {
  Future<bool> init() async {
    final resp = await [Permission.camera, Permission.microphone].request();

    final cameraPermission = resp[Permission.camera];
    final micPermission = resp[Permission.microphone];

    if (cameraPermission != PermissionStatus.granted ||
        micPermission != PermissionStatus.granted) {
      throw '카메라 또는 마이크 권한이 없습니다.';
    }
    return true;
  }


  @override
  void initState() {
    super.initState();

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Streaming'),
      ),
      body: FutureBuilder(
        future: init(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          //Future 실행 후 에러 발생 시
          if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString(),
              ),
            );
          }

          //Future 실행 후 아직 데이터가 없을 때 (로딩중)
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          // 이외 모든 상황
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Stack(
                  //children 위젯들을 순서대로 위로 쌓기
                  children: [
                    renderMainView(), // 화면 전체에 상대방 카메라가 찍는 영상 배치하기
                    Align(
                      alignment: Alignment.topLeft,
                      //위 죄측에 내 카메라가 찍는 영상 배치하기
                      child: Container(
                        color: Colors.grey,
                        height: 160,
                        width: 120,
                        child: renderSubView(),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: ElevatedButton( // 뒤로가기 기능 및 채널 퇴장 기능
                  onPressed: () async {
                    if (true) {
                      //연결해제
                    }
                    Navigator.of(context).pop();
                  },
                  child: Text('나가기'),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  renderMainView() {

  }

  renderSubView() {

  }
}

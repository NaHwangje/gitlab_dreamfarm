import 'dart:async';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'package:uuid/uuid.dart';

Future<void> main() async {
  // 외부 MQTT 브로커 주소 및 포트
  final String serverAddress = '192.168.0.15';
  final int serverPort = 1883; // 일반적인 MQTT 포트

  // MQTT 주소 설정
  final String mqttAddress = 'tcp://$serverAddress:$serverPort';

  // UUID 생성
  final uuid = Uuid();
  final clientId = uuid.v4();

  // MQTT 클라이언트 생성
  final client = MqttServerClient(mqttAddress, clientId);

  // 연결 이벤트 핸들러 등록
  client.onConnected = onConnected;
  client.onDisconnected = onDisconnected;

  // MQTT 브로커에 연결
  await client.connect();

  // 구독할 토픽 설정
  const String topic = 'your_topic';
  client.subscribe(topic, MqttQos.exactlyOnce);

  // 메시지 발행
  final builder = MqttClientPayloadBuilder();
  builder.addString('Hello, MQTT!');
  client.publishMessage(topic, MqttQos.exactlyOnce, builder.payload!);

  // 10초 대기 후 연결 종료
  await Future.delayed(Duration(seconds: 10));
  client.disconnect();
}

void onConnected() {
  print('브로커에 연결됨');
}

void onDisconnected() {
  print('브로커에서 연결 해제됨');
}

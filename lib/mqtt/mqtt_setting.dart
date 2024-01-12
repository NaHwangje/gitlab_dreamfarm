import 'package:mqtt_client/mqtt_client.dart';

late final MqttClient client;
final String broker = "livewalk901.iptime.org";
final String topic = "cctv/remote/asda/asdasd/asdas";
final String sensorTopic = "cctv/local";
final int port = 9001;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

class MqttHandler with ChangeNotifier {
  final ValueNotifier<String> data = ValueNotifier<String>("");
  late MqttServerClient client;

  Future<Object> connect() async {
    client = MqttServerClient.withPort("10.0.2.2", 'clientIdentifier', 1883);
    MqttClient client = MqttClient('your_broker_url', 'your_client_id');
    client.logging(on: true)
      ..onConnected = onConnected
      ..onDisconnected = onDisconnected;

    return client;
  }
}

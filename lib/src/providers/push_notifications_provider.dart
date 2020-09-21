import 'dart:async';
import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'dart:async';
class PushNotificationProvider{
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  final _mensajesStreamController = StreamController<String>.broadcast();
  Stream<String> get mensajes=> _mensajesStreamController.stream;

  initNotifications(){
    _firebaseMessaging.requestNotificationPermissions();
    _firebaseMessaging.getToken().then((token) {
      print('===  FCM TOKEN ===');
      print(token);
// eAtbRg2GLsk:APA91bGxrLgTQJ4MppvmAvQS9DmkcTo4jolrylRzw6C7UEWXAGh-_Kps8uT8aioX2cln2C7fTQJbCCPHND5oxF1u2zOWUoioZR-pusKcSXOTNX6Bsy2d9NVYMj7cYvdEHR3CGkVH8j5c
// eAtbRg2GLsk:APA91bGxrLgTQJ4MppvmAvQS9DmkcTo4jolrylRzw6C7UEWXAGh-_Kps8uT8aioX2cln2C7fTQJbCCPHND5oxF1u2zOWUoioZR-pusKcSXOTNX6Bsy2d9NVYMj7cYvdEHR3CGkVH8j5c
    });
    _firebaseMessaging.configure(
        onMessage: (info){
          print('=== ON MESSAGE ===');
          print(info);
          String argumento='no-data';
          if(Platform.isAndroid){
            argumento=info['data']['Tipo de sangre'];
          }
          _mensajesStreamController.sink.add(argumento);
        },

        onLaunch: (info){
          print('=== ON LAUNCH ===');
          print(info);

        },

        onResume: (info){
          print('=== ON RESUME ===');
          print(info);
          final noti=info['data']['Tipo de sangre'];
          _mensajesStreamController.sink.add(noti);


        }
    );
  }
  dispose(){
    _mensajesStreamController?.close();
  }
}
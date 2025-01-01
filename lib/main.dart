import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:notification_course/screen/home.dart';

void main() {
  AwesomeNotifications().initialize(
    null,

    [
      NotificationChannel(
        channelKey: 'basic_channel',
        channelName: 'Basic notification',
        channelDescription: 'Notification channel for basic tests',
        importance: NotificationImportance.Max,
        defaultPrivacy: NotificationPrivacy.Secret,
        enableVibration:true,
        defaultColor: Colors.redAccent,
        channelShowBadge: true,
        enableLights: true,
        playSound: true,
        icon: 'resource://drawable/notification.png',
        soundSource: 'android/app/src/main/res/raw/Notification_Sound.mp3'

          ),
    ],
    debug: true,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'notification',
      theme: ThemeData(     
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,        
      ),
      debugShowCheckedModeBanner: false,
      home:  HomeScreen (),
    );
  }
}


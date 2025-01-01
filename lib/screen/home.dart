import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
  }

  void triggerNotification() {
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 1,
        channelKey: 'basic_channel',
        title: 'Hello!',
        body: 'This is a basic notification.',
        bigPicture:
            'https://media.istockphoto.com/id/2039568836/photo/new-year-2025-countdown-concept.jpg?s=612x612&w=is&k=20&c=1P7gO76fwI8RrxZ3f4aD2CdAQBfrG26PlV85hxUMr5Q=',
        notificationLayout: NotificationLayout.BigPicture,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            const Text(
              'Welcome to the Home Screen!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: triggerNotification,
              child: const Text('Trigger Notification'),
            ),
          ],
        ),
      ),
    );
  }
}

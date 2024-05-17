class NotificationModel {
  String Name;
  String Time;
  String Message;


  NotificationModel({
   // required this.imagePath,
    required this.Name,
    required this.Time,
    required this.Message,

  });
  static List<NotificationModel> patientnoti = [
  NotificationModel(
    Name: 'Scheduled Appointment',
    Time: '12:00 Pm',
    Message: 'Are yor ready to see your Doctor ? '
        '\nyou should be ready to visit Dr. Loai Emad in his clinic today at 4:00 pm',),
    NotificationModel(
      Name: 'Scheduled Appointment',
      Time: '2:00 Pm',
      Message: 'Are yor ready to see your Doctor ? '
          '\nyou should be ready to visit Dr. Mohamed Farag in his clinic tomorrow at 6:00 pm',),
    NotificationModel(
      Name: 'Scheduled Appointment',
      Time: '7:00 Pm',
      Message: 'Are yor ready to see your Doctor ? '
          '\nyou should be ready to visit Dr. Shady Sherif in his clinic tomorrow at 10:00 Am',),
    NotificationModel(
      Name: 'Scheduled Appointment',
      Time: '11:00 Am',
      Message: 'Are yor ready to see your Doctor ? you should be ready to visit Dr. Tarek Elsayed in his clinic today at 2:00 pm',),

  ];
  static List<NotificationModel> doctornoti = [
    NotificationModel(
      Name: 'Scheduled Appointment',
      Time: '12:00 Pm',
      Message: 'Are yor ready to see your Patient ? '
          '\nDont forgrt you have a Scheduled Appointment with Anas Abdelrahman in your clinic today at 4:00 pm',),
    NotificationModel(
      Name: 'Scheduled Appointment',
      Time: '2:00 Pm',
      Message: 'Are yor ready to see your Patient ? '
          '\nDont forgrt you have a Scheduled Appointment with Anas Abdelrahman in your clinic today at 4:00 pm',),
    NotificationModel(
      Name: 'Scheduled Appointment',
      Time: '7:00 Pm',
      Message: 'Are yor ready to see your Patient ? '
          '\nDont forgrt you have a Scheduled Appointment with Anas Abdelrahman in your clinic today at 4:00 pm',),
    NotificationModel(
      Name: 'Scheduled Appointment',
      Time: '11:00 Am',
      Message: 'Are yor ready to see your Patient ? '
          '\nDont forgrt you have a Scheduled Appointment with Anas Abdelrahman in your clinic today at 4:00 pm',),

  ];
}


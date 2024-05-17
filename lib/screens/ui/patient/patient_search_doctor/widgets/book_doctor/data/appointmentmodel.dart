class docAppointmentModel {
  String Time;
  String Minutes;


  docAppointmentModel({
    required this.Time,
    required this.Minutes,
  });

  static List<docAppointmentModel> appointment = [
    docAppointmentModel(
        Time: '10:00 am',
        Minutes: '15  \nMinutes '

    ),
    docAppointmentModel(
        Time: '12:00 pm',
        Minutes: '20  \nMinutes '

    ),
  docAppointmentModel(
  Time: '2:00 pm',
    Minutes: '25  \nMinutes '


  ),
    docAppointmentModel(
      Time: '4:00 pm',
      Minutes: '30  \nMinutes '

    ),
    docAppointmentModel(
        Time: '6:00 pm',
        Minutes: '45  \nMinutes'

    ),
    docAppointmentModel(
        Time: '7:00 pm',
        Minutes: '50  \nMinutes '

    ),

  ];
}
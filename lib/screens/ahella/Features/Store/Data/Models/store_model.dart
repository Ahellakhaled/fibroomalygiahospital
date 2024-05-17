class StoreModel {
  final String name;
  final String description;
  final int price;
  final List<String> images;

  StoreModel({
    required this.name,
    required this.description,
    required this.price,
    required this.images,
  });

  static List<StoreModel> all = [
    ...treatmentEquipment,
    ...physicalTherapy,
    ...durableMedical,
  ];

  static List<StoreModel> treatmentEquipment = [
    StoreModel(
      name: 'Quell fibromyalgia : wearable medical device',
      description:
          'a thin wearable medical device that is inserted into a soft band, a disposable electrode is attached and then the band is placed on the upper calf. It is easy to use, wear and forget technology',
      price: 10000,
      images: [
        'assets/ahella/1-1.png',
        'assets/ahella/1-2.png',
        'assets/ahella/1-3.png',
      ],
    ),
    StoreModel(
      name: 'TWIN STIM PLUS TENS UNIT AND EMS MUSCLE STIMULATOR',
      description:
          'TENS 7000 Digital TENS Unit with Accessories, Includes 16 Pack Electrodes - TENS Unit Muscle Stimulator for Back Pain Relief, General Pain Relief, Neck Pain, Sciatica Pain Relief, Nerve Pain Relief',
      price: 1100,
      images: [
        'assets/ahella/2-1.png',
        'assets/ahella/2-2.png',
        'assets/ahella/2-3.png',
      ],
    ),
    StoreModel(
      name: 'Cervical Neck Traction',
      description:
          'Wearable System Wireless TENS Unit + Muscle Stimulator Combination for Pain Relief, Arthritis, Muscle Conditioning, Muscle Strength',
      price: 780,
      images: [
        'assets/ahella/3-1.png',
        'assets/ahella/3-2.png',
        'assets/ahella/3-3.png',
      ],
    ),
    StoreModel(
      name: 'iReliev Wireless TENS + EMS Therapeutic',
      description:
          'Gideon Cervical Neck Traction Device –Collar Brace Spine Alignment Instant Relief for Chronic Neck and Shoulder Pain – Great Alternate Pain Relieving Re',
      price: 550,
      images: [
        'assets/ahella/4-1.png',
        'assets/ahella/4-2.png',
      ],
    ),
    StoreModel(
      name: 'HAIYUE Red Light Therapy Devices',
      description:
          'Hand Pain Relief Mitten Double Side pad for Sport Pain Fingers',
      price: 2000,
      images: [
        'assets/ahella/5-1.png',
        'assets/ahella/5-2.png',
        'assets/ahella/5-3.png',
      ],
    ),
  ];

  static List<StoreModel> physicalTherapy = [
    StoreModel(
      name: 'Vann medical under desk bike pedal ',
      description:
          'Vaunn Medical Under Desk Bike Pedal Exerciser with Electronic Display for Legs and Arms Workout (Fully Assembled Folding Exercise Pedaler, no Tools Required) ',
      price: 2500,
      images: [
        'assets/ahella/6-1.png',
        'assets/ahella/6-2.png',
        'assets/ahella/6-3.png',
      ],
    ),
    StoreModel(
      name: 'gait belts for sensor with handles widen ',
      description: 'gait belts for senssor with handles widen transfer',
      price: 3000,
      images: [
        'assets/ahella/7-1.png',
        'assets/ahella/7-2.png',
        'assets/ahella/7-3.png',
      ],
    ),
    StoreModel(
      name: 'PowerStep UltraFlexx Foot Rocker',
      description:
          'Foot and Calf Stretching, Pain Relief for Plantar Fasciitis, Achilles Tendonitis, Shin Splints, Increased Flexibility & Strength',
      price: 1600,
      images: [
        'assets/ahella/8-1.png',
        'assets/ahella/8-2.png',
        'assets/ahella/8-3.png',
      ],
    ),
    StoreModel(
      name: 'Fanwer Shoulder Pulley',
      description:
          'Pulleys for Shoulder Rehab Over Door & Shoulder Pulley for Physical Therapy - Exercise Pulleys for Shoulder Alleviate Shoulder Pain and Recovery',
      price: 750,
      images: [
        'assets/ahella/9-1.png',
        'assets/ahella/9-2.png',
        'assets/ahella/9-3.png',
      ],
    ),
  ];

  static List<StoreModel> durableMedical = [
    StoreModel(
      name: 'Adjustable Crutches',
      description:
          'Medline Aluminum Forearm Crutches, 250-lb. Weight Capacity, Tall Adult (5ft. 10in. - 6ft. 6in.), Pack of 2',
      price: 500,
      images: [
        'assets/ahella/10-1.png',
        'assets/ahella/10-2.png',
      ],
    ),
    StoreModel(
      name: 'MagnaSling - Revolutionary Arm Sling',
      description:
          'Easy Single-Handed Application, Adjustable Comfort Fit - Ideal for Post-Surgery, Injury Recovery, and Athletes',
      price: 1000,
      images: [
        'assets/ahella/11-1.png',
        'assets/ahella/11-2.png',
      ],
    ),
    StoreModel(
      name: 'Bicyweel Rollator Walkers for Seniors',
      description:
          'Ultra Folding Rollator Walker with Seat 10" Front TPU Soft Wheels, Medical Rollator Walker with Comfort Handles and Foam Padded Backrest & Durable Brakes (Blue)',
      price: 18000,
      images: [
        'assets/ahella/12-1.png',
        'assets/ahella/12-2.png',
      ],
    ),
    StoreModel(
      name: 'Medical Foot Step Stool',
      description: 'for Elderly,Lightweight Metal Bed Foot Stool',
      price: 1500,
      images: [
        'assets/ahella/13-1.png',
        'assets/ahella/13-2.png',
        'assets/ahella/13-3.png',
      ],
    ),
  ];
}

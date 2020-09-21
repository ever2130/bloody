import 'package:google_maps_flutter/google_maps_flutter.dart';

class Coffee {
  String shopName;
  String address;
  String description;
  String thumbNail;
  LatLng locationCoords;

  Coffee(
      {this.shopName,
        this.address,
        this.description,
        this.thumbNail,
        this.locationCoords});
}

final List<Coffee> coffeeShops = [
  Coffee(
      shopName: 'Fundacion Hematologica',
      address: 'Calle. 86 #47-33',
      description:
      'Comprometidos en la misión de salvar vidas humanas brindando a nuestra comunidad sangre segura en tiempo y forma.',
      locationCoords: LatLng(11.0034785,-74.8218745),
      thumbNail: 'https://bdbloody.000webhostapp.com/Fotos/fundacion.png'
  ),
  Coffee(
      shopName: 'Banco Nacional De Sangre',
      address: 'Cra. 50 #80-192',
      description:
      'Somos la unidad de la Cruz Roja Colombiana que promueve la cultura de donación de sangre responsable.',
      locationCoords: LatLng(11.0023824,-74.8142487),
      thumbNail: 'https://bdbloody.000webhostapp.com/Fotos/Banco.PNG'
  ),
  Coffee(
      shopName: 'Hospital Metropolitano',
      address: 'Cra. 42F #75B-18',
      description:
      'Institución dedicada a proporcionar asistencia médico-sanitaria preventiva y curativa de alta calidad.',
      locationCoords: LatLng(10.9928882,-74.8120601),
      thumbNail: 'https://bdbloody.000webhostapp.com/Fotos/hospital%20U.png'
  ),
  Coffee(
      shopName: 'Banco De Sangre',
      address: 'a 72-217, Av. Cuartel #72-117',
      description:
      'Somos la unidad de la Cruz Roja Colombiana que promueve la cultura de donación de sangre responsable.',
      locationCoords: LatLng(10.9927346,-74.808152),
      thumbNail: 'https://bdbloody.000webhostapp.com/Fotos/banco%202.jpg'
  ),
  Coffee(
      shopName: 'Clínica El Prado',
      address: 'Calle. 59 #50-10',
      description:
      'constituida como sociedad por acciones simplificada y se dedica a actividades de hospitales y clinicas',
      locationCoords: LatLng(10.9918924,-74.7936549),
      thumbNail: 'https://bdbloody.000webhostapp.com/Fotos/prado.jpg'
  ),
  Coffee(
      shopName: 'Hospital universitario Cari',
      address: 'Calle. 57 #23-100',
      description:
      'Empresa social del Estado, prestadora de servicios de salud de Alta Complejidad y Rehabilitación Integral.',
      locationCoords: LatLng(10.9708664,-74.8008465),
      thumbNail: 'https://bdbloody.000webhostapp.com/Fotos/cari.jpg'
  )
];
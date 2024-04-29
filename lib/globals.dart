import 'package:actividad_4_flutter/models/city.dart';
import 'package:actividad_4_flutter/models/viaje.dart';

List<City> ciudades = [
    City(tag: "City1", name: "Lima", image: "Image1.png", country: "Peru", info: "Lima es la capital de Perú ubicada en la árida costa del Pacífico del Pese a que su centro colonial se conserva, es una desbordante metrópolis y una de las ciudades más grandes de Sudamérica. El Museo Larco alberga una colección de arte precolombino y el Museo de la Nación recorre la historia de las civilizaciones antiguas de Perú. La Plaza de Armas y la catedral del siglo XVI son el núcleo del antiguo centro de Lima."),
    City(tag: "City2", name: "Barcelona", image: "Image2.png", country: "España", info: "Barcelona, la capital cosmopolita de la región de Cataluña en España, es conocida por su arte y arquitectura. La fantástica iglesia de la Sagrada Familia y otros hitos modernistas diseñados por Antoni Gaudí adornan la ciudad. El Museo Picasso y la Fundación Joan Miró muestran el arte moderno de los artistas que dan origen a sus nombres. El Museo de Historia de Barcelona (MUHBA) incluye varios sitios arqueológicos romanos."),
    City(tag: "City3", name: "Sydney", image: "Image3.png", country: "Australia", info: "Sydney, la ciudad más grande de Australia, es conocida por su icónica Ópera y su distintiva estructura del puente del puerto de Sydney. Con su extensa costa y playas como Bondi Beach, es un destino popular para los amantes del sol y el surf. El Real Jardín Botánico y el Acuario de Sydney ofrecen experiencias naturales y educativas, mientras que el barrio histórico de The Rocks alberga pubs y tiendas junto a la bahía."),
    City(tag: "City4", name: "Rio de Janeiro", image: "Image4.png", country: "Brasil", info: "Río de Janeiro, conocida como la Ciudad Maravillosa, es famosa por sus impresionantes es, incluido el icónico monte del Pan de Azúcar con teleféricos hasta su cima. La estatua del Cristo Redentor, en la cima del monte Corcovado, ofrece vistas panorámicas de la ciudad y del océano Atlántico. Las playas de Copacabana e Ipanema son lugares populares para relajarse y disfrutar del sol, mientras que el carnaval de Río es famoso en todo el mundo por sus desfiles y festividades."),
    City(tag: "City5", name: "Londres", image: "Image5.png", country: "Reino Unido", info: "Londres, la vibrante capital de Inglaterra, es una ciudad diversa que combina la historia y la modernidad. Los emblemáticos puntos de referencia incluyen el Palacio de Buckingham, el Big Ben y la Torre de Londres, que alberga las joyas de la Corona. Los famosos museos de la ciudad, como el Museo Británico y la Galería Nacional, exhiben una impresionante colección de arte e historia. Los teatros del West End ofrecen una variedad de producciones teatrales y musicales, mientras que los mercados como Camden y Portobello Road brindan una experiencia de compra única."),
    City(tag: "City6", name: "Tokio", image: "Image6.png", country: "Japón", info: "Tokio, la bulliciosa capital de Japón, es una metrópolis futurista y culturalmente rica. Desde rascacielos modernos hasta templos antiguos, ofrece una mezcla única de tradición y tecnología. El Palacio Imperial, hogar del emperador, y el Santuario Meiji son importantes lugares históricos. Shibuya y Harajuku son conocidos por la moda callejera y la cultura pop."),
    City(tag: "City7", name: "Nueva York", image: "Image7.png", country: "Estados Unidos", info: "Nueva York, la ciudad que nunca duerme, es famosa por su horizonte lleno de rascacielos, como el Empire State Building y el One World Trade Center. Times Square y Central Park son lugares icónicos para los visitantes, y la Estatua de la Libertad representa la libertad y la bienvenida a los inmigrantes."),
    City(tag: "City8", name: "París", image: "Image8.png", country: "Francia", info: "París, la Ciudad de la Luz, es conocida por su arte, moda, gastronomía y cultura. La Torre Eiffel, el Louvre y la Catedral de Notre Dame son solo algunos de sus famosos monumentos. Los bulevares arbolados, los cafés al aire libre y los encantadores barrios como Montmartre agregan encanto a esta ciudad."),
    City(tag: "City9", name: "Roma", image: "Image9.png", country: "Italia", info: "Roma, la Ciudad Eterna, es una encrucijada de historia antigua y vida contemporánea. El Coliseo, el Foro Romano y el Vaticano son testigos de su rica historia. La comida italiana auténtica y la pasión por la vida hacen de Roma un destino inolvidable."),
    City(tag: "City10", name: "Dubái", image: "Image10.png", country: "Emiratos Árabes Unidos", info: "Dubái, la ciudad del lujo y la innovación, es conocida por sus impresionantes rascacielos y proyectos arquitectónicos ambiciosos. Desde el Burj Khalifa, el edificio más alto del mundo, hasta sus lujosos centros comerciales y playas, Dubái ofrece una experiencia única en Medio Oriente."),
  ];

List<Viaje> viajes = [
  Viaje(tag: "Viaje1" ,destino: "Lima, Peru", precio: 68.00, fecha: DateTime.now(), state: false)
];
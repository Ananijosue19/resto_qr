import '../models/dish.dart';

final List<Dish> mockDishes = [
  // Entrées
  Dish(
    id: '1',
    name: 'Salade de Chèvre Chaud',
    description: 'Salade verte, chèvre chaud sur toast, noix et miel.',
    price: 3500,
    imageUrl: 'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg',
    category: 'Entrees',
  ),
  Dish(
    id: '1b',
    name: 'Nems aux Légumes',
    description: '4 pièces servies avec salade et menthe fraîche.',
    price: 2500,
    imageUrl: 'https://images.pexels.com/photos/461198/pexels-photo-461198.jpeg',
    category: 'Entrees',
  ),
  Dish(
    id: '1c',
    name: 'Soupe à l\'Oignon',
    description: 'Soupe traditionnelle gratinée au fromage.',
    price: 3000,
    imageUrl: 'https://images.pexels.com/photos/1731535/pexels-photo-1731535.jpeg',
    category: 'Entrees',
  ),

  // Plats
  Dish(
    id: '2',
    name: 'Entrecôte Grillée',
    description: 'Bœuf charolais, frites maison et sauce béarnaise.',
    price: 8500,
    imageUrl: 'https://images.pexels.com/photos/675951/pexels-photo-675951.jpeg',
    category: 'Plats',
  ),
  Dish(
    id: '2b',
    name: 'Poulet Yassa',
    description: 'Poulet mariné au citron et oignons, servi avec riz blanc.',
    price: 5500,
    imageUrl: 'https://images.pexels.com/photos/2338407/pexels-photo-2338407.jpeg',
    category: 'Plats',
  ),
  Dish(
    id: '2c',
    name: 'Burger du Chef',
    description: 'Bœuf, cheddar, bacon, oignons caramélisés et frites.',
    price: 6500,
    imageUrl: 'https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg',
    category: 'Plats',
  ),
  Dish(
    id: '2d',
    name: 'Pâtes Carbonara',
    description: 'Linguine, crème, guanciale et parmesan.',
    price: 4500,
    imageUrl: 'https://images.pexels.com/photos/1437267/pexels-photo-1437267.jpeg',
    category: 'Plats',
  ),

  // Desserts
  Dish(
    id: '3',
    name: 'Tarte Tatin',
    description: 'Pommes caramélisées et crème fraîche normande.',
    price: 2500,
    imageUrl: 'https://images.pexels.com/photos/1126359/pexels-photo-1126359.jpeg',
    category: 'Desserts',
  ),
  Dish(
    id: '3b',
    name: 'Mousse au Chocolat',
    description: 'Chocolat noir 70% et éclats de noisettes.',
    price: 2000,
    imageUrl: 'https://images.pexels.com/photos/6063068/pexels-photo-6063068.jpeg',
    category: 'Desserts',
  ),
  Dish(
    id: '3c',
    name: 'Salade de Fruits',
    description: 'Fruits de saison frais et sirop à la menthe.',
    price: 1500,
    imageUrl: 'https://images.pexels.com/photos/1132047/pexels-photo-1132047.jpeg',
    category: 'Desserts',
  ),

  // Boissons
  Dish(
    id: '4',
    name: 'Vin Rouge - Côte du Rhône',
    description: 'Millésime 2020, fruité et équilibré.',
    price: 18000,
    imageUrl: 'https://images.pexels.com/photos/2912108/pexels-photo-2912108.jpeg',
    category: 'Boissons',
  ),
  Dish(
    id: '4b',
    name: 'Jus de Bissap',
    description: 'Boisson rafraîchissante à l\'hibiscus.',
    price: 1000,
    imageUrl: 'https://images.pexels.com/photos/1233319/pexels-photo-1233319.jpeg',
    category: 'Boissons',
  ),
  Dish(
    id: '4c',
    name: 'Eau Minérale',
    description: 'Bouteille de 1.5L fraîche.',
    price: 500,
    imageUrl: 'https://images.pexels.com/photos/407041/pexels-photo-407041.jpeg',
    category: 'Boissons',
  ),
];

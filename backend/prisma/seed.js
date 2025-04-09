const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

async function main() {
  await prisma.location.createMany({
    data: [
      { name: 'Ba Na Hills', category: 'tourist_spot', lat: 15.9956, lng: 107.9963, description: 'Hill station with cable car, French village, and the famous Golden Bridge.' },
      { name: 'Dragon Bridge', category: 'tourist_spot', lat: 16.0614, lng: 108.2289, description: 'Iconic bridge that breathes fire and water on weekends.' },
      { name: 'My Khe Beach', category: 'tourist_spot', lat: 16.0597, lng: 108.2498, description: 'One of the most beautiful beaches in Vietnam.' },
      { name: 'Marble Mountains', category: 'tourist_spot', lat: 16.0086, lng: 108.2634, description: 'Cluster of marble hills with caves and temples.' },
      { name: 'Linh Ung Pagoda', category: 'tourist_spot', lat: 16.1234, lng: 108.2877, description: 'Home to the tallest Lady Buddha statue in Vietnam.' },
      { name: 'Son Tra Peninsula', category: 'tourist_spot', lat: 16.1235, lng: 108.3030, description: 'Protected nature reserve with beautiful ocean views.' },
      { name: 'Love Bridge', category: 'romantic_spot', lat: 16.0680, lng: 108.2291, description: 'Romantic bridge with love locks and night lights.' },
      { name: 'Helio Night Market', category: 'tourist_spot', lat: 16.0425, lng: 108.2104, description: 'Street food, shopping, and live music.' },
      { name: 'Han Market', category: 'tourist_spot', lat: 16.0721, lng: 108.2242, description: 'Local market with souvenirs, food, and clothes.' },
      { name: 'Sky36 (Skyline Bar)', category: 'restaurant', lat: 16.0736, lng: 108.2231, description: 'Rooftop bar with romantic views and cocktails.' },
      { name: 'Memory Lounge', category: 'restaurant', lat: 16.0713, lng: 108.2245, description: 'Fine dining by the Han River.' },
      { name: 'Bếp Cuốn Restaurant', category: 'restaurant', lat: 16.0769, lng: 108.2232, description: 'Authentic Vietnamese spring rolls and cuisine.' },
      { name: "Pizza 4P's Da Nang", category: 'restaurant', lat: 16.0695, lng: 108.2237, description: 'Famous chain with excellent fusion pizzas.' },
      { name: 'A La Carte Rooftop Bar', category: 'restaurant', lat: 16.0670, lng: 108.2480, description: 'Beach view bar, ideal for sunsets.' },
      { name: 'Nen Restaurant', category: 'restaurant', lat: 16.0640, lng: 108.2105, description: 'Innovative Vietnamese cuisine with storytelling experience.' },
      { name: 'Bà Thôi Seafood', category: 'restaurant', lat: 16.0635, lng: 108.2504, description: 'Local favorite for fresh seafood.' },
      { name: 'Cua Do Restaurant', category: 'restaurant', lat: 16.0623, lng: 108.2521, description: 'Seafood spot near My Khe Beach.' },
      { name: 'Cicilia Sky Bar', category: 'romantic_spot', lat: 16.0669, lng: 108.2485, description: 'Chic rooftop bar with a pool and sunset views.' },
      { name: 'Golden Bridge', category: 'romantic_spot', lat: 15.9995, lng: 107.9967, description: 'Iconic pedestrian bridge held by giant hands.' },
      { name: 'Asia Park – Sun World', category: 'tourist_spot', lat: 16.0434, lng: 108.2186, description: 'Theme park with Ferris wheel and cultural zones.' }
    ]
  });
}

main()
  .then(() => {
    console.log('✨ Seeded Da Nang locations!');
    return prisma.$disconnect();
  })
  .catch((e) => {
    console.error(e);
    process.exit(1);
  });
import { Product } from '../core/models/product.model';
import { Order } from '../core/models/order.model';

export const MOCK_PRODUCTS: Product[] = [
  // ===== FEMALE FRAGRANCES =====
  {
    id: 'f1',
    name: 'Khamrah',
    brand: 'Lattafa',
    gender: 'female',
    scent_family: 'Oriental',
    description: 'A captivating blend of warmth and mystery, Khamrah weaves rich amber with delicate florals for an unforgettable signature.',
    images: ['assets/images/Khamarah-Lattafa.png'],
    sizes: [
      { ml: 30, price: 250, available: true },
      { ml: 50, price: 380, available: true },
      { ml: 100, price: 550, available: true }
    ],
    stock_quantity: 25,
    is_featured: true,
    total_units_sold: 342,
    delivery_days: 3,
    is_new: false,
    scent_notes: {
      top: ['Cinnamon', 'Bergamot', 'Nutmeg'],
      heart: ['Turkish Rose', 'Praline', 'Saffron'],
      base: ['Amber', 'Vanilla', 'Tonka Bean']
    },
    ratings: [
      { user: 'Ama K.', stars: 5, review: 'Absolutely divine. The sillage is incredible and it lasts all day.' },
      { user: 'Nana A.', stars: 4, review: 'Rich and warm. Perfect for evening events.' },
      { user: 'Efua M.', stars: 5, review: 'My signature scent now. Compliments everywhere I go.' }
    ]
  },
  {
    id: 'f2',
    name: 'Hayati',
    brand: 'Lattafa',
    gender: 'female',
    scent_family: 'Floral',
    description: 'An elegant floral composition that captures the essence of femininity with soft petals and creamy sandalwood.',
    images: ['assets/images/Hayati.jpg'],
    sizes: [
      { ml: 30, price: 200, available: true },
      { ml: 50, price: 320, available: true },
      { ml: 100, price: 480, available: true }
    ],
    stock_quantity: 18,
    is_featured: false,
    total_units_sold: 215,
    delivery_days: 3,
    is_new: true,
    scent_notes: {
      top: ['Peony', 'Pink Pepper', 'Pear'],
      heart: ['Rose', 'Jasmine', 'Lily of the Valley'],
      base: ['Sandalwood', 'Musk', 'Cedarwood']
    },
    ratings: [
      { user: 'Adwoa S.', stars: 5, review: 'Light yet sophisticated. Perfect for daily wear.' },
      { user: 'Akua B.', stars: 4, review: 'Beautiful fragrance that evolves throughout the day.' }
    ]
  },
  {
    id: 'f3',
    name: 'Donna Born in Roma',
    brand: 'Valentino',
    gender: 'female',
    scent_family: 'Floral',
    description: 'A couture fragrance blending jasmine grandiflorum with warm vanilla bourbon for modern elegance.',
    images: ['assets/images/Valentino-1.png'],
    sizes: [
      { ml: 30, price: 650, available: true },
      { ml: 50, price: 920, available: true },
      { ml: 100, price: 1350, available: true }
    ],
    stock_quantity: 0,
    is_featured: false,
    total_units_sold: 189,
    delivery_days: 5,
    is_new: false,
    scent_notes: {
      top: ['Italian Lemon', 'Pink Pepper', 'Blackcurrant'],
      heart: ['Jasmine Grandiflorum', 'Turkish Rose', 'Magnolia'],
      base: ['Bourbon Vanilla', 'Cashmeran', 'Woody Notes']
    },
    ratings: [
      { user: 'Abena D.', stars: 5, review: 'Luxurious and long-lasting. Worth every cedi.' },
      { user: 'Serwaa T.', stars: 4, review: 'The vanilla dry-down is heavenly.' }
    ]
  },
  {
    id: 'f4',
    name: 'Latafa Hayati',
    brand: 'Lattafa',
    gender: 'female',
    scent_family: 'Gourmand',
    description: 'An intoxicating gourmand fragrance with creamy notes of caramel and exotic spices for the bold woman.',
    images: ['assets/images/Lattafa-Hayati.png'],
    sizes: [
      { ml: 30, price: 220, available: true },
      { ml: 50, price: 340, available: true },
      { ml: 100, price: 500, available: true }
    ],
    stock_quantity: 30,
    is_featured: false,
    total_units_sold: 156,
    delivery_days: 3,
    is_new: false,
    scent_notes: {
      top: ['Bergamot', 'Apple', 'Saffron'],
      heart: ['Caramel', 'Jasmine', 'Orchid'],
      base: ['Vanilla', 'Amber', 'White Musk']
    },
    ratings: [
      { user: 'Yaa P.', stars: 4, review: 'Sweet but not overwhelming. Great projection.' },
      { user: 'Esi J.', stars: 5, review: 'I get so many compliments wearing this!' }
    ]
  },
  {
    id: 'f5',
    name: '9PM',
    brand: 'Afnan',
    gender: 'female',
    scent_family: 'Oriental',
    description: 'A sophisticated evening fragrance with rich oud and delicate rose that commands attention after dark.',
    images: ['assets/images/9pm-detail.png', 'assets/images/Afnan-9pm.png'],
    sizes: [
      { ml: 30, price: 280, available: true },
      { ml: 50, price: 420, available: true },
      { ml: 100, price: 600, available: true }
    ],
    stock_quantity: 12,
    is_featured: true,
    total_units_sold: 298,
    delivery_days: 3,
    is_new: false,
    scent_notes: {
      top: ['Apple', 'Cinnamon', 'Lavender'],
      heart: ['Rose', 'Iris', 'Orange Blossom'],
      base: ['Vanilla', 'Amber', 'Musk']
    },
    ratings: [
      { user: 'Maame R.', stars: 5, review: 'The best evening perfume in my collection.' },
      { user: 'Akosua L.', stars: 4, review: 'Sensual and warm. Perfect date night scent.' }
    ]
  },
  {
    id: 'f6',
    name: 'Miss Dior',
    brand: 'Dior',
    gender: 'female',
    scent_family: 'Floral',
    description: 'A timeless floral fragrance that embodies elegance and femininity with a fresh bouquet of roses and peony.',
    images: ['assets/images/Miss-Dior.jpg'],
    sizes: [
      { ml: 30, price: 750, available: true },
      { ml: 50, price: 1100, available: true },
      { ml: 100, price: 1600, available: true }
    ],
    stock_quantity: 10,
    is_featured: true,
    total_units_sold: 410,
    delivery_days: 5,
    is_new: true,
    scent_notes: {
      top: ['Blood Orange', 'Mandarin', 'Lily of the Valley'],
      heart: ['Peony', 'Rose', 'Iris'],
      base: ['Musk', 'Rosewood', 'Vanilla']
    },
    ratings: [
      { user: 'Ama S.', stars: 5, review: 'Pure elegance in a bottle. My forever scent.' },
      { user: 'Nana K.', stars: 5, review: 'The rose note is so natural and beautiful.' }
    ]
  },
  {
    id: 'f7',
    name: 'Mon Paris',
    brand: 'Yves Saint Laurent',
    gender: 'female',
    scent_family: 'Floral',
    description: 'A daring and romantic fragrance inspired by the city of love â€” bold, passionate, and utterly modern.',
    images: ['assets/images/Yves-Saint-Laurent-Mon-Paris-Eau-de-Parfum.png'],
    sizes: [
      { ml: 30, price: 680, available: true },
      { ml: 50, price: 980, available: true },
      { ml: 100, price: 1450, available: true }
    ],
    stock_quantity: 14,
    is_featured: false,
    total_units_sold: 328,
    delivery_days: 5,
    is_new: false,
    scent_notes: {
      top: ['Strawberry', 'Raspberry', 'Pear'],
      heart: ['White Peony', 'Datura', 'Jasmine'],
      base: ['White Musk', 'Patchouli', 'Ambroxan']
    },
    ratings: [
      { user: 'Efua R.', stars: 5, review: 'Romantic and sweet. Perfect for date nights.' },
      { user: 'Adwoa M.', stars: 4, review: 'Gorgeous sillage. Lasts all day on my skin.' }
    ]
  },
  {
    id: 'f8',
    name: 'Haze',
    brand: 'Kay Ali',
    gender: 'female',
    scent_family: 'Gourmand',
    description: 'A dreamy gourmand fragrance that wraps you in layers of warm vanilla and exotic spices. Irresistibly cozy.',
    images: ['assets/images/Kay-Ali.png'],
    sizes: [
      { ml: 30, price: 350, available: true },
      { ml: 50, price: 520, available: true },
      { ml: 100, price: 780, available: true }
    ],
    stock_quantity: 8,
    is_featured: false,
    total_units_sold: 195,
    delivery_days: 3,
    is_new: true,
    scent_notes: {
      top: ['Saffron', 'Pink Pepper', 'Bergamot'],
      heart: ['Turkish Rose', 'Praline', 'Jasmine'],
      base: ['Vanilla', 'Amber', 'Sandalwood']
    },
    ratings: [
      { user: 'Akua J.', stars: 5, review: 'Smells heavenly. Warm and addictive.' },
      { user: 'Serwaa B.', stars: 4, review: 'The vanilla dry-down is incredible.' }
    ]
  },
  {
    id: 'f9',
    name: 'Ã‰claire',
    brand: 'Lattafa',
    gender: 'female',
    scent_family: 'Oriental',
    description: 'A radiant oriental composition that balances sweet amber with crisp florals for a luminous, modern scent.',
    images: ['assets/images/Lataffa-Eclaire.jpg'],
    sizes: [
      { ml: 30, price: 230, available: true },
      { ml: 50, price: 350, available: true },
      { ml: 100, price: 520, available: true }
    ],
    stock_quantity: 22,
    is_featured: false,
    total_units_sold: 178,
    delivery_days: 3,
    is_new: false,
    scent_notes: {
      top: ['Bergamot', 'Lemon', 'Pink Pepper'],
      heart: ['Jasmine', 'Orange Blossom', 'Rose'],
      base: ['Amber', 'Musk', 'Cedar']
    },
    ratings: [
      { user: 'Yaa D.', stars: 4, review: 'Light but long-lasting. Great for everyday wear.' },
      { user: 'Esi A.', stars: 5, review: 'Beautiful scent that evolves throughout the day.' }
    ]
  },
  {
    id: 'f10',
    name: 'Orchid',
    brand: 'Zara',
    gender: 'female',
    scent_family: 'Fresh',
    description: 'A vibrant and youthful fresh fragrance that captures the spirit of effortless beauty with floral brightness.',
    images: ['assets/images/Zara-1.png'],
    sizes: [
      { ml: 30, price: 120, available: true },
      { ml: 50, price: 180, available: true },
      { ml: 100, price: 280, available: true }
    ],
    stock_quantity: 35,
    is_featured: false,
    total_units_sold: 520,
    delivery_days: 3,
    is_new: false,
    scent_notes: {
      top: ['Green Apple', 'Lemon', 'Bergamot'],
      heart: ['Orchid', 'Lily', 'Peony'],
      base: ['White Musk', 'Cedar', 'Amber']
    },
    ratings: [
      { user: 'Maame A.', stars: 5, review: 'Affordable luxury. Smells way more expensive than it is.' },
      { user: 'Abena T.', stars: 4, review: 'Fresh and clean. My go-to for the office.' }
    ]
  },
  // ===== MALE FRAGRANCES =====
  {
    id: 'm1',
    name: 'Ombre Nomade',
    brand: 'Louis Vuitton',
    gender: 'male',
    scent_family: 'Woody',
    description: 'An extraordinary oud-based composition that takes you on a journey through desert nights and starlit skies.',
    images: ['assets/images/Ombre-Normade-1.png'],
    sizes: [
      { ml: 30, price: 1800, available: true },
      { ml: 50, price: 2800, available: true },
      { ml: 100, price: 4200, available: true }
    ],
    stock_quantity: 8,
    is_featured: false,
    total_units_sold: 567,
    delivery_days: 5,
    is_new: false,
    scent_notes: {
      top: ['Oud Assafi', 'Incense', 'Raspberry'],
      heart: ['Rose Absolute', 'Geranium', 'Benzoin'],
      base: ['Ambergris', 'Black Agar', 'Mahogany']
    },
    ratings: [
      { user: 'Kwame A.', stars: 5, review: 'Pure luxury in a bottle. The oud is magnificent.' },
      { user: 'Kofi D.', stars: 5, review: 'Every man needs this. Compliment magnet.' },
      { user: 'Yaw E.', stars: 4, review: 'Strong projection. A little goes a long way.' }
    ]
  },
  {
    id: 'm2',
    name: 'Imagination',
    brand: 'Louis Vuitton',
    gender: 'male',
    scent_family: 'Fresh',
    description: 'A visionary citrus-woody creation that pushes boundaries with its unique blend of tea and cedarwood.',
    images: ['assets/images/Imagination-1.png'],
    sizes: [
      { ml: 30, price: 1600, available: true },
      { ml: 50, price: 2500, available: true },
      { ml: 100, price: 3800, available: true }
    ],
    stock_quantity: 5,
    is_featured: false,
    total_units_sold: 423,
    delivery_days: 5,
    is_new: true,
    scent_notes: {
      top: ['Calabrian Bergamot', 'Sicilian Orange', 'Shanghai Tea'],
      heart: ['Cedarwood', 'Orange Blossom', 'Jasmine'],
      base: ['Ambroxan', 'White Musk', 'Tonka Bean']
    },
    ratings: [
      { user: 'Mensah K.', stars: 5, review: 'Fresh and sophisticated. Great for the office.' },
      { user: 'Kwesi B.', stars: 4, review: 'Unique scent profile. Stand out from the crowd.' }
    ]
  },
  {
    id: 'm3',
    name: 'Hawas',
    brand: 'Rasasi',
    gender: 'male',
    scent_family: 'Fresh',
    description: 'A bold aquatic fragrance that embodies masculine energy with ocean breeze and woody depth.',
    images: ['assets/images/Hawas-fire-1.png'],
    sizes: [
      { ml: 30, price: 300, available: true },
      { ml: 50, price: 450, available: true },
      { ml: 100, price: 650, available: true }
    ],
    stock_quantity: 0,
    is_featured: false,
    total_units_sold: 478,
    delivery_days: 3,
    is_new: false,
    scent_notes: {
      top: ['Bergamot', 'Green Apple', 'Cinnamon'],
      heart: ['Marine Notes', 'Ambroxan', 'Silver Sage'],
      base: ['Driftwood', 'Musk', 'Amber']
    },
    ratings: [
      { user: 'Nii A.', stars: 5, review: 'Beast mode performance. Lasts 12+ hours easily.' },
      { user: 'Fiifi M.', stars: 4, review: 'Great blue fragrance. Perfect for Ghana weather.' }
    ]
  },
  {
    id: 'm4',
    name: 'Ombre Leather',
    brand: 'Tom Ford',
    gender: 'male',
    scent_family: 'Woody',
    description: 'A textured and bold leather fragrance that captures rugged American landscapes with refinement.',
    images: ['assets/images/Tomford-1.png'],
    sizes: [
      { ml: 30, price: 900, available: true },
      { ml: 50, price: 1400, available: true },
      { ml: 100, price: 2100, available: true }
    ],
    stock_quantity: 15,
    is_featured: false,
    total_units_sold: 312,
    delivery_days: 5,
    is_new: false,
    scent_notes: {
      top: ['Cardamom', 'Black Leather', 'Clary Sage'],
      heart: ['Jasmine Sambac', 'Floral Notes', 'Leather'],
      base: ['Patchouli', 'Vetiver', 'Moss']
    },
    ratings: [
      { user: 'Kojo S.', stars: 5, review: 'The leather note is perfection. True luxury.' },
      { user: 'Ebo T.', stars: 4, review: 'Sophisticated and mature. A gentleman\'s fragrance.' }
    ]
  },
  {
    id: 'm5',
    name: 'Khamrah Qahwa',
    brand: 'Lattafa',
    gender: 'male',
    scent_family: 'Gourmand',
    description: 'An addictive coffee-infused fragrance blending Arabic qahwa with sweet spices and dark chocolate.',
    images: ['assets/images/Khamra-Qahwa1.jpg'],
    sizes: [
      { ml: 30, price: 260, available: true },
      { ml: 50, price: 390, available: true },
      { ml: 100, price: 560, available: true }
    ],
    stock_quantity: 20,
    is_featured: false,
    total_units_sold: 245,
    delivery_days: 3,
    is_new: false,
    scent_notes: {
      top: ['Coffee', 'Cardamom', 'Nutmeg'],
      heart: ['Dark Chocolate', 'Praline', 'Cinnamon'],
      base: ['Vanilla', 'Sandalwood', 'Benzoin']
    },
    ratings: [
      { user: 'Kwabena R.', stars: 5, review: 'Smells like a luxurious cafÃ©. Addictive scent.' },
      { user: 'Papa K.', stars: 4, review: 'Unique and cozy. Perfect for cool evenings.' }
    ]
  }
];

export const MOCK_ORDERS: Order[] = [
  {
    id: 'ORD-001',
    customer: 'Mensah Edward Sackey',
    email: 'mensah@example.com',
    items: [
      {
        productId: 'm1',
        productName: 'Ombre Nomade',
        brand: 'Louis Vuitton',
        image: 'assets/images/Ombre-Normade-1.png',
        size: 100,
        quantity: 1,
        price: 4200,
        type: 'regular'
      }
    ],
    subtotal: 4200,
    deliveryFee: 100,
    total: 4300,
    status: 'delivered',
    paymentMethod: 'card',
    date: '2026-05-20',
    deliveryDetails: {
      fullName: 'Mensah Edward Sackey',
      town: 'Accra, Greater Accra',
      phone: '+233 24 123 4567'
    },
    estimatedDelivery: '25 May - 27 May'
  },
  {
    id: 'ORD-002',
    customer: 'Ama Koranteng',
    email: 'ama@example.com',
    items: [
      {
        productId: 'f1',
        productName: 'Khamrah',
        brand: 'Lattafa',
        image: 'assets/images/Khamarah-Lattafa.png',
        size: 50,
        quantity: 2,
        price: 380,
        type: 'regular'
      }
    ],
    subtotal: 760,
    deliveryFee: 100,
    total: 860,
    status: 'processing',
    paymentMethod: 'momo',
    date: '2026-05-25',
    deliveryDetails: {
      fullName: 'Ama Koranteng',
      town: 'Kumasi, Ashanti',
      phone: '+233 20 987 6543'
    },
    estimatedDelivery: '28 May - 30 May'
  },
  {
    id: 'ORD-003',
    customer: 'Kwame Asante',
    email: 'kwame@example.com',
    items: [
      {
        productId: 'm4',
        productName: 'Ombre Leather',
        brand: 'Tom Ford',
        image: 'assets/images/Tomford-1.png',
        size: 50,
        quantity: 1,
        price: 1400,
        type: 'regular'
      }
    ],
    subtotal: 1400,
    deliveryFee: 100,
    total: 1500,
    status: 'shipped',
    paymentMethod: 'card',
    date: '2026-05-22',
    deliveryDetails: {
      fullName: 'Kwame Asante',
      town: 'Takoradi, Western',
      phone: '+233 27 555 1234'
    },
    estimatedDelivery: '26 May - 28 May'
  },
  {
    id: 'ORD-004',
    customer: 'Efua Mensah',
    email: 'efua@example.com',
    items: [
      {
        productId: 'f3',
        productName: 'Donna Born in Roma',
        brand: 'Valentino',
        image: 'assets/images/Valentino-1.png',
        size: 100,
        quantity: 1,
        price: 1350,
        type: 'pre_order'
      }
    ],
    subtotal: 1350,
    deliveryFee: 100,
    total: 1450,
    status: 'pre_order',
    paymentMethod: 'momo',
    date: '2026-05-27',
    deliveryDetails: {
      fullName: 'Efua Mensah',
      town: 'Cape Coast, Central',
      phone: '+233 54 321 9876'
    },
    estimatedDelivery: '26 Jun - 28 Jun'
  },
  {
    id: 'ORD-005',
    customer: 'Kofi Boateng',
    email: 'kofi@example.com',
    items: [
      {
        productId: 'm3',
        productName: 'Hawas',
        brand: 'Rasasi',
        image: 'assets/images/Hawas-fire-1.png',
        size: 100,
        quantity: 1,
        price: 650,
        type: 'pre_order'
      },
      {
        productId: 'f5',
        productName: '9PM',
        brand: 'Afnan',
        image: 'assets/images/Afnan-9pm.png',
        size: 50,
        quantity: 1,
        price: 420,
        type: 'regular'
      }
    ],
    subtotal: 1070,
    deliveryFee: 100,
    total: 1170,
    status: 'pending',
    paymentMethod: 'card',
    date: '2026-05-28',
    deliveryDetails: {
      fullName: 'Kofi Boateng',
      town: 'Tema, Greater Accra',
      phone: '+233 26 789 0123'
    },
    estimatedDelivery: '31 May - 2 Jun'
  }
];


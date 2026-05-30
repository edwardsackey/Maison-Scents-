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
      { ml: 30, price: 250 },
      { ml: 50, price: 380 },
      { ml: 100, price: 550 }
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
      { ml: 30, price: 200 },
      { ml: 50, price: 320 },
      { ml: 100, price: 480 }
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
      { ml: 30, price: 650 },
      { ml: 50, price: 920 },
      { ml: 100, price: 1350 }
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
      { ml: 30, price: 220 },
      { ml: 50, price: 340 },
      { ml: 100, price: 500 }
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
    images: ['assets/images/Afnan-9pm.png'],
    sizes: [
      { ml: 30, price: 280 },
      { ml: 50, price: 420 },
      { ml: 100, price: 600 }
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
      { ml: 30, price: 1800 },
      { ml: 50, price: 2800 },
      { ml: 100, price: 4200 }
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
      { ml: 30, price: 1600 },
      { ml: 50, price: 2500 },
      { ml: 100, price: 3800 }
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
      { ml: 30, price: 300 },
      { ml: 50, price: 450 },
      { ml: 100, price: 650 }
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
      { ml: 30, price: 900 },
      { ml: 50, price: 1400 },
      { ml: 100, price: 2100 }
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
      { ml: 30, price: 260 },
      { ml: 50, price: 390 },
      { ml: 100, price: 560 }
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
      { user: 'Kwabena R.', stars: 5, review: 'Smells like a luxurious café. Addictive scent.' },
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

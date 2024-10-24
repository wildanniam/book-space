// Sample event data
final List<Map<String, String>> eventData = [
  {'date': '23 Jul', 'title': 'Roadshow Kampus', 'image': 'images/seminar.jpg'},
  {
    'date': '30 Jul',
    'title': 'Ulang Tahun Zayn',
    'image': 'images/birthday.jpg'
  },
  {
    'date': '20 Sep',
    'title': 'Resepsi P. Niall',
    'image': 'images/wedding-venue.jpg'
  },
];

List<Map<String, dynamic>> eventServices = [
  {
    'title': 'Alat Pesta',
    'description':
        'Penyewaan alat pesta seperti meja, kursi, dan peralatan makan untuk berbagai acara.',
    'image': 'images/alat_pesta.jpg',
    'averagePrice': 2000000, // harga estimasi dalam IDR
    'rating': 4.5,
    'availableFor': ['Pernikahan', 'Ulang Tahun', 'Seminar'],
    'vendorContact': '082123456789',
  },
  {
    'title': 'Hiburan',
    'description':
        'Layanan hiburan seperti live band, DJ, dan performer untuk meramaikan acara.',
    'image': 'images/hiburan.jpg',
    'averagePrice': 5000000, // harga estimasi dalam IDR
    'rating': 4.8,
    'availableFor': ['Pernikahan', 'Festival', 'Acara Kantor'],
    'vendorContact': '082987654321',
  },
  {
    'title': 'Venue',
    'description':
        'Penyewaan tempat acara dengan fasilitas lengkap dan kapasitas sesuai kebutuhan.',
    'image': 'images/venue.jpg',
    'averagePrice': 15000000, // harga estimasi dalam IDR
    'rating': 4.7,
    'availableFor': ['Pernikahan', 'Konferensi', 'Festival'],
    'vendorContact': '081234567890',
  },
  {
    'title': 'Catering',
    'description':
        'Layanan katering dengan pilihan menu variatif untuk memenuhi kebutuhan makanan tamu acara.',
    'image': 'images/catering.jpg',
    'averagePrice': 3500000, // harga estimasi dalam IDR
    'rating': 4.9,
    'availableFor': ['Pernikahan', 'Ulang Tahun', 'Seminar'],
    'vendorContact': '081987654321',
  },
  {
    'title': 'Dekorasi',
    'description':
        'Layanan dekorasi sesuai tema untuk mempercantik venue acara, baik indoor maupun outdoor.',
    'image': 'images/dekorasi.jpg',
    'averagePrice': 4500000, // harga estimasi dalam IDR
    'rating': 4.6,
    'availableFor': ['Pernikahan', 'Ulang Tahun', 'Acara Kantor'],
    'vendorContact': '085123456789',
  },
  {
    'title': 'MC (Master of Ceremony)',
    'description':
        'Penyediaan MC profesional untuk memandu jalannya acara dengan lancar dan meriah.',
    'image': 'images/mc.jpg',
    'averagePrice': 2000000, // harga estimasi dalam IDR
    'rating': 4.7,
    'availableFor': ['Pernikahan', 'Ulang Tahun', 'Konferensi'],
    'vendorContact': '085987654321',
  },
  {
    'title': 'Fotografi & Videografi',
    'description':
        'Layanan dokumentasi profesional dengan fotografer dan videografer berpengalaman untuk mengabadikan momen spesial.',
    'image': 'images/fotografi.jpg',
    'averagePrice': 6000000, // harga estimasi dalam IDR
    'rating': 4.9,
    'availableFor': ['Pernikahan', 'Ulang Tahun', 'Konferensi'],
    'vendorContact': '087123456789',
  },
];

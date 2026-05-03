import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ─── App Entry ────────────────────────────────────────────────────────────────

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seram Malaysia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0A0A0A),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFCC0000),
          surface: Color(0xFF1A1A1A),
        ),
        fontFamily: 'Georgia',
      ),
      home: const HomeScreen(),
    );
  }
}

// ─── Data Model ───────────────────────────────────────────────────────────────

class HorrorMovie {
  final String title;
  final int year;
  final String genre;
  final String director;
  final String synopsis;
  final int scareLevel;
  final String imagePath;
  final Color tagColor;

  const HorrorMovie({
    required this.title,
    required this.year,
    required this.genre,
    required this.director,
    required this.synopsis,
    required this.scareLevel,
    required this.imagePath,
    required this.tagColor,
  });
}

const List<HorrorMovie> movies = [
  HorrorMovie(
    title: 'Munafik',
    year: 2016,
    genre: 'Supernatural',
    director: 'Syamsul Yusof',
    synopsis:
        'A Muslim medical practitioner named Adam struggles with his faith after his wife’s death. When he treats a woman named Maria, he encounters terrifying supernatural disturbances linked to demonic possession and hidden truths.',
    scareLevel: 4,
    imagePath: 'assets/images/munafik.jpg',
    tagColor: Color(0xFFCC0000),
  ),
  HorrorMovie(
    title: 'Dukun',
    year: 2018,
    genre: 'True Events',
    director: 'Dain Said',
    synopsis:
        'Loosely inspired by the real-life Mona Fandey case, the film follows lawyer Karim who defends Diana Dahlan, a shaman accused of murder. As Karim searches for his missing daughter, he uncovers Diana’s dark supernatural powers and sinister rituals.',
    scareLevel: 4,
    imagePath: 'assets/images/dukun.jpg',
    tagColor: Color(0xFF8B0000),
  ),
  HorrorMovie(
    title: 'Jangan Pandang Belakang',
    year: 2007,
    genre: 'Ghost / Thriller',
    director: 'Ahmad Idham',
    synopsis:
        'Darma investigates the mysterious suicide of his fiancée Rose, only to discover she was haunted by a malicious spirit released from a jar. As he and Rose’s twin sister Seri dig deeper, they face terrifying hauntings tied to Malay folklore.',
    scareLevel: 4,
    imagePath: 'assets/images/jangan_pandang_belakang.jpg',
    tagColor: Color(0xFF555555),
  ),
  HorrorMovie(
    title: 'Susuk',
    year: 2008,
    genre: 'Black Magic',
    director: 'Amir Muhammad & Naeim Ghalili',
    synopsis:
        'Soraya, a nurse, turns to the forbidden practice of susuk (charm needles) to gain fame. Meanwhile, diva Suzana uses extreme susuk that requires human lives, leading to murder and cannibalism. Their paths converge in a tale of vanity and corruption.',
    scareLevel: 3,
    imagePath: 'assets/images/susuk.jpg',
    tagColor: Color(0xFF4A0080),
  ),
  HorrorMovie(
    title: 'Penunggang Agama 2',
    year: 2023,
    genre: 'Supernatural',
    director: 'Syafiq Yusof',
    synopsis:
        'Amir and Anna, a married couple, face supernatural disturbances when Amir’s stepmother is possessed. They seek help from Tok Haji, a supposed religious healer, but suspicion grows that he is a charlatan exploiting faith for power.',
    scareLevel: 4,
    imagePath: 'assets/images/penunggang_agama.jpg',
    tagColor: Color(0xFFCC0000),
  ),
  HorrorMovie(
    title: 'The Conjuring',
    year: 2013,
    genre: 'Paranormal',
    director: 'James Wan',
    synopsis:
        'Paranormal investigators Ed and Lorraine Warren help the Perron family, who are terrorized by a dark entity in their Rhode Island farmhouse. Based on alleged real events, the film launched the Conjuring Universe.',
    scareLevel: 5,
    imagePath: 'assets/images/the_conjuring.jpeg',
    tagColor: Color(0xFF006633),
  ),
  HorrorMovie(
    title: 'KKN Desa Penari',
    year: 2022,
    genre: 'Folklore Horror',
    director: 'Awi Suryadi',
    synopsis:
        'Six university students on a community service program in East Java encounter supernatural forces after violating a forbidden forest. They face possession, death, and the wrath of the spirit Badarawuhi.',
    scareLevel: 4,
    imagePath: 'assets/images/kkn_desa_penari.jpg',
    tagColor: Color(0xFF8B4500),
  ),
  HorrorMovie(
    title: 'Dosen Malam',
    year: 2024,
    genre: 'Psychological',
    director: 'Guntur Soeharjanto',
    synopsis:
        'Four students retake a short semester class at night with their mysterious lecturer, Pak Bakti. They discover he may be a supernatural being, leading to eerie hauntings and deadly encounters in the empty campus.',
    scareLevel: 3,
    imagePath: 'assets/images/dosen_malam.jpg',
    tagColor: Color(0xFF1A4A7A),
  ),
];

// ─── Home Screen ──────────────────────────────────────────────────────────────

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0A0A),
        elevation: 0,
        title: Row(
          children: [
            const Icon(Icons.warning_amber_rounded,
                color: Color(0xFFCC0000), size: 22),
            const SizedBox(width: 8),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'SERAM ',
                    style: TextStyle(
                      color: Color(0xFFCC0000),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                  TextSpan(
                    text: 'MALAYSIA',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white54),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 8, 16, 4),
            child: Text(
              'Malaysian Horror Movies',
              style: TextStyle(
                  color: Colors.white54, fontSize: 13, letterSpacing: 1),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: 1,
            color: const Color(0xFFCC0000),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.52,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: movies.length,
              itemBuilder: (context, index) =>
                  MovieCard(movie: movies[index]),
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Movie Card (Design 4 — Red Left Border) ──────────────────────────────────

class MovieCard extends StatelessWidget {
  final HorrorMovie movie;
  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => DetailScreen(movie: movie)),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF1A1A1A),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.white10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── Poster Image ──
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(14)),
              child: SizedBox(
                height: 170,
                width: double.infinity,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      movie.imagePath,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(
                        color: const Color(0xFF2A0000),
                        child: const Center(
                          child: Icon(Icons.movie,
                              color: Color(0xFFCC0000), size: 48),
                        ),
                      ),
                    ),
                    // Bottom fade
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 50,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color(0xFF1A1A1A),
                              Colors.transparent
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Year badge
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7, vertical: 3),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.75),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          '${movie.year}',
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ── Design 4: Red Left Border Info Section ──
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(color: Color(0xFFCC0000), width: 3),
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(14),
                ),
              ),
              padding: const EdgeInsets.fromLTRB(10, 9, 9, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Genre tag
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 7, vertical: 3),
                    decoration: BoxDecoration(
                      color: movie.tagColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: movie.tagColor.withOpacity(0.5),
                          width: 0.5),
                    ),
                    child: Text(
                      movie.genre.toUpperCase(),
                      style: TextStyle(
                        color: movie.tagColor,
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.8,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),

                  // Title
                  Text(
                    movie.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),

                  // Synopsis
                  Text(
                    movie.synopsis,
                    style: const TextStyle(
                      color: Color(0xFF999999),
                      fontSize: 10,
                      height: 1.5,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),

                  // Scare level skulls
                  Row(
                    children: List.generate(5, (i) {
                      return Text(
                        '💀',
                        style: TextStyle(
                          fontSize: 10,
                          color: i < movie.scareLevel
                              ? Colors.white
                              : Colors.white.withOpacity(0.12),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── Detail Screen ────────────────────────────────────────────────────────────

class DetailScreen extends StatelessWidget {
  final HorrorMovie movie;
  const DetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 320,
            pinned: true,
            backgroundColor: const Color(0xFF0A0A0A),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => Navigator.pop(context),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    movie.imagePath,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                      color: const Color(0xFF2A0000),
                      child: const Center(
                        child: Icon(Icons.movie,
                            color: Color(0xFFCC0000), size: 80),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Color(0x880A0A0A),
                          Color(0xFF0A0A0A),
                        ],
                        stops: [0.3, 0.7, 1.0],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 4, 20, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Genre tag
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: movie.tagColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                          color: movie.tagColor.withOpacity(0.5)),
                    ),
                    child: Text(
                      movie.genre.toUpperCase(),
                      style: TextStyle(
                        color: movie.tagColor,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Title
                  Text(
                    movie.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 6),

                  // Year & Director
                  Row(
                    children: [
                      const Icon(Icons.calendar_today,
                          color: Colors.white38, size: 13),
                      const SizedBox(width: 4),
                      Text('${movie.year}',
                          style: const TextStyle(
                              color: Colors.white54, fontSize: 13)),
                      const SizedBox(width: 16),
                      const Icon(Icons.movie_creation_outlined,
                          color: Colors.white38, size: 13),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(movie.director,
                            style: const TextStyle(
                                color: Colors.white54, fontSize: 13),
                            overflow: TextOverflow.ellipsis),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(height: 1, color: const Color(0xFF2A2A2A)),
                  const SizedBox(height: 20),

                  // Scare Level
                  const Text('SCARE LEVEL',
                      style: TextStyle(
                          color: Color(0xFFCC0000),
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2)),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Row(
                        children: List.generate(5, (i) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: Text('💀',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: i < movie.scareLevel
                                        ? Colors.white
                                        : Colors.white
                                            .withOpacity(0.12))),
                          );
                        }),
                      ),
                      const SizedBox(width: 10),
                      Text(_scareLabel(movie.scareLevel),
                          style: TextStyle(
                              color: _scareColor(movie.scareLevel),
                              fontSize: 13,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(height: 1, color: const Color(0xFF2A2A2A)),
                  const SizedBox(height: 20),

                  // Synopsis
                  const Text('SYNOPSIS',
                      style: TextStyle(
                          color: Color(0xFFCC0000),
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2)),
                  const SizedBox(height: 10),
                  Text(movie.synopsis,
                      style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                          height: 1.7)),
                  const SizedBox(height: 32),

                  // Back button
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back,
                          size: 16, color: Color(0xFFCC0000)),
                      label: const Text('Back to Movies',
                          style: TextStyle(
                              color: Color(0xFFCC0000),
                              fontWeight: FontWeight.bold)),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color(0xFFCC0000)),
                        padding:
                            const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _scareLabel(int level) {
    switch (level) {
      case 1: return 'Mild 😐';
      case 2: return 'Spooky 😨';
      case 3: return 'Scary 😱';
      case 4: return 'Very Scary 🫨';
      case 5: return 'Terrifying ☠️';
      default: return '';
    }
  }

  Color _scareColor(int level) {
    switch (level) {
      case 1: return Colors.green;
      case 2: return Colors.yellow;
      case 3: return Colors.orange;
      case 4: return const Color(0xFFCC0000);
      case 5: return Colors.red;
      default: return Colors.white;
    }
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: SafeArea(
        child: Column(
          children: [
            // Top section with gradient
            Container(
              height: 200,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Color(0xFFFAFAFA),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    // Header with greeting and profile
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // "Good morning," text
                              Text(
                                'Good morning,',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF818181),
                                ),
                              ),
                              const SizedBox(height: 5),
                              // "Meshack" title
                              Text(
                                'Meshack',
                                style: GoogleFonts.poppins(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 5),
                              // Location line
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    size: 16,
                                    color: Color(0xFF818181),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    'Kisumu – Milimani',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF818181),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // Profile avatar
                        Container(
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFF0373F3).withOpacity(0.1),
                            border: Border.all(
                              color: const Color(0xFF0373F3).withOpacity(0.3),
                              width: 2,
                            ),
                          ),
                          child: const Icon(
                            Icons.person,
                            color: Color(0xFF0373F3),
                            size: 28,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Search bar and filter
                    Row(
                      children: [
                        // Search bar
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFFE9E9E9),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                const SizedBox(width: 18),
                                Icon(
                                  Icons.search,
                                  size: 24,
                                  color: const Color(0xFFA9A9A9),
                                ),
                                const SizedBox(width: 11),
                                Expanded(
                                  child: Text(
                                    'Where are you going or what do you need?',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFFA9A9A9),
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 17),
                        // Filter button
                        Container(
                          width: 52,
                          height: 52,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF0373F3),
                          ),
                          child: const Icon(
                            Icons.tune,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Content area
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    // Quick Access section
                    Padding(
                      padding: const EdgeInsets.only(left: 23.0),
                      child: Text(
                        'Quick Access',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Horizontal scrollable service cards - using Figma dimensions (230x138)
                    SizedBox(
                      height: 138,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                        children: [
                          // Fresh Keja - Highlighted
                          _buildServiceCard(
                            Icons.local_laundry_service,
                            'Fresh Keja',
                            const Color(0xFF8B5CF6),
                            isActive: true,
                          ),
                          const SizedBox(width: 25),
                          // Keja by JuaX - Highlighted
                          _buildServiceCard(
                            Icons.home,
                            'Keja by JuaX',
                            const Color(0xFF0373F3),
                            isActive: true,
                          ),
                          const SizedBox(width: 25),
                          // RideX - Dev mode
                          _buildServiceCard(
                            Icons.directions_car,
                            'RideX',
                            const Color(0xFF9CA3AF),
                            isActive: false,
                          ),
                          const SizedBox(width: 25),
                          // TukTuk Express - Dev mode
                          _buildServiceCard(
                            Icons.moped,
                            'TukTuk Express',
                            const Color(0xFF9CA3AF),
                            isActive: false,
                          ),
                          const SizedBox(width: 25),
                          // CycleX - Dev mode
                          _buildServiceCard(
                            Icons.two_wheeler,
                            'CycleX',
                            const Color(0xFF9CA3AF),
                            isActive: false,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Popular Services section
                    Padding(
                      padding: const EdgeInsets.only(left: 23.0),
                      child: Text(
                        'Popular Services',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Popular services cards - fixed overflow by reducing padding
                    SizedBox(
                      height: 138,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                        children: [
                          _buildPopularServiceCard(
                            'Fresh Keja',
                            'laundry & house cleaning',
                            '4.8',
                            Icons.local_laundry_service,
                            const Color(0xFF8B5CF6),
                          ),
                          const SizedBox(width: 25),
                          _buildPopularServiceCard(
                            'Keja by JuaX',
                            'vacant houses & rentals',
                            '4.9',
                            Icons.home,
                            const Color(0xFF0373F3),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Popular Locations section
                    Padding(
                      padding: const EdgeInsets.only(left: 23.0),
                      child: Text(
                        'Popular Locations',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Popular locations cards with images - using Figma dimensions (142x200)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 23.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: _buildLocationCardWithImage(
                              'Western Strait',
                              '16 locations',
                              'https://www.figma.com/api/mcp/asset/2fe445f2-271a-4eaf-9418-9f3b7d5f5d12',
                            ),
                          ),
                          const SizedBox(width: 25),
                          Expanded(
                            child: _buildLocationCardWithImage(
                              'Beach House',
                              '22 locations',
                              'https://www.figma.com/api/mcp/asset/e5326fea-4808-481a-8b7b-0bdbeab970ad',
                            ),
                          ),
                          const SizedBox(width: 25),
                          Expanded(
                            child: _buildLocationCardWithImage(
                              'Mountain range',
                              '36 locations',
                              'https://www.figma.com/api/mcp/asset/ab2aae3a-6282-4f2c-bec3-93d0cfbcdf70',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Nearby Services section
                    Padding(
                      padding: const EdgeInsets.only(left: 23.0),
                      child: Text(
                        'Nearby services',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Map preview card
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 23.0),
                      child: _buildMapCard(),
                    ),
                    const SizedBox(height: 30),
                    // Recent / Quick Actions section
                    Padding(
                      padding: const EdgeInsets.only(left: 23.0),
                      child: Text(
                        'Quick Actions',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Quick action cards
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 23.0),
                      child: Column(
                        children: [
                          _buildQuickActionCard(
                            Icons.local_laundry_service,
                            'Book Fresh Keja service',
                            const Color(0xFF8B5CF6),
                          ),
                          const SizedBox(height: 12),
                          _buildQuickActionCard(
                            Icons.home,
                            'Find vacant houses & rentals',
                            const Color(0xFF0373F3),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 100), // Space for bottom nav
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  // Service cards - using exact Figma dimensions: 230x138
  Widget _buildServiceCard(IconData icon, String label, Color color, {bool isActive = true}) {
    return Container(
      width: 230,
      height: 138,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: (isActive ? color : const Color(0xFF9CA3AF)).withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: isActive ? color : const Color(0xFF9CA3AF),
                size: 28,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  label,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: isActive ? Colors.black : const Color(0xFF9CA3AF),
                  ),
                ),
                if (!isActive) ...[
                  const SizedBox(width: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE5E7EB),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'Soon',
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF6B7280),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Popular service cards - using exact Figma dimensions: 230x138, fixed overflow
  Widget _buildPopularServiceCard(
    String title,
    String subtitle,
    String rating,
    IconData icon,
    Color color,
  ) {
    return Container(
      width: 230,
      height: 138,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                color: color,
                size: 24,
              ),
            ),
            const Spacer(),
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              subtitle,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF6B7280),
              ),
            ),
            const SizedBox(height: 6),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Color(0xFFF59E0B),
                  size: 14,
                ),
                const SizedBox(width: 4),
                Text(
                  rating,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Location cards with images - using exact Figma dimensions: 142x200
  Widget _buildLocationCardWithImage(
    String title,
    String locations,
    String imageUrl,
  ) {
    return Container(
      width: 142,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Image
            Image.network(
              imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: const Color(0xFFC4C4C4),
                  child: const Icon(
                    Icons.image,
                    color: Colors.white,
                    size: 48,
                  ),
                );
              },
            ),
            // Gradient overlay
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.6),
                  ],
                ),
              ),
            ),
            // Content
            Positioned(
              left: 10,
              bottom: 28,
              child: Text(
                title,
                style: GoogleFonts.andika(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              left: 10,
              bottom: 8,
              child: Text(
                locations,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMapCard() {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Map placeholder
            Container(
              color: const Color(0xFFE5E7EB),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.map,
                    size: 48,
                    color: const Color(0xFF9CA3AF),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Map View',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF9CA3AF),
                    ),
                  ),
                ],
              ),
            ),
            // Overlay content
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.95),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nearby services',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Tap to view on map',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF6B7280),
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: const Color(0xFF0373F3),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickActionCard(IconData icon, String label, Color color) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: color,
              size: 24,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              label,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          Icon(
            Icons.chevron_right,
            color: const Color(0xFF9CA3AF),
            size: 24,
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Container(
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: _buildNavItem(Icons.home, 'Home', true)),
              Expanded(child: _buildNavItem(Icons.build_circle, 'Services', false)),
              Expanded(child: _buildNavItem(Icons.receipt_long, 'Orders', false)),
              Expanded(child: _buildNavItem(Icons.message, 'Messages', false)),
              Expanded(child: _buildNavItem(Icons.person, 'Profile', false)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool isActive) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isActive ? const Color(0xFF0373F3) : const Color(0xFFBCBCBC),
            size: 24,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: isActive ? const Color(0xFF0373F3) : const Color(0xFFBCBCBC),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AnimatedTabSlider extends StatefulWidget {
  const AnimatedTabSlider({super.key, required this.onTabChange});

  final Function(int) onTabChange;

  @override
  State<AnimatedTabSlider> createState() => _AnimatedTabSliderState();
}

class _AnimatedTabSliderState extends State<AnimatedTabSlider> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // We calculate the inner width once to ensure BOTH rows are exactly the same size.
        final double innerWidth =
            constraints.maxWidth - 8; // 4px padding on each side

        return Container(
          width: double.maxFinite,
          height: 46,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimaryFixed,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white.withAlpha(20)),
          ),
          child: Stack(
            alignment:
                Alignment.center, // CRITICAL: Centers everything vertically
            children: [
              // --- LAYER 1: BACKGROUND TEXT ---
              Row(
                children: [
                  _buildTextLabel("Sign In", Colors.white38),
                  _buildTextLabel("Sign Up", Colors.white38),
                ],
              ),

              // --- LAYER 2: THE PILL AND MASKED TEXT ---
              AnimatedAlign(
                alignment: _selectedIndex == 0
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                duration: Durations.medium2,
                curve: Curves.easeInOut,
                child: FractionallySizedBox(
                  widthFactor: 0.5,
                  heightFactor:
                      1, // Fills the 46px height (minus container padding)
                  child: Container(
                    clipBehavior:
                        Clip.antiAlias, // Masks the text inside the pill
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      boxShadow: [
                        const BoxShadow(
                          blurRadius: 10,
                          color: Color.fromRGBO(37, 244, 106, 0.2),
                        ),
                        const BoxShadow(
                          blurRadius: 20,
                          color: Color.fromRGBO(37, 244, 106, 0.1),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white.withAlpha(20)),
                    ),
                    child: OverflowBox(
                      // Force the overflow row to be exactly the same size as the background row
                      maxWidth: innerWidth,
                      minWidth: innerWidth,
                      // The alignment here must animate to keep the text stationary
                      alignment: _selectedIndex == 0
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: Row(
                        children: [
                          _buildTextLabel(
                            "Sign In",
                            Theme.of(context).colorScheme.onPrimary,
                          ),
                          _buildTextLabel(
                            "Sign Up",
                            Theme.of(context).colorScheme.onPrimary,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // --- LAYER 3: GESTURE DETECTOR ---
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () => setState(() {
                        _selectedIndex = 0;
                        widget.onTabChange(0);
                      }),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () => setState(() {
                        _selectedIndex = 1;
                        widget.onTabChange(1);
                      }),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  // Helper to ensure the text structure is identical in both layers
  Widget _buildTextLabel(String label, Color color) {
    return Expanded(
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

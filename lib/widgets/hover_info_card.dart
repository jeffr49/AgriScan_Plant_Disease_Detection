import 'package:flutter/material.dart';

class HoverInfoCard extends StatefulWidget {
  final String title;
  final String content;
  final IconData icon;
  final Color hoverColor;
  final Duration duration;
  final double scaleFactor;

  const HoverInfoCard({
    Key? key,
    required this.title,
    required this.content,
    required this.icon,
    this.hoverColor = const Color(0xFFE0F7FA), // Default hover color (light cyan)
    this.duration = const Duration(milliseconds: 200),
    this.scaleFactor = 1.05,
  }) : super(key: key);

  @override
  _HoverInfoCardState createState() => _HoverInfoCardState();
}

class _HoverInfoCardState extends State<HoverInfoCard> {
  double _scale = 1.0;
  Color _backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _scale = widget.scaleFactor;
          _backgroundColor = widget.hoverColor;
        });
      },
      onExit: (_) {
        setState(() {
          _scale = 1.0;
          _backgroundColor = Colors.white;
        });
      },
      child: AnimatedContainer(
        duration: widget.duration,
        transform: Matrix4.identity()..scale(_scale),
        decoration: BoxDecoration(
          color: _backgroundColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(color: Colors.black26, blurRadius: 8, spreadRadius: 2),
          ],
        ),
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(widget.icon, color: Colors.green, size: 28),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    widget.content,
                    style: const TextStyle(fontSize: 16, color: Colors.black87),
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

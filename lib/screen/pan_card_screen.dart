import 'package:animation_app/screen/animation_screen.dart';
import 'package:flutter/material.dart';

class PanCardUploadScreen extends StatelessWidget {
  const PanCardUploadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Handle back button press
          },
        ),
        actions: [
          TextButton.icon(
            onPressed: () {
              // Handle "Need Help?" button press
            },
            icon: const Icon(Icons.help_outline, color: Colors.blue),
            label: const Text(
              'NEED HELP?',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Progress Bar Section
              const Text(
                'PAN Card',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: LinearProgressIndicator(
                      value: 0.15, // 15% progress
                      backgroundColor: Colors.grey[300],
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '15% Completed',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Title and Description
              const Text(
                'Upload your PAN Card',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'PAN Card is mandatory for investing in India.',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 16),

              // Secure Information Note
              Row(
                children: [
                  const Icon(Icons.lock_outline, color: Colors.blue),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'Your information is safe and encrypted.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60),

              // PAN Card Image Placeholder
              const AnimationScreen(),


              // Click a Picture Button
              const SizedBox(height: 50),

              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 80,
                          vertical: 16,
                        ),
                      ),
                      child: const Text(
                        'CLICK A PICTURE',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                    const SizedBox(height: 50),

                    TextButton(
                      onPressed: () {
                        // Handle "Upload or Add manually" press
                      },
                      child: const Text(
                        'Upload a file or Add details manually',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
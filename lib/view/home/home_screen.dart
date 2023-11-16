import 'package:flutter/material.dart';
import 'package:mood_app/constants/app_colors.dart';
import 'package:mood_app/view/mood/mood.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    const BrowseTab(),
    const MoodTab(),
    const LibraryTab(),
    const SearchTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: bgSecondary,
            icon: const Icon(Icons.explore),
            label: 'Browse',
          ),
          BottomNavigationBarItem(
            backgroundColor: bgSecondary,
            icon: const Icon(Icons.mood),
            label: 'Mood',
          ),
          BottomNavigationBarItem(
            backgroundColor: bgSecondary,
            icon: const Icon(Icons.library_books),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            backgroundColor: bgSecondary,
            icon: const Icon(Icons.search),
            label: 'Search',
          ),
        ],
      ),
    );
  }
}

class BrowseTab extends StatelessWidget {
  const BrowseTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Browse Tab'),
    );
  }
}

class LibraryTab extends StatelessWidget {
  const LibraryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Library Tab'),
    );
  }
}

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Search Tab'),
    );
  }
}

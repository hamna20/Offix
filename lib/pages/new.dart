import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => WishlistProvider(),
      child: Offix(),
    ),
  );
}

class Offix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Offix',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class Header extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: EdgeInsets.all(1.0),
        child: Image.network(
          'https://res.cloudinary.com/df4u3io71/image/upload/v1723174414/pixlr-image-generator-b089170d-c322-45bd-b971-1518d44fb68b-removebg-preview_d1vmwy.png',
          width: 56,
          height: 56,
        ),
      ),
      title: Text('Offix'),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 32),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _email = value;
                    });
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListedItemsPage()),
                      );
                    }
                  },
                  child: Text('Login'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupPage()),
                    );
                  },
                  child: Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  String _confirmPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 32),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _email = value;
                    });
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    if (value != _password) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      _confirmPassword = value;
                    });
                  },
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListedItemsPage()),
                      );
                    }
                  },
                  child: Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListedItemsPage extends StatefulWidget {
  @override
  _ListedItemsPageState createState() => _ListedItemsPageState();
}

class _ListedItemsPageState extends State<ListedItemsPage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    SearchPage(),
    WishlistPage(),
    TravelPage(),
    MessagesPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      endDrawer: Drawer(
        child: MenuOptions(),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplanemode_active),
            label: 'Travel',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff0a002c),
        unselectedItemColor: Colors.purple,
        onTap: _onItemTapped,
      ),
    );
  }
}

class MenuOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.business_center),
          title: Text('Office'),
          onTap: () {
            // Navigate to Office screen
          },
        ),
        ListTile(
          leading: Icon(Icons.group_work),
          title: Text('Co-working Space'),
          onTap: () {
            // Navigate to Co-working space screen
          },
        ),
        // Add more ListTile widgets for other menu options
      ],
    );
  }
}

class ImageFlipper extends StatefulWidget {
  @override
  _ImageFlipperState createState() => _ImageFlipperState();
}

class _ImageFlipperState extends State<ImageFlipper> {
  final List<String> _images = [
    'https://res.cloudinary.com/df4u3io71/image/upload/v1723167875/pixlr-image-generator-aa67d54c-0901-446a-9012-700ac72fa4f9_xz7cx8.webp',
    'https://res.cloudinary.com/df4u3io71/image/upload/v1723167873/pixlr-image-generator-4eb301b3-2000-4e77-bd17-91f97b71bafa_sfe5nf.webp',
    'https://res.cloudinary.com/df4u3io71/image/upload/v1723167873/pixlr-image-generator-2c62f0a3-bdc4-4f2d-8246-67ef1684729f_r5bivb.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: _images.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Image.network(
              url,
              fit: BoxFit.cover,
              errorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) {
                return Container(
                  color: Colors.grey,
                  child: Center(
                    child: Text(
                      'Image not available',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            );
          },
        );
      }).toList(),
    );
  }
}

class WishlistProvider with ChangeNotifier {
  List<String> _wishlist = [];

  List<String> get wishlist => _wishlist;

  void addToWishlist(String item) {
    _wishlist.add(item);
    notifyListeners();
  }

  void removeFromWishlist(String item) {
    _wishlist.remove(item);
    notifyListeners();
  }
}

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<WishlistProvider>(
      builder: (context, wishlistProvider, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Wishlist'),
          ),
          body: ListView.builder(
            itemCount: wishlistProvider.wishlist.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(wishlistProvider.wishlist[index]),
                trailing: IconButton(
                  icon: Icon(Icons.remove_circle),
                  onPressed: () {
                    wishlistProvider
                        .removeFromWishlist(wishlistProvider.wishlist[index]);
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Page',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageFlipper(),
        Expanded(
          child: ListView(
            children: List.generate(
              20,
                  (index) => ListTile(
                title: Text('Item $index'),
                subtitle: Text('Details about item $index'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Handle item click
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TravelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Travel Page',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}

class MessagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Messages Page',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}

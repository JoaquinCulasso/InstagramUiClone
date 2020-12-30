import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram',
          style: TextStyle(
            fontFamily: GoogleFonts.lobster().fontFamily,
            fontSize: 30,
          ),
        ),
        brightness: Brightness.dark,
        backgroundColor: Colors.black,
        actions: [
          IconsAppBar(icon: CupertinoIcons.plus_app),
          IconsAppBar(icon: CupertinoIcons.heart),
          IconsAppBar(icon: CupertinoIcons.paperplane),
        ],
      ),
      body: BodyScreen(),
      bottomNavigationBar: BottonBar(),
    );
  }
}

class IconsAppBar extends StatelessWidget {
  final IconData icon;

  const IconsAppBar({Key key, @required this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        icon,
        size: 32,
        color: Colors.white,
      ),
    );
  }
}

class BottonBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IconsAppBar(icon: CupertinoIcons.house_fill),
          IconsAppBar(icon: CupertinoIcons.search),
          IconsAppBar(icon: CupertinoIcons.play_rectangle),
          IconsAppBar(icon: CupertinoIcons.bag),
          IconsAppBar(icon: CupertinoIcons.person),
        ],
      ),
    );
  }
}

class BodyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 2,
            child: HistoryBar(),
          ),
          Expanded(
            flex: 1,
            child: AutorPost(),
          ),
          Expanded(
            flex: 8,
            child: BodyPost(),
          ),
          Expanded(
            flex: 1,
            child: LikeBarPost(),
          ),
          Expanded(
            flex: 1,
            child: LikePersons(),
          ),
          Expanded(
            flex: 1,
            child: DescriptionBar(),
          ),
          Expanded(
            flex: 1,
            child: CommentPost(),
          ),
        ],
      ),
    );
  }
}

class CommentPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipOval(
                  child: Image.asset('assets/profile.jpeg'),
                ),
                SizedBox(width: 10),
                Text(
                  'Añade un comentario...',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.emoji_emotions, color: Colors.yellow),
                Icon(Icons.emoji_flags, color: Colors.yellow),
                Icon(
                  CupertinoIcons.add_circled,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DescriptionBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle style = TextStyle(
      color: Colors.white,
    );
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Text(
              'Joaquin',
              style: style.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 5),
            Text(
              'Me hace falta unas vacaciones.. .',
              style: style,
            )
          ],
        ),
      ),
    );
  }
}

class LikePersons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle style = TextStyle(
      color: Colors.white,
    );
    return Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Text(
                'Le Gusta a',
                style: style,
              ),
              SizedBox(width: 5),
              Text(
                'Messi',
                style: style.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 5),
              Text(
                'y',
                style: style,
              ),
              SizedBox(width: 5),
              Text(
                'millones de personas más',
                style: style.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ));
  }
}

class LikeBarPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconsAppBar(icon: CupertinoIcons.heart),
                IconsAppBar(
                  icon: CupertinoIcons.chat_bubble,
                ),
                IconsAppBar(icon: CupertinoIcons.paperplane),
              ],
            ),
            IconsAppBar(icon: CupertinoIcons.bookmark),
          ],
        ),
      ),
    );
  }
}

class BodyPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Image.asset(
        'assets/profile.jpeg',
        fit: BoxFit.cover,
      ),
    );
  }
}

class AutorPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                ClipOval(
                  child: Image.asset('assets/profile.jpeg'),
                ),
                SizedBox(width: 5),
                Text(
                  'Joaquin',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Icon(
              CupertinoIcons.ellipsis_vertical,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class HistoryBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView(
        shrinkWrap: false,
        scrollDirection: Axis.horizontal,
        children: [
          CircleHistory(
            nameUser: 'Tu Historia',
            imageAsset: 'assets/profile.jpeg',
            icon: CupertinoIcons.add_circled_solid,
          ),
          CircleHistory(nameUser: 'Joaquin', imageAsset: 'assets/profile.jpeg'),
          CircleHistory(nameUser: 'Pepito', imageAsset: 'assets/profile.jpeg'),
          CircleHistory(nameUser: 'Esteban', imageAsset: 'assets/profile.jpeg'),
          CircleHistory(nameUser: 'Kekob', imageAsset: 'assets/profile.jpeg'),
          CircleHistory(nameUser: 'sesEs', imageAsset: 'assets/profile.jpeg'),
          CircleHistory(nameUser: 'No veo', imageAsset: 'assets/profile.jpeg'),
        ],
      ),
    );
  }
}

class CircleHistory extends StatelessWidget {
  final String nameUser;
  final String imageAsset;
  final IconData icon;

  const CircleHistory(
      {Key key, @required this.nameUser, @required this.imageAsset, this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Stack(
            children: [
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.red,
                    width: 1.5,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipOval(
                    child: Image.asset(
                      imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              icon == null
                  ? Container()
                  : Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          icon,
                          color: Colors.blue,
                        ),
                      ),
                    ),
            ],
          ),
        ),
        Text(
          nameUser,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

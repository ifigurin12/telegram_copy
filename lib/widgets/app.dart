import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: Column(children: <Widget>[
          _CustomAppBar(),
          _UsersAccountInformation(),
          _SettingsMenuList(),
          _PremiumSubscribeWidget(),
          _HelpWidget(),
          _VersionOfApp(),
        ]),
      ),
    );
  }
}

class _VersionOfApp extends StatelessWidget {
  const _VersionOfApp();
  @override
  Widget build(BuildContext context) {
    return Text(
      'Telegram для Android v8.9.3 (2757) store bundled arm64-v8a',
      style: TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.w500,
        fontSize: 10,
      ),
    );
  }
}

class _HelpWidget extends StatelessWidget {
  const _HelpWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 115,
      color: Color.fromARGB(160, 24, 24, 24),
      padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const Text(
            'Помощь',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w700,
              fontSize: 13,
            ),
          ),
          SizedBox(height: 5),
          const _SettingsMenuItem(text: 'Задать вопрос', icon: Icons.chat),
          Divider(height: 2, color: Colors.black, indent: 25),
          const _SettingsMenuItem(
              text: 'Вопросы о Telegram', icon: Icons.help_outline),
          Divider(height: 2, color: Colors.black, indent: 25),
          const _SettingsMenuItem(
              text: 'Политика конфиденциальности', icon: Icons.security_sharp),
        ],
      ),
    );
  }
}

class _PremiumSubscribeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: double.infinity,
      color: Color.fromARGB(160, 24, 24, 24),
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.fromLTRB(15, 3, 0, 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Icon(
            Icons.star,
            color: Color.fromARGB(255, 112, 29, 255),
            size: 21,
          ),
          SizedBox(width: 14),
          Container(
            margin: EdgeInsets.only(top: 3),
            child: Text(
              'Telegram Premium',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SettingsMenuItem extends StatelessWidget {
  final String text;
  final IconData icon;

  const _SettingsMenuItem({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.grey,
            size: 21,
          ),
          SizedBox(width: 14),
          Container(
            margin: EdgeInsets.only(top: 3),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SettingsMenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color.fromARGB(160, 24, 24, 24),
      padding: EdgeInsets.fromLTRB(15, 3, 0, 2),
      margin: EdgeInsets.only(top: 8),
      child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
        Text(
          'Настройки',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w700,
            fontSize: 13,
          ),
        ),
        SizedBox(height: 8),
        _SettingsMenuItem(
            text: 'Уведомления и звук', icon: Icons.notifications_none),
        Divider(height: 2, color: Colors.black, indent: 25),
        _SettingsMenuItem(
            text: 'Конфиденциальность', icon: Icons.https_outlined),
        Divider(height: 2, color: Colors.black, indent: 25),
        _SettingsMenuItem(text: 'Данные и память', icon: Icons.sd_card_sharp),
        Divider(height: 2, color: Colors.black, indent: 25),
        _SettingsMenuItem(
            text: 'Настройки чатов', icon: Icons.chat_bubble_outline),
        Divider(height: 2, color: Colors.black, indent: 25),
        _SettingsMenuItem(text: 'Стикеры и эмодзи', icon: Icons.emoji_emotions),
        Divider(height: 2, color: Colors.black, indent: 25),
        _SettingsMenuItem(text: 'Папки', icon: Icons.folder),
        Divider(height: 2, color: Colors.black, indent: 25),
        _SettingsMenuItem(text: 'Устройства', icon: Icons.devices_other),
        Divider(height: 2, color: Colors.black, indent: 25),
        _SettingsMenuItem(text: 'Language', icon: Icons.language_outlined)
      ]),
    );
  }
}

class _UsersAccountInformation extends StatelessWidget {
  const _UsersAccountInformation();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      color: Color.fromARGB(160, 24, 24, 24),
      padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Аккаунт',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w700,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 8),
          Container(
              width: double.infinity,
              height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    '+7(123)456-78-90',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    'Нажмите, чтобы изменить номер телефона',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                ],
              )),
          Container(
              width: double.infinity,
              height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    '@abcdeFG',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    'Имя пользователя',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                ],
              )),
          Container(
              width: double.infinity,
              height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    'О себе',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    'Напишите немного о себе',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(top: 22),
      height: 55,
      width: double.infinity,
      color: const Color.fromARGB(255, 31, 31, 31),
      child: Row(
        children: const <Widget>[
          const Icon(Icons.arrow_back, color: Colors.white),
          SizedBox(width: 15),
          _UsersProfilePhoto(),
          SizedBox(width: 15),
          _UsersNameAndStatus(),
          SizedBox(width: 95),
          Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(width: 35),
          Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
    );
  }
}

class _UsersNameAndStatus extends StatelessWidget {
  const _UsersNameAndStatus();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text(
              'Иван Иванов',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 18,
              ),
            ),
            Text(
              'в сети',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            )
          ]),
    );
  }
}

class _UsersProfilePhoto extends StatelessWidget {
  const _UsersProfilePhoto();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      child: const Placeholder(),
    );
  }
}
// https://ic.pics.livejournal.com/jelounov/7578799/9351/9351_original.jpg

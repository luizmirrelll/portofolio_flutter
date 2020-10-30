import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:udemy_course_i_am_rich/screens/me_content.dart';
import 'package:udemy_course_i_am_rich/utilities/hobbies.dart';
import 'package:udemy_course_i_am_rich/widgets/circularSlideItem.dart';

class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      body: new Container(
        constraints: new BoxConstraints.expand(),
        color: Color.fromRGBO(31, 31, 31, 100),
        child: new Stack(
          children: <Widget>[
            _getContent(context),

            // _getGradient(),
          ],
        ),
      ),
    );
  }
}

Container _getBackground() {
  return new Container(
    color: Colors.grey[400],
    child: new SizedBox(
      height: 300.0,
      child: new Carousel(
        images: [
          Image.asset(
            'assets/banner3.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/code.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/computer.jpg',
            fit: BoxFit.cover,
          ),
        ],
        //hides the dots
        dotColor: Colors.transparent,
        dotBgColor: Colors.transparent,
        dotSize: 0.0,
      ),
    ),
  );
}

class Separator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: EdgeInsets.only(top: 20),
        margin: new EdgeInsets.symmetric(vertical: 8.0),
        height: 2.0,
        width: 180.0,
        color: new Color(0xff00c6ff));
  }
}

Widget _getContent(BuildContext context) {
  final _hobbiesTitle = "Hobby Saya".toUpperCase();
  return new ListView(
    padding: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 32.0),
    children: <Widget>[
      _getBackground(),
      new MeSummary(
        horizontal: false,
      ),
      new Container(
        padding: EdgeInsets.only(left: 12, right: 12),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 15,
        child: Center(
          child: new Text(
            "Profil Singkat",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
      new Container(
        padding: EdgeInsets.only(left: 12, right: 12),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3,
        child: Center(
          child: new Text(
            "Hai perkenalkan nama saya Aloysius mirel,asal saya dari Maumere,NTT. Saya lulusan dari Telkom University dan mengambil jurusan Sistem Informasi dan saya sangat tertarik sama dunia web/mobile developer. saya mempunyai impian besar untuk menjadi developer yang berpengalaman dan dapat menambah ilmu dari dunia kerja.",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
      new Container(
        padding: EdgeInsets.only(left: 12, right: 12),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 15,
        child: Center(
          child: new Text(
            "Cover Latter",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
      new Container(
        padding: EdgeInsets.only(left: 12, right: 12),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 20,
        child: Center(
          child: new Text(
            "Salam hormat Bapak/Ibu",
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      new Container(
        padding: EdgeInsets.only(left: 12, right: 12),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 1,
        child: Center(
          child: new Text(
            "Saya menulis surat ini untuk menyampaikan ketertarikan saya pada jabatan Mobile Developer Anda.\n\nI Saya baru saja mendapatkan gelar Diploma/D3 di Sistem Informasi, jurusan Sistem Informasi dari Telkom university, saya berharap dapat memberikan pengetahuan, keterampilan, dan komitmen saya untuk perusahaan Anda yang inovatif.\n\nI Sebagai seorang pelajar Sistem Informasi, jurusan Sistem Informasi, saya telah dilengkapi dengan ilmu pembuatan aplikasi Android, pembuatan web,kursus-kursus berkaitan dengan Android dan bekal pengetahuan diluar dari yang dibelajar di lingkungan perkuliahan.\n\nI Pengalaman magang saya di Perusahaan Manajemen PT.Telekomunikasi Indonesia,Tbk yang juga telah menambah keterampilan yang memadai untuk bekerja dengan beberapa professional di bidang merketing dapat dibawah ke dunia kerja. Selama masa 6 bulan KP dan magang, saya telah mempelajari proses kerja dalam bidang Wholesale & International marketing dan saya lumayan mengerti tentang marketing yang ada pada tempat saya magang dan KP.\n\nI Beberapa pencapaian telah saya raih selama kursus, termasuk menjadi saya lumayan mengetahui tentang android studio. Saya juga banyak mengikuti seminar tentang android karena saya mau banyak mengetahui tentang perkembangan android dan sebagainya. saya senang dengan pembuatan android karena saya bisa membuat aplikasi yang sederhana dari pelajaran yang saya dapat di kurus dan disiminar. Dan saya mempunyai kemauan yang besar untuk  menambah ilmu saya dan saya bersemangat akan tujuan saya tersebut.\n\nI Sebagai rincian tambahan terkait dengan kualifikasi dan keahlian saya, mohon tinjau kembali lampiran surat ini.",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
      ),
      new Container(
        //garis
        margin: new EdgeInsets.symmetric(vertical: 8.0),
        height: 2.0,
        width: 18.0,
        color: new Color(0xff00c6ff),
      ),
      new Container(
        child: new Column(
          children: <Widget>[
            new Text(
              _hobbiesTitle,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
              textAlign: TextAlign.left,
            ),
            new Separator(),
          ],
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height / 2.4,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: hobbies == null ? 0 : hobbies.length,
            itemBuilder: (BuildContext context, int index) {
              Map hobby = hobbies[index];

              return Padding(
                padding: EdgeInsets.only(left: 15.0, right: 10.0),
                child: CircularSlideItem(
                  img: hobby["img"],
                  title: hobby["title"],
                  width: hobby["width"],
                  height: hobby["height"],
                ),
              );
            }),
      ),
    ],
  );
}

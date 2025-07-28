import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              // color: Colors.white,
            ),
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    'assets/polri.png',
                    fit: BoxFit.cover,
                    scale: 0.2,
                  ),
                ),

                Positioned(
                  top: 100,
                  left: 100,
                  child: Image.asset(
                    'assets/indo.png',
                    fit: BoxFit.cover,
                    scale: 0.75,
                  ),
                ),

                Positioned.fill(
                  child: Opacity(
                    opacity: 0.75,
                    child: Image.asset('assets/group.png', fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: -10,
                  child: Image.asset('assets/ribbon.png', fit: BoxFit.fill),
                ),
                const LicenseHeader(),
                const LicenseExpiry(),
                const PhotoSignature(),
                const VehicleInfo(),

                const IdentityInfo(),
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.25,
                    child: Image.asset('assets/wm.png', fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IdentityInfo extends StatelessWidget {
  const IdentityInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 95,
      top: 85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nama/Name',
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            'PUTRA NEGARA',
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 12,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
          Text(
            'Tempat,Tgl Lahir/Place,Date of Birth',
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            'JAKARTA 17 AGUSTUS 1975',
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 12,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Golongan Darah/Blood Type',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'O',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 12,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),

              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jenis Kelamin/Gender',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'PRIA',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 12,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),

          Text(
            "Alamat/Address",
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text.rich(
            TextSpan(
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 12,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
              children: [
                TextSpan(text: "MT HARYONO ST, RT.4/RW.2, CIKOKO,\n"),
                TextSpan(text: "PANCORAN, JAKARTA SELATAN"),
              ],
            ),
          ),
          Text(
            "Pekerjaan/Occupation",
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            "Polri",
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 12,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
          Text(
            "Diterbitkan Oleh/Issued By",
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            "METRO JAYA",
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 12,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class LicenseHeader extends StatelessWidget {
  const LicenseHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(color: Colors.red, width: double.infinity, height: 40),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Color(0xFFE0E0E0),
                    Colors.white,
                    Color(0xFFE0E0E0),
                    Colors.white,
                    Color(0xFFE0E0E0),
                    Colors.white,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 20,
          top: 5,
          child: Image.asset('assets/logo.png', scale: 0.75),
        ),
        Positioned(
          left: 95,
          top: 60,
          child: Text(
            "3175095801131001",
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 16,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          right: 25,
          top: 17.5,
          child: Text(
            "DRIVING LICENSE",
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          right: 50,
          top: 32.5,
          child: Text(
            "A",
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          left: 95,
          top: 5,
          child: Column(
            children: [
              Text(
                'INDONESIA',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'SURAT IZIN MENGEMUDI',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 11,
                  fontWeight: FontWeight.w900,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class LicenseExpiry extends StatelessWidget {
  const LicenseExpiry({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 15,
          bottom: 25,
          child: Image.asset('assets/qr.png', scale: 0.85),
        ),
        Positioned(
          right: 15,
          bottom: 5,
          child: Text(
            "21-12-2028",
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 12,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

class PhotoSignature extends StatelessWidget {
  const PhotoSignature({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 10,
          top: 100,
          child: Image.asset('assets/photo.png', scale: 0.85),
        ),
        Positioned(
          left: 10,
          top: 220,
          child: Image.asset('assets/sign.png', scale: 0.75),
        ),
      ],
    );
  }
}

class VehicleInfo extends StatelessWidget {
  const VehicleInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 40,
          top: 80,
          child: Image.asset('assets/mobil.png', scale: 0.75),
        ),
        Positioned(
          right: 5,
          top: 110,
          child: Column(
            children: const [
              Text(
                "Mobil Penumpang Pribadi",
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "Passenger Car/Personal Goods",
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

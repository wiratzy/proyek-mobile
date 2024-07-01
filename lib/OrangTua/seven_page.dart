import 'package:flutter/material.dart';

class SevenPage extends StatelessWidget {
  const SevenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 232, 191, 222),
            borderRadius: BorderRadius.vertical(top: Radius.circular(30),bottom: Radius.circular(30),),
          ),
          child: Container(
            width: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'Syarat & ketentuan',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(height: 20),
                _buildTextRow('1. Usia minimal 4.5 tahun'),
                _buildTextRow('2. Bukan termasuk anak berkebutuhan khusus (ABK)'),
                _buildTextRow('3. Mengisi formulir pendaftaran'),
                _buildTextRow('4. Membayar biaya pendaftaran Rp. 160.000'),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'Formulir Pendaftaran',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(height: 10),
                _buildInputField('Nama Lengkap', TextInputType.text),
                SizedBox(height: 10),
                _buildInputField('Tanggal Lahir', TextInputType.datetime),
                SizedBox(height: 10),
                _buildInputField('Kelas', TextInputType.text),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextRow(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: Text(
        text,
        style: TextStyle( fontSize: 15, ),
      ),
    );
  }

  Widget _buildInputField(String labelText, TextInputType inputType) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        textAlign: TextAlign.center,
        keyboardType: inputType,
      ),
    );
  }
}

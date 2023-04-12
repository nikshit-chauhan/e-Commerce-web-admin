import 'package:flutter/material.dart';

class UploadBannerScreen extends StatelessWidget {
  static const String routeName = '\UploadBannerScreen';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Banners',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 36,
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        border: Border.all(color: Colors.grey.shade800),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('Banners'),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Upload Image'),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Save'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'dart:typed_data';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter/material.dart';

class ItemsUploadScreen extends StatefulWidget
{
  @override
  State<ItemsUploadScreen> createState() => _ItemsUploadScreenState();
}

class _ItemsUploadScreenState extends State<ItemsUploadScreen>
{
  Uint8List? imageFileUint8List;
  TextEditingController sellerNameTextEditingController = TextEditingController();
  TextEditingController sellerPhoneTextEditingController = TextEditingController();
  TextEditingController itemNameTextEditingController = TextEditingController();
  TextEditingController itemDescriptionTextEditingController = TextEditingController();
  TextEditingController itemPriceTextEditingController = TextEditingController();

  bool isUploading = false;

  //upload form screen
  Widget uploadFormScreen()
  {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade50,
        title: const Text(
          "Upload New Item",
          style: TextStyle(
            color: Colors.teal,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.teal,
          ),
        ),
      ),
      body: ListView(
        children: [

         isUploading == true
            ? const LinearProgressIndicator(color: Colors.purpleAccent,)
            : Container(),

          //image
          SizedBox(
            height: 230,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Center(
              child: imageFileUint8List != null ?
              Image.memory(
                imageFileUint8List!
              ) : LoadingAnimationWidget.fourRotatingDots(
                     color: Colors.teal,
                      size: 100,
              ),
            ),
          ),

          const Divider(
            color: Colors.blueGrey,
            thickness: 2,
          ),

          //seller name
          ListTile(
            leading: const Icon(
                Icons.person_pin_rounded,
                color: Colors.teal,
            ),
            title: SizedBox(
              width: 250,
              child: TextField(
                style: const TextStyle(color: Colors.teal),
                controller: sellerNameTextEditingController,
                decoration: const InputDecoration(
                  hintText: "Seller name",
                  hintStyle: TextStyle(color: Colors.teal),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.blueGrey,
            thickness: 1,
          ),

          //seller phone
          ListTile(
            leading: const Icon(
              Icons.phone_android_rounded,
              color: Colors.teal,
            ),
            title: SizedBox(
              width: 250,
              child: TextField(
                style: const TextStyle(color: Colors.teal),
                controller: sellerPhoneTextEditingController,
                decoration: const InputDecoration(
                  hintText: "Seller phone",
                  hintStyle: TextStyle(color: Colors.teal),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.blueGrey,
            thickness: 1,
          ),

          //item name
          ListTile(
            leading: const Icon(
              Icons.title,
              color: Colors.teal,
            ),
            title: SizedBox(
              width: 250,
              child: TextField(
                style: const TextStyle(color: Colors.teal),
                controller: itemNameTextEditingController,
                decoration: const InputDecoration(
                  hintText: "Item name",
                  hintStyle: TextStyle(color: Colors.teal),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.blueGrey,
            thickness: 1,
          ),

          //item description
          ListTile(
            leading: const Icon(
              Icons.description,
              color: Colors.teal,
            ),
            title: SizedBox(
              width: 250,
              child: TextField(
                style: const TextStyle(color: Colors.teal),
                controller: itemDescriptionTextEditingController,
                decoration: const InputDecoration(
                  hintText: "item description",
                  hintStyle: TextStyle(color: Colors.teal),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.blueGrey,
            thickness: 1,
          ),

          //item price
          ListTile(
            leading: const Icon(
              Icons.price_change,
              color: Colors.teal,
            ),
            title: SizedBox(
              width: 250,
              child: TextField(
                style: const TextStyle(color: Colors.teal),
                controller: itemPriceTextEditingController,
                decoration: const InputDecoration(
                  hintText: "Item price",
                  hintStyle: TextStyle(color: Colors.teal),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.blueGrey,
            thickness: 1,
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return uploadFormScreen();
  }
}

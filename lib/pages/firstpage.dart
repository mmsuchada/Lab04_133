import 'package:flutter/material.dart';




class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String foodRadio ="";

  bool chekbox1 = false;
  bool chekbox2 = false;

  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("Suchada133"), backgroundColor: const Color.fromARGB(255, 3, 142, 255),
    ),
    body: Column(
      children: [
        createradiomanu("คั่วเนื้อ", "แกงคั่วเนื้อ", "299 บาท"),
        createradiomanu("ต้มยำ", "ต้มยำกุ้ง", "199 บาท"),
        createradiomanu("ส้มตำ", "ส้มตำปูปลาร้า", "59 บาท"),
        createradiomanu("ข้าวผัด", "ข้าวผัดกุ้ง", "129 บาท"),
        createradiomanu("ยำ", "ยำวุ้นเส้นทะเล", "99 บาท"),
        createradiomanu("ไก่ย่าง", "ไก่ย่าง", "19 บาท"),
        const Divider(),

        CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          title: Text("เพิ่มกากหมู บวก 9 บาท"),
          value: chekbox2, 
          onChanged: (value) {
          setState(() {
            chekbox2 = value!;
          });
        },),

        

        CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          title: Text("เพิ่มไข่ดาว บวก 9 บาท"),
          value: chekbox1, 
          onChanged: (value) {
          setState(() {
            chekbox1 = value!;
          });
        },)
      ],
    ) 
    );
  }

  RadioListTile<String> createradiomanu(
    String val, String title, String subtitle) {
    return RadioListTile(
      value: val,
      activeColor: Colors.amber,
      title: Text(title), 
      subtitle: Text(subtitle),
      secondary: const Icon(Icons.shopping_bag_sharp),
      groupValue: foodRadio, 
      onChanged: (value) {
        setState(() {
        foodRadio = value!;  
        });
        print(foodRadio);  
      },
      );
  }
}
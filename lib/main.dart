import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text("مبایل و تبلت", style: TextStyle(color: Colors.grey, fontSize: 16)),
                    SizedBox(width: 20,),
                    Text("لپتاپ", style: TextStyle(color: Colors.grey, fontSize: 16)),
                  ],
                ),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.5)),
                      borderRadius: BorderRadius.all(Radius.circular(2))

                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text("ورود / ثبت نام", style: TextStyle(color: Colors.grey, fontSize: 16)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.5,

      ),
      body: Directionality(
          textDirection: TextDirection.rtl,
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/images/medium.png", height: 100,),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("ترب", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 40),),
                      Text("مقایسه قیمت میلیون ها محصول بین هزاران فروشگاه", style: TextStyle(color: Colors.grey, fontSize: 16),)
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(6))
                  ),
                  child: TextFormField(
                    autofocus: true,
                    enableSuggestions: true,
                    // autofillHints: ,
                    onChanged: (value) {},
                    style: const TextStyle(fontSize: 16),
                    maxLines: 1,
                    cursorColor: Colors.red,
                    decoration: const InputDecoration(
                        hintText: "نام کالا را وارد کنید",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                        focusColor: Colors.grey,
                        fillColor: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

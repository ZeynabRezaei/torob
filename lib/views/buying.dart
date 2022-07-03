import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:torob_flutter/views/popup.dart';

class Buying extends StatefulWidget {
  @override
  _BuyingState createState() => _BuyingState();
}

class _BuyingState extends State<Buying> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/medium.png", height: 500,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AutoSizeText(
                  " گوشی سامسونگ A32 | حافظه 128 رم 6 گیگابایت ا Samsung Galaxy A32 128/6 GB",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                  minFontSize: 16,
                  maxFontSize: 20,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 10,),
                const AutoSizeText(
                  "از ۵۰۰۰۰۰ تا ۱۰۰۰۰۰۰۰",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
                  minFontSize: 24,
                  maxFontSize: 24,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 30,),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 800,
                  child: const AutoSizeText(
                    "گلکسی A32 سامسونگ با حافظه 128 گیگابایت و رم 6 گیگابایت مقرون به صرفه ترین گوشی میان رده است که با توجه به امکانات عالی که دارد از قیمت بسیار مناسبی برخوردار می باشد.",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    textAlign: TextAlign.start,
                    minFontSize: 16,
                    maxFontSize: 20,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 40,),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    'دو سیم کارت',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                    minFontSize: 16,
                    maxFontSize: 20,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    'صفحه نمایش آمولد',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                    minFontSize: 16,
                    maxFontSize: 20,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    'دوربین عالی',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                    minFontSize: 16,
                    maxFontSize: 20,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    'عمر باتری زیاد',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                    minFontSize: 16,
                    maxFontSize: 20,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    'وزن سبک',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                    minFontSize: 16,
                    maxFontSize: 20,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    'اندروید 11 با رابط کاربری One UI 3.1',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                    minFontSize: 16,
                    maxFontSize: 20,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    'قیمت مناسب',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                    minFontSize: 16,
                    maxFontSize: 20,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 40,),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 800,
                  child: const AutoSizeText(
                  "برای خرید گوشی A32 128GB/6GB سامسونگ با بهترین قیمت بازار روی گزینه «افزودن به سبد خرید کالا» کلیک کنید. آ32 اصل، رجستری شده با 18 ماه گارانتی را با خیال راحت از ما خرید کنید.",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    textAlign: TextAlign.start,
                    minFontSize: 16,
                    maxFontSize: 20,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 40,),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 800,
                  child: const AutoSizeText(
                  "مدت زمان ارسال کالا 25 روز کاری می باشد (علت پایین تر بودن قیمت 25 روز کاری نسبت به تحویل فوری این است که شما کالا را پیش خرید نموده و با پول دریافتی از شما کالا از دبی سفارش داده می شود و از نظر کیفیت هیچ تفاوتی با کالای تحویل فوری ندارد) در صورتی که قصد دارید کالا سریع تر برایتان ارسال شود، گزینه ی مدت زمان ارسال را به فوری تغییر دهید. لازم به ذکر است پس از گذشت زمان مقرر می توانید بصورت حضوری (با هماهنگی قبلی) در محل شرکت حاضر شوید و کالا را تحویل بگیرید و یا اینکه با هزینه خود شما و روش ارسالی که زمان انجام خرید انتخاب نموده اید کالا برایتان ارسال می شود",
                    style: TextStyle(fontSize: 18, color: Colors.red),
                    textAlign: TextAlign.start,
                    minFontSize: 16,
                    maxFontSize: 20,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 40,),
                Row(
                  children: [
                    InkWell(
                      onTap:(){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) =>  Buying()));
                      },
                      child: Container(
                        height: 35,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Center(child: Text("افزودن به سبد خرید", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),)),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    InkWell(
                      onTap: (){
                        PopUp(
                          context,
                          color: Colors.white,
                          body: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(height: 4,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children:  [
                                      InkWell(
                                          onTap: (){
                                            Navigator.pop(context);
                                          },
                                          child: const Icon(Icons.close_rounded)
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20,),
                                const Divider(),
                                const SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Image.asset("assets/images/medium.png", height: 70,),
                                    SizedBox(width: 30,),
                                    Column(
                                      children: [
                                        Text("کوک موبایل", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                        SizedBox(height: 10,),
                                        Text("گوشی موبایل سامسونگ گلکسی آ 32 (128 گیگا بایت،‌رم 6گیگا بایت) | Samsung Galaxy A32 mobile phone (128GB,6GB RAM) - زمان ارسال بیست و پنج روز کاری", style: TextStyle(fontSize: 14),),
                                        SizedBox(height: 10,),
                                        Text("۵٫۶۲۰٫۰۰۰ تومان", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.red),),
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(height: 20,),
                                Column(
                                  children: [
                                    Text("به چه مشکلی برخوردید؟", style: TextStyle(fontSize: 16),),
                                    Row(
                                      children: [
                                        Icon(Icons.circle_outlined, size: 20,),
                                        Text("این کالا مربوط به این صفحه نیست.", style: TextStyle(fontSize: 16),),
                                      ],
                                    ),
                                    const SizedBox(height: 20,),
                                    Row(
                                      children: [
                                        Icon(Icons.circle_outlined, size: 20,),
                                        Text("قیمت یا موجودی صحیح نیست.", style: TextStyle(fontSize: 16),),
                                      ],
                                    ),
                                    const SizedBox(height: 20,),
                                    Row(
                                      children: [
                                        Icon(Icons.circle_outlined, size: 20,),
                                        Text("می‌خواهم سفارشم را از این فروشگاه پیگیری کنم.", style: TextStyle(fontSize: 16),),
                                      ],
                                    ),

                                  ],
                                )
                              ],
                            ),
                          ), isDismissible: true,
                        );
                      },
                      child: Container(
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(14)
                        ),
                        child: const Center(child: Text("گزارش", style: const TextStyle(fontSize: 12, color: Colors.red),)),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

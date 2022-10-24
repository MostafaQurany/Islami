import 'package:flutter/material.dart';

class Sebha extends StatefulWidget {
  const Sebha({Key? key}) : super(key: key);

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int count = 0;
  int indexOfTasbehat = 0;

  List<String> tasbehat = [
    "سبحان الله",
    "الحمد لله",
    "لا إله إلا الله",
    "أستغفر الله",
    "اللهمَّ إنك عفوٌّ تُحبُّ العفوَ فاعفُ عنِّي",
    "اللهم صل وسلم وبارك على سيدنا محمد",
    "سبحان الله وبحمده سبحان الله العظيم",
    "سبحان الله والحمد لله ولا إله إلا الله والله أكبر",
    "أستغفر الله الذى لا إله إلا هو الحي القيوم وأتوب إليه",
    "لا اله الا انت سبحانك إني كنت من الظالمين",
    "سبحان الله وبحمده عدد خلقه ورضا نفسه وزنة عرشه ومداد كلماته",
    "لا إله إلا الله وحده لا شريك لهُ ، لهُ الملك ، ولهُ الحمدُ ، وهو على كل شيء قدير",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                    child: Text(
                  tasbehat[indexOfTasbehat],
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                )),
                Column(
                  children: [
                    IconButton(
                        onPressed: () => setState(() {
                          if(indexOfTasbehat>0){
                            indexOfTasbehat--;
                          }
                            }),
                        icon: Icon(
                          Icons.upload,
                          size: 32,
                        )),
                    IconButton(
                        onPressed: () => setState(() {
                          if(indexOfTasbehat<11){
                            indexOfTasbehat++;
                          }
                            }),
                        icon: Icon(
                          Icons.download_sharp,
                          size: 32,
                        )),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  (count < 10) ? '0${count}' : '${count}',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 26),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                    onPressed: () => setState(() {
                          count++;
                        }),
                    icon: Icon(
                      Icons.add,
                      size: 32,
                    )),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                    onPressed: () => setState(() {
                          (count > 0) ? count-- : count;
                        }),
                    icon: Icon(
                      Icons.remove,
                      size: 32,
                    )),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: IconButton(
                    onPressed: () => setState(() {
                          count = 0;
                        }),
                    icon: Icon(
                      Icons.restart_alt,
                      size: 32,
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}

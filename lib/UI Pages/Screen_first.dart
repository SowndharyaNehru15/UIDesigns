import 'package:loginscreen/utils/responsive.dart';
import 'package:loginscreen/utils/utils.dart';

class UIScreenFirst extends StatefulWidget {
  //11111111111
  //222222222
  const UIScreenFirst({super.key});

  @override
  State<UIScreenFirst> createState() => _UIScreenFirstState();
}

class _UIScreenFirstState extends State<UIScreenFirst> {
 
  @override
  Widget build(BuildContext context) {
    final responsive = context.responsive;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: responsive.screenHeight * 0.26,
            width: double.infinity,
            color: const Color.fromARGB(255, 220, 30, 220),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            "assets/jackma.png",
                          )),
                      Text(
                        "Samvel Johnson",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Icon(
                        Icons.notification_add,
                        color: Colors.white,
                        size: 40,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: ListTile(
                          title: Text(
                            "Flowers",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "5.7 M",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 4,
                        height: 10,
                      ),
                      Flexible(
                        child: ListTile(
                          title: Text(
                            "Following",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: AutoSizeText(
                            "917",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            maxLines: 1,
                            minFontSize: 8,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.white,
                        thickness: 10,
                        height: 10,
                      ),
                      Flexible(
                        child: ListTile(
                          title: Text(
                            "LIkes",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "3M",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: responsive.screenHeight * 0.2,
                    child: Card(

                        //color: index % 2 == 0 ? Colors.red : Color(0xFFE1E9FF),

                        color: AppColors
                            .colorList[index % AppColors.colorList.length],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Container(
                                    padding: const EdgeInsets.all(8),
                                    height: responsive.screenHeight * 0.15,
                                    width: responsive.screenWidth * 0.17,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: const Color.fromARGB(
                                            255, 164, 63, 164)),
                                    child: const Column(
                                      children: [
                                        Expanded(
                                          child: AutoSizeText(
                                            "Jan 17",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                            maxLines: 1,
                                            minFontSize: 10,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        SizedBox(height: 7),
                                        Expanded(
                                          child: AutoSizeText(
                                            "10:00AM",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                            maxLines: 1,
                                            minFontSize: 10,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    )),
                                title: const Text(
                                  "Flutter Developer",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                subtitle: Text(
                                  "competitive analysis for the website",
                                  style: TextStyle(
                                      color: Colors.grey[900],
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                height: responsive.screenHeight * 0.04,
                                width: responsive.screenWidth * 0.43,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.green),
                                child: const Center(
                                  child: Text(
                                    "Update",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  );
                }),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:netflix_clone/features/home/widget/tabbar_section.dart';

class sections extends StatefulWidget {
  sections({Key? key}) : super(key: key);

  @override
  State<sections> createState() => _sectionsState();
}

class _sectionsState extends State<sections> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        tabsection(
            webimage: "assets/images/detail_1.webp",
            textname: "1. The Rise of Nobunaga",
            min: "43 min.",
            descrip:
                "Thought to be an idiot and unable to lead, Nobunaga becomes head of the Oda clan, causing conflict among other family members vying for power."),
        tabsection(
            webimage: "assets/images/detail_2.webp",
            textname: "2. Power Struggle",
            min: "43 min.",
            descrip:
                "Conquering much of central Japan, Nobunaga enrages the warlords by igniting a fierce battle with Takeda Shingen, a formidable daimyo."),
        tabsection(
            webimage: "assets/images/detail_3.webp",
            textname: "3. Demon King",
            min: "43 min.",
            descrip:
                "As Nobunaga's ambitions deepen, some generals begin to question her dominance, leading to a betrayal that changes the political landscape forever."),
        tabsection(
            webimage: "assets/images/detail_4.webp",
            textname: "4. Full Control",
            min: "43 min.",
            descrip:
                "Toyotomi Hideyoshi comes to power as the de facto ruler of Japan. But in the north, a young daimyo named Date Masamune doesn't care about the letters he sends."),
        tabsection(
            webimage: "assets/images/detail_5.webp",
            textname: "5. Disaster",
            min: "44 min.",
            descrip:
                "Unifying the country, Hideyoshi plans to extend his reign to China. But the logistical difficulties and fierce opposition they face in Korea come at a heavy price."),
        tabsection(
            webimage: "assets/images/detail_6.webp",
            textname: "6. The Birth of a Dynasty",
            min: "45 min.",
            descrip:
                "The five warlords Hideyoshi appointed before he died will rule the country until his son is an adult. However, the power-hungry Tokugawa Ieyasu declares war on those who oppose him."),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import '../../../widgets/place_card.dart';
import '../../../widgets/section_title.dart';
import '../../../models/travel_spot.dart';
import 'events_screen.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../fade_animations.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Библиотека заявок",
          isAll: true,
          press: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EventsScreen()),
          ),
        ),
        VerticalSpacing(of: 20),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                travelSpots.length,
                    (index) => Padding(
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(kDefaultPadding)),
                  child: FadeAnimation(
                    0.4,
                    PlaceCard(
                      travelSport: travelSpots[index],
                      press: () {},
                      isTravellers: travelSpots.length == 4 && index == 0 ? false : true,
                    ),
                  )
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(kDefaultPadding),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
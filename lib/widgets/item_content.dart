import 'package:flutter/material.dart';
import 'package:marketly/config/constants.dart';

class ItemContent extends StatelessWidget {
  final String number;
  final String name;
  final String description;

  const ItemContent({
    Key key,
    this.number,
    this.name,
    this.description
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: <Widget>[
          Text(
            number,
            overflow: TextOverflow.clip,
            style: kHeadingStyle.copyWith(
              color: kTextColor.withOpacity(.15),
              fontSize: 32,
            ),
          ),
          SizedBox(width: 20),
          Container(
            // height: 100,
            width: MediaQuery.of(context).size.width / 1.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: kSubtitleTextStyle.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Text(
                  description,
                  style: TextStyle(
                    color: kTextColor.withOpacity(.5),
                    fontSize: 14,
                    height: 1.5,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kPrimaryColor.withOpacity(1),
            ),
            child: Icon(Icons.chevron_right_rounded, color: Colors.white),
          )
        ],
      ),
    );
  }
}

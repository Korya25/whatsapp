import 'package:flutter/material.dart';

class TermsAndPrivacy extends StatefulWidget {
  const TermsAndPrivacy(
      {super.key, required this.isAccepted, required this.onPressed});

  final bool isAccepted;
  final Function() onPressed;

  @override
  State<TermsAndPrivacy> createState() => _TermsAndPrivacyState();
}

class _TermsAndPrivacyState extends State<TermsAndPrivacy> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: widget.onPressed,
              icon: Icon(
                widget.isAccepted
                    ? Icons.check_box
                    : Icons.check_box_outline_blank,
                color: widget.isAccepted ? Colors.green : Colors.white,
                size: 27,
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(text: 'I accept the '),
                      TextSpan(
                        text: 'terms & conditions',
                        style: TextStyle(color: Colors.green),
                      ),
                      TextSpan(text: ' and the '),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

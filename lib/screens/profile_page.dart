import 'package:flutter/material.dart';
import '../widgets/description_field.dart';
import '../widgets/profile_card.dart';
import '../widgets/description_block.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    this.blockPadding = 20,
  });

  final double blockPadding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          // All the items in the list are wrapped with a Padding widget to create space between the items
          children: [
            // Wrapped padding with UnconstrainedBox widget because of flutter weirdness wrt ListViews
            const UnconstrainedBox(
              child: Padding(
                padding: EdgeInsets.only(top: 20, bottom: 40),
                child: ProfileCard(name: "Fahad Alqarni"),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(bottom: blockPadding),
              child: const DescriptionBlock(
                label: "Personal Details",
                descriptions: [
                  DescriptionField(
                    label: "Email",
                    content: "fahad.a.s.algarni@gmail.com",
                    icon: Icons.email,
                  ),
                  DescriptionField(
                    label: "Location",
                    content: "Dhahran, Eastern Province",
                    icon: Icons.location_on,
                  ),
                  DescriptionField(
                    label: "Birthday",
                    content: "July 31st",
                    icon: Icons.celebration,
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(bottom: blockPadding),
              child: const DescriptionBlock(
                label: "Social Media",
                descriptions: [
                  DescriptionField(
                    label: "X (Twitter)",
                    content: "@AlqarniDev",
                    image: Image(
                      image: AssetImage('assets/x_logo.png'),
                      height: 40,
                    ),
                  ),
                  DescriptionField(
                    label: "Github",
                    content: "fahadasq",
                    image: Image(
                      image: AssetImage("assets/github_logo.png"),
                      color: Colors.white,
                      height: 40,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(bottom: blockPadding),
              child: const DescriptionBlock(
                label: "About Me",
                descriptions: [
                  DescriptionField(
                    label: "University",
                    content: "Imam Abdulrahman bin Faisal University",
                    icon: Icons.school,
                  ),
                  DescriptionField(
                    label: "Hobby",
                    content: "Gaming",
                    icon: Icons.videogame_asset,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';

class CreateMeetingView extends StatelessWidget {
  const CreateMeetingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final List<String> cards = [
      'UI/UX',
      'Design',
      'Presentation',
      'Work',
      'Figma',
      'Web',
      'Demo',
    ];
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        backgroundColor: theme.colorScheme.background,
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Create \nNew meeting',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(
                  label: Text(
                'Title',
                // style: TextStyle(fontSize: 20),
              )),
            ),
            const TextField(
              decoration: InputDecoration(
                  label: Text(
                'Tags',
                // style: TextStyle(fontSize: 20),
              )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Wrap(
                children: List.generate(
                    cards.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(right: 10, top: 10),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 10),
                              child: Text(
                                cards[index],
                                style: TextStyle(
                                    color: theme.colorScheme.onPrimary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.secondary,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                          ),
                        )),
              ),
            ),
            const Text(
              'Date & Time',
              style: TextStyle(color: Colors.black54, fontSize: 16),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              leading: Container(
                height: 60,
                width: 60,
                child: Icon(
                  Icons.calendar_month,
                  color: theme.colorScheme.primary,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
              title: const Text(
                'Date',
                style: TextStyle(fontSize: 15, color: Colors.black45),
              ),
              subtitle: const Text(
                'Friday 26,Feb',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              leading: Container(
                height: 60,
                width: 60,
                child: Icon(
                  Icons.schedule,
                  color: theme.colorScheme.primary,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
              title: const Text(
                'Time',
                style: TextStyle(fontSize: 15, color: Colors.black45),
              ),
              subtitle: const Text(
                '3:00 - 4:30 PM',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Participants',
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
            ),
            AvatarStack(
              settings: RestrictedAmountPositions(
                minCoverage: -0.2,
              ),
              height: 70,
              avatars: const [
                NetworkImage(
                  'https://thumbs.dreamstime.com/b/positive-symbol-plus-icon-isolated-white-background-226331755.jpg',
                ),
                NetworkImage(
                    'https://mir-s3-cdn-cf.behance.net/project_modules/disp/ea7a3c32163929.567197ac70bda.png'),
                NetworkImage(
                    'https://i.kinja-img.com/gawker-media/image/upload/t_original/ijsi5fzb1nbkbhxa2gc1.png'),
                NetworkImage(
                    'https://i.pinimg.com/564x/30/24/f8/3024f8d283b734bd6b7e4fc5531fe2e9--create-a-cartoon-avatar.jpg'),
                NetworkImage(
                    'http://www.paulseward.com/downloads/Avatars/cartoon_avatar.png'),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

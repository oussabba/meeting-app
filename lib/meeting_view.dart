import 'package:avatar_stack/avatar_stack.dart';
import 'package:avatar_stack/positions.dart';
import 'package:flutter/material.dart';
import 'package:sliver_header_delegate/sliver_header_delegate.dart';

class MeetingView extends StatelessWidget {
  const MeetingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> cards = [
      'UI/UX',
      'Design',
      'Presentation',
      'Work',
      'Figma',
      'Web',
      'Demo',
    ];
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: FlexibleHeaderDelegate(
              //statusBarHeight: MediaQuery.of(context).padding.top,
              expandedHeight: 240,
              background: MutableBackground(
                expandedWidget: Image.asset(
                  'assets/images/meeting.png',
                  fit: BoxFit.cover,
                ),
                collapsedColor: theme.colorScheme.secondary,
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {},
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          SliverFillViewport(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Design Demo meeting',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.favorite_outline,
                            color: theme.colorScheme.primary,
                            size: 30,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Wrap(
                        children: List.generate(
                            cards.length,
                            (index) => Padding(
                                  padding:
                                      const EdgeInsets.only(right: 10, top: 10),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: ListTile(
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
                                title: const Text('Date'),
                                subtitle: const Text('Friday 26,Feb'),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
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
                                title: const Text('Time'),
                                subtitle: const Text('3:00 - 4:30 PM'),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Text(
                        'About',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'When you design and build a product, it is important that you regularly demo completed work with the team and key stakeholders. In Agile software development, so-called sprint demos are a key part of every iteration',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Read more',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: AvatarStack(
                                settings: RestrictedAmountPositions(
                                  minCoverage: 0.4,
                                ),
                                height: 55,
                                avatars: const [
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
                            ),
                            const Expanded(
                              child: Text(
                                '+10 participate',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all(
                                const Size(double.infinity, 55)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ))),
                        onPressed: () {},
                        child: const Text(
                          'Take part',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

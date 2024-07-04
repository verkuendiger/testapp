import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/app/widget/form.dart';
import 'package:testapp/app/widget/image.dart';
import 'package:testapp/bloc/data_bloc.codegen.dart';
import 'package:testapp/common/extensions.dart';
import 'package:testapp/data_source/data_api.codegen.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({
    super.key,
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.body,
  });

  final int id;
  final String imageUrl;
  final String title;
  final String body;

  List<Widget> _generateComments(final List<CommentInfo> comments) =>
      List.generate(comments.length, (final index) {
        final comment = comments[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              comment.name.capitalized,
              style: const TextStyle(fontSize: 15),
            ),
            SelectableText(
              comment.email,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
            SelectableText(comment.body.capitalized),
          ],
        );
      });

  @override
  Widget build(final BuildContext context) => Scaffold(
        backgroundColor: const Color(0xffcccccc),
        body: SafeArea(
          child: FormWidget(
            canPop: true,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocBuilder<DataBloc, DataBlocState>(
                builder: (final context, final state) {
                  final curState = state as DataBlocStateSuccessFetchPosts;
                  return SizedBox(
                    width: 550,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 10,
                              color: const Color(0xffe4e4e4),
                            ),
                            color: const Color(0xffe4e4e4),
                          ),
                          child: Center(
                            child: NetworkImageWidget(
                              url: imageUrl,
                              width: 400,
                              height: 400,
                              cornerRadius: 0,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        SelectableText(
                          title,
                          style: const TextStyle(fontSize: 20),
                        ),
                        const SizedBox(height: 10),
                        SelectableText(body),
                        const SizedBox(height: 10),
                        const Divider(),
                        const SelectableText('Comments'),
                        const SizedBox(height: 10),
                        ..._generateComments(
                          curState.comments != null &&
                                  curState.comments!.containsKey(id)
                              ? curState.comments![id]!
                              : [],
                        ).map(
                          (final child) => Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: child,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/app/post_screen.dart';
import 'package:testapp/app/widget/button_filler.dart';
import 'package:testapp/app/widget/form.dart';
import 'package:testapp/app/widget/image.dart';
import 'package:testapp/bloc/data_bloc.codegen.dart';
import 'package:testapp/common/extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
        backgroundColor: const Color(0xffcccccc),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<DataBloc, DataBlocState>(
                  builder: (final context, final state) {
                    if (state is DataBlocStateSuccessFetchPosts) {
                      final posts = state.posts;
                      final photos = state.photos;
                      return FormWidget(
                        canPop: false,
                        child: Column(
                          children: List.generate(
                            posts.length,
                            (final index) {
                              final post = posts[index];
                              final photo = photos[index];
                              return Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 20,
                                ),
                                child: ButtonFiller(
                                  callback: () {
                                    context.dataBloc
                                        .add(FetchPostComments(id: post.id));
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (final context) => PostScreen(
                                          id: post.id,
                                          imageUrl: photo.url,
                                          title: post.title.capitalized,
                                          body: post.body.capitalized,
                                        ),
                                      ),
                                    );
                                  },
                                  child: SizedBox(
                                    height: 165,
                                    width: 550,
                                    child: Row(
                                      children: [
                                        NetworkImageWidget(
                                          url: photo.url,
                                          width: 165,
                                          height: 165,
                                          cornerRadius: 5,
                                        ),
                                        const SizedBox(width: 15),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                post.title.capitalized,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              const SizedBox(height: 5),
                                              Text(
                                                post.body.capitalized,
                                                maxLines: 5,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ),
            ],
          ),
        ),
      );
}

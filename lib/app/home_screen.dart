import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:shimmer/shimmer.dart';
import 'package:testapp/app/widget/appbar.dart';
import 'package:testapp/app/widget/button_filler.dart';
import 'package:testapp/app/widget/form.dart';

import 'package:testapp/bloc/data_bloc.codegen.dart';
import 'package:testapp/common/extensions.dart';
import 'package:testapp/app/post_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final users = (context.usersBloc.state as UsersBlocStateSuccessFetchAllUsers).usersInfo!;
    return Scaffold(
      backgroundColor: Color(0xffcccccc),
      body: SafeArea(
        child: Column(
          children: [
            // const AppBarWidget(title: 'Профиль', canPop: true),
            Expanded(
              child: BlocBuilder<DataBloc, DataBlocState>(
                  builder: (context, state) {
                if (state is DataBlocStateSuccessFetchPosts) {
                  final posts = state.posts;
                  final photos = state.photos;
                  return FormWidget(
                    canPop: false,
                    child: Column(
                      children: List.generate(
                        posts.length,
                        (index) {
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
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => PostScreen(
                                        id: post.id,
                                        imageUrl: photo.url,
                                        title: post.title.capitalized,
                                        body: post.body.capitalized)));
                              },
                              child: SizedBox(
                                height: 165,
                                width: 550,
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: CachedNetworkImage(
                                        fit: BoxFit.fill,
                                        width: 165,
                                        height: 165,
                                        imageUrl: photo.url, //add imag url here
                                        placeholder: (context, url) =>
                                            Shimmer.fromColors(
                                          baseColor:
                                              Colors.black.withOpacity(0.15),
                                          highlightColor:
                                              Colors.black.withOpacity(0.12),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                        ),

                                        errorWidget: (context, url, error) =>
                                            Placeholder(),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            post.title.capitalized,
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            post.body.capitalized,
                                            maxLines: 5,
                                          ),
                                        ],
                                      ),
                                    )
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
                return SizedBox.shrink();
              }),
            ),
          ],
        ),
      ),
    );
  }

  HttpClient createHttpClient() {
    return HttpClient()..connectionTimeout = Duration(seconds: 5);
  }
}

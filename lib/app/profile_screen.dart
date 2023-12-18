import 'package:flutter/material.dart';
import 'package:testapp/app/widget/appbar.dart';
import 'package:testapp/bloc/extensions.dart';
import 'package:testapp/bloc/users_bloc.codegen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final user = (context.usersBloc.state as UsersBlocStateSuccessFetchUser).userInfo;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const AppBarWidget(title: 'Профиль', canPop: true),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Идентификатор: ${user.id}',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 320,
              child: Card(
                margin: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 0.8,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 30),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.network(
                          user.avatar,
                          width: 120,
                          height: 120,
                          
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Имя: ${user.firstName}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Фамилия: ${user.lastName}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Почта: ${user.email}',
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

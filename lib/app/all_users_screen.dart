import 'package:flutter/material.dart';
import 'package:testapp/app/widget/appbar.dart';
import 'package:testapp/bloc/extensions.dart';
import 'package:testapp/bloc/users_bloc.codegen.dart';

class AllUsersScreen extends StatelessWidget {
  const AllUsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final users = (context.usersBloc.state as UsersBlocStateSuccessFetchAllUsers).usersInfo!;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const AppBarWidget(title: 'Профиль', canPop: true),
            Expanded(
              child: ListView.separated(
                itemCount: users.length,
                separatorBuilder: (context, index) => const SizedBox(height: 10),
                itemBuilder: (context, index) {
                  final user = users[index];
                  return SizedBox(
                    child: ListTile(
                      leading: Image.network(user.avatar, width: 60, height: 60, fit: BoxFit.cover),
                      title: Text('${user.firstName} ${user.lastName}'),
                      subtitle: Text(user.email),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

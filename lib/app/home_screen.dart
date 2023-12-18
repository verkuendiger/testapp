import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:routemaster/routemaster.dart';
import 'package:testapp/app/widget/appbar.dart';
import 'package:testapp/bloc/extensions.dart';
import 'package:testapp/bloc/users_bloc.codegen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _numberFieldController1 = TextEditingController(text: '0');
  final TextEditingController _numberFieldController2 = TextEditingController(text: '1');

  void validateInput() {
    final id = int.parse('${_numberFieldController1.text}${_numberFieldController2.text}');
    if (id > 30) {
      _numberFieldController1.text = '3';
      _numberFieldController2.text = '0';
    } else if (id == 0) {
      _numberFieldController2.text = '1';
    }
  }

  Widget _numberField(BuildContext context, TextEditingController controller, {int maxNumber = 9}) => SizedBox(
        width: 64,
        height: 64,
        child: TextField(
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          enableInteractiveSelection: false,
          controller: controller,
          showCursor: false,
          style: const TextStyle(
            fontSize: 20,
          ),
          decoration: const InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(style: BorderStyle.solid, color: Color(0xff8e66fe), strokeAlign: 10.0, width: 3),
            ),
            counterText: '',
          ),
          onChanged: (value) {
            if (value.length == 2) {
              controller.value = TextEditingValue(text: value.characters.last);
            }
            validateInput();
            if (value.isNotEmpty) {
              FocusScope.of(context).nextFocus();
            }
          },
        ),
      );

  @override
  Widget build(BuildContext context) => BlocConsumer<UsersBloc, UsersBlocState>(
        listener: (context, state) {
          if (state is UsersBlocStateSuccessFetchUser) {
            Routemaster.of(context).push('/profile');
          } else if (state is UsersBlocStateSuccessFetchAllUsers) {
            Routemaster.of(context).push('/all-users');
          }
        },
        builder: (context, state) => Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const AppBarWidget(title: 'TestApp', canPop: false),
                  const SizedBox(height: 20),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0.5,
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        const Text(
                          'Идентификатор пользователя',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: SizedBox(
                            width: 140,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _numberField(context, _numberFieldController1, maxNumber: 2),
                                _numberField(context, _numberFieldController2),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (state is UsersBlocStateProcessing)
                    const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: CircularProgressIndicator(color: Color(0xff8e66fe), strokeWidth: 3),
                    )
                  else
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ListTile(
                        leading: const Icon(Icons.person),
                        title: Text(state is UsersBlocStateFailure ? state.errorMessage : 'Введите ID от 1 до 30'),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        tileColor: const Color(0xffe8e0ff),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                      style: button(),
                      onPressed: () {
                        final id = int.parse('${_numberFieldController1.text}${_numberFieldController2.text}');
                        context.usersBloc.add(UsersBlocEvent.fetchUser(id: id));
                      },
                      child: const Text('Найти', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                      style: button(),
                      onPressed: () {
                        context.usersBloc.add(const UsersBlocEvent.fetchAllUsers());
                        // Routemaster.of(context).push('/all-users');
                      },
                      child: const Text('Список', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  ButtonStyle button() {
    final flatButtonStyle = TextButton.styleFrom(
      minimumSize: const Size(double.infinity, 50),
      backgroundColor: const Color(0xff8e66fe),
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide.none,
      ),
    );
    return flatButtonStyle;
  }
}

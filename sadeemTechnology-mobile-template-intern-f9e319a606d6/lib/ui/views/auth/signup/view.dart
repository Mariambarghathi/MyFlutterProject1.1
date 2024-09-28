import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:intern/ui/views/auth/signup/viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../../../generated/l10n.dart';
import '../../../shared/ui_helper.dart';

@RoutePage()
class SignupView extends StatefulWidget {
const SignupView({super.key});

@override
State<SignupView> createState()=> _SignupViewState();
}

class _SignupViewState extends State<SignupView>{
@override
Widget build (BuildContext context){
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  return ViewModelBuilder<SignupViewModel>.reactive(
viewModelBuilder: () =>SignupViewModel() ,
onViewModelReady: (viewmodel) async{
await viewmodel.init();
},
builder: (
BuildContext context, SignupViewModel viewModel, Widget? child) {
return Scaffold( body: viewModel.isBusy
? const Center(child: CircularProgressIndicator())
: Center(
child: SingleChildScrollView(
child: Column(
    children: <Widget>[
  Text(
  AppLocalizations.of(context).sign_up_view_sign,
  style: TextStyle(
  color: Theme.of(context).primaryColor,
  fontSize: 20,
  fontWeight: FontWeight.w700,
  ),
  ),
  UIHelper.verticalSpaceMedium(),
  Container(
  width: MediaQuery.of(context).size.width / 1.2,
  height: 350,
  child: Container(
  child: Form(
  key: _formKey,
  child: Column(
  children: [
  UIHelper.verticalSpaceMedium(),
  UIHelper.verticalSpaceMedium(),
  Card(
  margin: EdgeInsets.zero,
  elevation: 1,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(8),
  ),
  child: Padding(
  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
  child: TextFormField(
  controller: emailController,
  autovalidateMode:
  AutovalidateMode.onUserInteraction,
  onChanged: (value) {
    viewModel.user=
        viewModel.user.rebuild(
              (p0)=>
              p0.email = emailController.text,);
  },
  validator: (value) {
  if (viewModel.validateEmail(
  emailController!.text) !=
  null) {
  return AppLocalizations.of(context)
      .wrong_email;
  }
  },
  decoration: InputDecoration(
  hintText: AppLocalizations.of(context).email,
  border: InputBorder.none,
  suffixIcon: const Icon(Icons.email),
  ),
  ),
  ),
  ),
    UIHelper.verticalSpaceMedium(),
    Card(
      margin: EdgeInsets.zero,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: TextFormField(
          controller: nameController,
          onChanged: (value) {
            viewModel.user=
                viewModel.user.rebuild(
                      (p0)=>
                  p0.name = nameController.text,);
          },
          validator:(value){} ,
          decoration: InputDecoration(
            hintText: AppLocalizations.of(context).name,
            border: InputBorder.none,
            suffixIcon: Icon(Icons.person),
          ),

        ),
      ),
    ),
    UIHelper.verticalSpaceMedium(),
    Card(
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: TextFormField(
          autovalidateMode:
          AutovalidateMode.onUserInteraction,
          controller: passwordController,
          validator: (value) {
            if (viewModel.validatePassword(
                passwordController!.text) !=
                null) {
              return AppLocalizations.of(context)
                  .password_must_be_more_than_6_characters_long;
            }
          },
          onChanged: (value) {
            viewModel.user=
                viewModel.user.rebuild(
                      (p0)=>
                  p0.password = passwordController.text,);
          },
          obscureText: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText:
            AppLocalizations.of(context).password,
            suffixIcon: Icon(Icons.lock),
          ),
        ),
      ),
    ),
    UIHelper.verticalSpaceMedium(),
    ElevatedButton(onPressed: () async {
      await viewModel.signup();
    },
    style: ButtonStyle(
      shape: WidgetStateProperty.all<
        RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),

        ),
      ),
    ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(AppLocalizations.of(context).sign_up_view_sign),
        ))
  ],
  ),
  ),
  ),
  ),
  ],
  ),
  ),
  ),
);
},
);
}

}
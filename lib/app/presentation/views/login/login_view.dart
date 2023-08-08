import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sekerme_ecommerce/app/presentation/views/login/widgets/login_divider.dart';
import 'package:sekerme_ecommerce/app/presentation/views/register/register_view.dart';
import 'package:sekerme_ecommerce/app/presentation/widgets/from_text_field.dart';
import 'package:sekerme_ecommerce/app/presentation/widgets/my_button_from.dart';
import 'package:sekerme_ecommerce/app/presentation/widgets/my_social_button.dart';
class LoginView extends StatelessWidget {

  static const String name = 'login_view';

  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Logo
                  SvgPicture.asset('assets/images/MyMarca.svg',
                    colorFilter:  ColorFilter.mode(
                        Theme.of(context).colorScheme.primary, BlendMode.srcIn
                    ),
                    alignment: Alignment.topCenter,
                    width: 180,
                  ),
                  Text('Iniciar sesion',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 20,),


                  const FormTextField(
                    labelText: 'Correo Electronico',
                    hintText: 'Ingrese su correo',
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                    suffixIcon: false,

                  ),
                  const SizedBox(height: 20,),

                  const FormTextField(
                    labelText: 'Contraseña',
                    hintText: 'Ingrese su contraseña',
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    suffixIcon: false,

                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: (){},
                          child: Text('¿Olvido contraseña?',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary
                            ),
                          ),

                        )

                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),

                  MyButtonForm(
                    text: 'Iniciar sesion',
                    onTab: (){},

                  ),
                  const SizedBox(height: 20,),

                  const LoginDivider(),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Facebook
                      MySocialButton(onTap: (){},
                          imagePath: 'assets/icons/google.png'),
                      MySocialButton(onTap: (){},
                          imagePath: 'assets/icons/facebook.png'),
                      MySocialButton(onTap: (){},
                          imagePath: 'assets/icons/twitter.png'),
                    ],
                  ),
                  const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('¿No tienes una cuenta?',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary
                            )
                          ),
                          TextButton(
                              onPressed:(){
                              },
                              child: Text('Registrate',
                                style: TextStyle(
                                    color: Theme.of(context).colorScheme.primary
                                )

                              )
                          )
                        ],
                      ),


                  ),
                ],
              ),
            ),
          ),
      ),
    );
  }
}

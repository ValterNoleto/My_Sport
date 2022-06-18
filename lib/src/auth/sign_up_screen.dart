import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:my_sport/src/auth/components/custom_text_field.dart';
import 'package:my_sport/src/config/custom_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              //Crie sua conta
              const Expanded(
                child: Center(
                  child: Text(
                    'Crie sua conta',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              //Formulário
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45),
                  ),
                ),
                child: Column(
                  children: [
                    //Email
                    const CustomTextField(
                      icon: Icons.email,
                      label: 'Email',
                    ),

                    //Senha
                    const CustomTextField(
                      icon: Icons.lock_clock,
                      label: 'Senha',
                      isSecret: true,
                    ),

                    //Confirmação de senha
                    const CustomTextField(
                      icon: Icons.lock_rounded,
                      label: 'Confirme sua senha',
                      isSecret: true,
                    ),

                    //Nome
                    const CustomTextField(
                      icon: Icons.person,
                      label: 'Nome',
                    ),

                    //Endereço
                    const CustomTextField(
                      icon: Icons.home_filled,
                      label: 'Endereço',
                    ),

                    //Celular
                    const CustomTextField(
                      icon: Icons.phone,
                      label: 'Celular',
                    ),

                    //CPF
                    const CustomTextField(
                      icon: Icons.file_copy,
                      label: 'CPF',
                    ),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          side: const BorderSide(
                            width: 2,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Criar',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

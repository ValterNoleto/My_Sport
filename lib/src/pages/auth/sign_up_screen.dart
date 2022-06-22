import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:my_sport/src/config/custom_colors.dart';

import 'components/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final cpfFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {'#': RegExp(r'[0-9]')},
  );

  final numberFormatter = MaskTextInputFormatter(
    mask: '(##) # ####-####',
    filter: {'#': RegExp(r'[0-9]')},
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(

        //Page text
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
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

                  //Form
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

                        //Password
                        const CustomTextField(
                          icon: Icons.lock_clock,
                          label: 'Senha',
                          isSecret: true,
                        ),

                        //Password confirmation
                        const CustomTextField(
                          icon: Icons.lock_rounded,
                          label: 'Confirme sua senha',
                          isSecret: true,
                        ),

                        //Name
                        const CustomTextField(
                          icon: Icons.person,
                          label: 'Nome',
                        ),

                        //Address
                        const CustomTextField(
                          icon: Icons.home_filled,
                          label: 'Endereço',
                        ),

                        //Phone
                        CustomTextField(
                          icon: Icons.phone,
                          label: 'Celular',
                          inputFormatters: [numberFormatter],
                        ),

                        //CPF
                        CustomTextField(
                          icon: Icons.file_copy,
                          label: 'CPF',
                          inputFormatters: [cpfFormatter],
                        ),

                        //Registration Button
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

              //Back button
              Positioned(
                left: 5,
                top: 10,
                child: SafeArea(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_circle_left_sharp,
                      size: 35,
                      color: CustomColors.customSwatchColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

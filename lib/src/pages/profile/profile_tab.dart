import 'package:flutter/material.dart';
import 'package:my_sport/src/config/custom_colors.dart';
import 'package:my_sport/src/pages/commom_widgets/custom_text_field.dart';
import 'package:my_sport/src/config/app_data.dart' as app_data;

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Perfil do usuário',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: [
          //Email
          CustomTextField(
            readOnly: true,
            initialValue: app_data.user.email,
            icon: Icons.email,
            label: 'Email',
          ),

          //Name
          CustomTextField(
            readOnly: true,
            initialValue: app_data.user.name,
            icon: Icons.person,
            label: 'Nome',
          ),

          //Address
          CustomTextField(
            readOnly: true,
            initialValue: app_data.user.address,
            icon: Icons.home_filled,
            label: 'Endereço',
          ),

          //Phone
          CustomTextField(
            readOnly: true,
            initialValue: app_data.user.phone,
            icon: Icons.phone,
            label: 'Celular',
          ),

          //CPF
          CustomTextField(
            readOnly: true,
            initialValue: app_data.user.cpf,
            icon: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
          ),

          //Button to update password
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: CustomColors.customSwatchColor,
                side: const BorderSide(
                  width: 2,
                  color: Colors.black,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                updatePassword();
              },
              child: const Text(
                'Atualizar senha',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //Password change dialog
  Future<bool?> updatePassword() {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //Title
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        'Atualizar senha',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    //Current password
                    const CustomTextField(
                      icon: Icons.lock,
                      label: 'Senha atual',
                      isSecret: true,
                    ),

                    //New password
                    const CustomTextField(
                      icon: Icons.lock_outline,
                      label: 'Nova senha',
                      isSecret: true,
                    ),

                    //Confirm the password
                    const CustomTextField(
                      icon: Icons.lock_outline,
                      label: 'Confirme sua senha',
                      isSecret: true,
                    ),

                    //Confirmation button
                    SizedBox(
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          side: const BorderSide(
                            width: 2,
                            color: Colors.black,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Atualizar',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

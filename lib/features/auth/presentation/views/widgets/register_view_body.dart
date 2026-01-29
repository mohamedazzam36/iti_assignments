import 'package:flutter/material.dart';
import 'package:iti_flutter/features/auth/presentation/views/widgets/conditions_and_agreement_widget.dart';
import 'package:iti_flutter/features/auth/presentation/views/widgets/register_header_section.dart';
import 'package:iti_flutter/features/auth/presentation/views/widgets/register_user_input_section.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              const RegisterHeaderSection(),
              const SizedBox(height: 32),
              const RegisterUserInputSection(),
            ]),
          ),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 36),
                child: ConditionsAndAgreementWidget(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

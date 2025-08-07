import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/primary_elevated_button.dart';
import '../../data/models/user_model.dart';

class UserForm extends StatefulWidget {
  final void Function(UserModel user) onSubmit;

  const UserForm({super.key, required this.onSubmit});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _dobController = TextEditingController();
  final _countryCodeController = TextEditingController();
  final _passwordController = TextEditingController();
  final _departmentController = TextEditingController();

  DateTime? _selectedDob;

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      final newUser = UserModel(
        id: DateTime.now().millisecondsSinceEpoch,
        name: _nameController.text.trim(),
        email: _emailController.text.trim(),
        dob: _selectedDob!,
        countryCode: _countryCodeController.text.trim(),
        password: _passwordController.text,
        department: _departmentController.text.trim(),
      );

      widget.onSubmit(newUser);
    }
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(context: context, initialDate: now, firstDate: DateTime(1950), lastDate: now);

    if (picked != null) {
      setState(() {
        _selectedDob = picked;
        _dobController.text =
            "${picked.year}-${picked.month.toString().padLeft(2, '0')}-${picked.day.toString().padLeft(2, '0')}";
      });
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _dobController.dispose();
    _countryCodeController.dispose();
    _passwordController.dispose();
    _departmentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              controller: _nameController,
              hintText: 'Name',
              validator: (value) => value!.isEmpty ? 'Enter name' : null,
            ),
            const Gap(12),
            CustomTextField(
              controller: _emailController,
              hintText: 'Email',
              keyboardType: TextInputType.emailAddress,
              validator: (value) => value!.isEmpty ? 'Enter email' : null,
            ),
            const Gap(12),
            GestureDetector(
              onTap: _pickDate,
              child: AbsorbPointer(
                child: CustomTextField(
                  controller: _dobController,
                  hintText: 'Date of Birth',
                  validator: (value) => value!.isEmpty ? 'Select DOB' : null,
                ),
              ),
            ),
            const Gap(12),
            CustomTextField(
              controller: _countryCodeController,
              hintText: 'Country Code',
              validator: (value) => value!.isEmpty ? 'Enter country code' : null,
            ),
            const Gap(12),
            CustomTextField(
              controller: _passwordController,
              hintText: 'Password',
              obscureText: true,
              validator: (value) => value!.isEmpty ? 'Enter password' : null,
            ),
            const Gap(12),
            CustomTextField(
              controller: _departmentController,
              hintText: 'Department',
              validator: (value) => value!.isEmpty ? 'Enter department' : null,
            ),
            const Gap(20),
            CustomButton(text: "Add User", onPressed: _submit),
          ],
        ),
      ),
    );
  }
}

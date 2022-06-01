import 'package:flutter_test/flutter_test.dart';
import 'package:ressourcesrelationnelles/Pages/Auth/validator.dart';


void main() {
test('Empty Email Test', () {
    var result = FieldValidator.validateEmail('');
    expect(result, 'Enter Email');
  });

  test('Invalid Email Test', () {
    var result = FieldValidator.validateEmail('ress');
    expect(result, 'Enter Valid Email');
  });

  test('Valid Email Test', () {
    var result = FieldValidator.validateEmail('ressour.rela@tionel.com');
    expect(result, '');
  });
  test('Empty Password Test', () {
    var result = FieldValidator.validatePassword('');
    expect(result, 'Enter Password');
  });

  test('Invalid Password Test', () {
    var result = FieldValidator.validatePassword('123');
    expect(result, 'Password must be more than 8 characters');
  });

  test('Valid Password Test', () {
    var result = FieldValidator.validatePassword('ajay12345');
    expect(result, '');
  });

  test('Empty Name Test', () {
    var result = FieldValidator.validateName('');
    expect(result, 'Entrez votre nom');
  });

  test('Empty Firstname Test', () {
    var result = FieldValidator.validateFirstname('');
    expect(result, 'Entrez votre prénom');
  });
}

import 'dart:math';

class CalculadoraIMC {
  final int altura;
  final int peso;
  late double _imc;

  CalculadoraIMC({
    required this.altura,
    required this.peso,
  });

  String calcularIMC() {
    _imc = peso / pow(altura / 100, 2);
    return _imc.toStringAsFixed(1);
  }

  String obterResultado() {
    if (_imc < 18.5) {
      return 'Abaixo do peso';
    } else if (_imc > 18.5 && _imc < 24.9) {
      return 'Peso normal';
    } else if (_imc > 25 && _imc < 29.9) {
      return 'Sobrepeso';
    } else if (_imc > 30 && _imc < 34.9) {
      return 'Obesidade grau 1';
    } else if (_imc > 35 && _imc < 39.9) {
      return 'Obesidade grau 2';
    } else {
      return 'Obesidade grau 3';
    }
  }

  String obterInterpretacao() {
    if (_imc < 18.5) {
      return 'Você esta muito abaixo do seu peso ideal, deve se alimentar mais e melhor.';
    } else if (_imc > 18.5 && _imc < 24.9) {
      return 'Excelente!! Seu peso esta dentro da normalidade.';
    } else if (_imc > 25 && _imc < 29.9) {
      return 'Você esta com sobre-peso, atenção!!, já deve procurar corrigir a alimentação.';
    } else if (_imc > 30 && _imc < 34.9) {
      return 'Cuidado!! você esta com Obesidade grau 1, deve reduzir, mudar e melhorar sua alimentação.';
    } else if (_imc > 35 && _imc < 39.9) {
      return 'Preocupante!! voce esta com Obesidade grau 2, deve reduzir, mudar e melhoar a alimentação e se necessario procurar por auxilio especializado.';
    } else {
      return 'Grave!!! você esta com Obesidade grau 3, deve procurar por ajuda especializada, a necessidade de redução de peso é urgente.';
    }
  }
}

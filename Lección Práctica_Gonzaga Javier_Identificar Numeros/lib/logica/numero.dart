class Numero {
  String clasificarNumero(int numero) {
    if (numero > 0) {
      return 'Positivo';
    } else if (numero < 0) {
      return 'Negativo';
    } else {
      return 'Nulo';
    }
  }
}

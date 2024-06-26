enum Delimiters {
  unset(0),
  commaOnly(1),
  spaceOnly(2);

  final int value;
  const Delimiters(this.value);
}

enum ElementType {
  standard(''),
  attribute('@'),
  global('!'),
  comment('#');

  final String symbol;
  const ElementType(this.symbol);
}

enum Glyphs {
  none(''),
  equal('='),
  at('@'),
  bang('!'),
  hash('#'),
  space(' '),
  comma(','),
  quote(r'"');

  final String char;
  const Glyphs(this.char);
}

enum ErrorType {
  badTokenPosAttribute('Element using attribute prefix out-of-place.'),
  badTokenPosBang('Element using global prefix out-of-place.'),
  eolNoData('Nothing to parse (EOL).'),
  eolMissingElement('Missing element name (EOL).'),
  eolMissingAttribute('Missing attribute name (EOL).'),
  eolMissingGlobal('Missing global identifier (EOL).'),
  unterminatedQuote('Missing end quote in expression.'),
  runtime('Unexpected runtime error.'); // Reserved for misc. parsing issues

  final String message;
  const ErrorType(this.message);

  @override
  String toString() => message;
}

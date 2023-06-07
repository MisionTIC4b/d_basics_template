import 'package:dart_basics/Utils.dart';
import 'package:dart_basics/my_converter.dart';
import 'package:test/test.dart';

void main() {
  group('MainConverter', () {
    MyConverter converter = MyConverter();

    test('Convert binary to decimal', () {
      converter.binary = '1010';
      expect(converter.convertBinary(), '10');
    });

    test('Convert decimal to binary', () {
      converter.decimal = '10';
      expect(converter.convertDecimal(), '1010');
    });

    test('Setting binary value', () {
      converter.binary = '101';
      expect(converter.binary, '101');
    });

    test('Setting decimal value', () {
      converter.decimal = '5';
      expect(converter.decimal, '5');
    });
  });

  group('Converter', () {
    test('Convert binary to decimal', () {
      expect(Utils.bin2dec('1010'), '10');
    });

    test('Convert decimal to binary', () {
      expect(Utils.dec2bin('10'), '1010');
    });
  });
}

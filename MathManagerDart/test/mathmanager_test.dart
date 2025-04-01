import 'package:test/test.dart';
import '../lib/mathmanager.dart';

void main() {
  group('Test all methods of mathmanager', () {
    test('Test add 2 positive integers', () {
	MathManager math = MathManager();
        expect(math.add(0, 3), equals(3));
    });    
    test('Test add 2 negative integers', () {
	MathManager math = MathManager();
      	expect(math.add(-1, -3), equals(-4));
    });  
    test('Test simple one year interest', () {
    MathManager math = MathManager();
      expect(math.interest(1000, 2), equals(3.0));
    });
  });
}

    

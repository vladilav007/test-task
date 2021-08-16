# test-task

## Task 1
Написать простой шифр моноподстановки:
Взять все четные биты строки и сконкатенировать их со всеми нечётными n раз. В
результате вернуть строку.

 **Пример**:  
("Abcdefghij", 1) -> "bdfhjacegi"  
("Abcdefghij", 2) -> "bdfhjacegi" -> "dhaeibfjcg"  

**Написать два метода/функции:**
- encrypt(text, n)
- decrypt(encrypted_text, n)

**Для обоих методов:**  
Если входящая строка пустая или NULL, вернуть значение входящей строки  
Если n <= 0, вернуть исходное значение входной строки

## Task 2
**Написать метод/функцию**, которая принимает на вход текст (учитывать
пунктуацию и специальные символы), и возвращает массив из 3х наиболее часто
встречаемых слов в тексте в порядке убывания.
- Словом является строка букв (A to Z), опционально содержащая один или более
апострофов (')
- Совпадения не должны быть чувствительны к регистру и слова в возвращаемом
массиве необходимо привести к нижнему регистру
- Если текст содержит меньше трёх уникальных слов, вернуть пустой массив.

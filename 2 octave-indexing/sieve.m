function a = sieve(n)
   a = 1:n; %составление вектора из n элементов. Вектор будет состоять из значений от 1 до n(1,2,3..n)
   i = 2; %начать цикл со счетчика == 2
   while i < length(a) %цикл работает, пока счетчек не достиг длины вектора а
     a = filter_multiples(a, a(i)); %удаление элемента, пододящих под критерий с помощью функции
     i++ %переход к следующему элементу
   endwhile
endfunction
%Программа выведет вектор без удаленных элементов
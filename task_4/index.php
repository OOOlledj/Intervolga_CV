<?php

/*
Дан массив элементов.
Вывести кол-во последовательных пар одинаковых элементов
*/


function stock_creator(int $count=100, int $min=1, int $max=100){
    $arr = array();
    for($i=0; $i<$count; $i++){
        array_push($arr, rand($min, $max));
    }
    return $arr;
}

function stock_pairs(array $stock){
    $pairs = 0;
    for($i = 1; $i < count($stock); $i++){
        if ($stock[$i] == $stock[$i - 1]){
            $pairs++;
        }
    }
    return $pairs;
}

$stock = stock_creator($count=100);
/*
$stock = array(1, 1, 2, 3, 4, -51, 12, 12, -51, 8, 8, 8, 14, 5, 5); 

Малый массив с 5-ю парами. При встрече триплетов:
el: [8, 8, 8]
id: (1, 2, 3)
Считает по парам 1-2 и 2-3 элементы.
*/
$pairs = stock_pairs($stock);

print_r($stock);
print('<p>Количество последовательных пар одинаковых элементов: ' . $pairs . '</p>');
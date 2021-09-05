<?php

/*
На диске лежит файл размером 20000х20000 пикселей.
Вывести её как баннер 200х100. 
Сжать картинку с помощью CSS, HTML низя, решение должно быть на PHP
*/

$name_src = 'image.png';
$name_dst = 'trans.png';

# $size = getimagesize();
# print_r($size);

$img = imagecreatefrompng($name_src);
$scaled = imagescale($img, 200, 100);
imagepng($scaled, $name_dst);

/*
Изображение сжато с помощью средств PHP.
Далее оно выводится с помощью HTML через тэг <img>
*/

?>



<p>
<img src='transformed.png'>
</p>



<?php

#получим размер изображений

print("<p>source: ");
print_r(getimagesize($name_src));

print("</p> <p>destination: ");
print_r(getimagesize($name_dst));
print("</p>");
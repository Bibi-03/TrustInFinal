// Devolver los datos del siguiente usuario en formato JSON
<?php
echo json_encode(array(
  'imagen' => $imagen,
  'nombre' => $nombre,
  'edad' => $edad,
  'kilometro' => $kilometro,
  'descripcion' => $descripcion
));
?>
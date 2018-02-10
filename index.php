<?php

require 'vendor/autoload.php';
session_start();

$app = new \atk4\ui\App('Гороскоп');
$app->initLayout('Centered');

$form = $app->layout->add('Form');
$form->addGroup(['width' => 'three']);
$form->addField('she',['caption'=>'Она','DropDown', 'values' => ['Козерог','Водолей','Рыбы','Овен','Телец','Близнецы','Рак','Лев','Дева','Весы','Скорпион', 'Стрелец']]);
$form->addField('he',['caption'=>'Он','DropDown', 'values' => ['Козерог','Водолей','Рыбы','Овен','Телец','Близнецы','Рак','Лев','Дева','Весы','Скорпион', 'Стрелец']]);
$form->buttonSave->set('Узнать');
$form->onSubmit(function($form) {
	if (($form->model['she'] == '0') and ($form->model['he'] == '5')) {
      $_SESSION['result'] = 'good';
      return new \atk4\ui\jsExpression('document.location = "index.php" ');
  } else {
    $_SESSION['result'] = 'bad';
    return new \atk4\ui\jsExpression('document.location = "index.php" ');
  }
});

$app->add(['ui'=>'hidden divider']);

if (isset($_SESSION['result'])) {
  if ($_SESSION['result'] == 'good') {
    $app->add(['Label','У вас всё будет по высшему, не сразу, но будет!','fluid massive pink','icon'=>'heart']);
  } elseif ($_SESSION['result'] == 'bad') {
    $app->add(['Label','Ну такое','fluid massive violet','icon'=>'star half']);
  }
}

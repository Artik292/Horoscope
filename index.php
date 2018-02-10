<?php

require 'vendor/autoload.php';
session_start();

$app = new \atk4\ui\App('Гороскоп');
$app->initLayout('Centered');

$clean = $app->add(['Button','Очистить результат','red'])->link(['logout']);

$db = new \atk4\data\Persistence_SQL('mysql:host=127.0.0.1;dbname=horoscope;charset=utf8', 'root', '');

class Answer extends \atk4\data\Model {
	public $table = 'main';
function init() {
	parent::init();
	$this->addField('code');
  $this->addField('answer');
}
}

$form = $app->layout->add('Form');
$form->addGroup(['width' => 'two']);
$form->addField('she',['caption'=>'Она','DropDown', 'values' => ['Козерог','Водолей','Рыбы','Овен','Телец','Близнецы','Рак','Лев','Дева','Весы','Скорпион', 'Стрелец']]);
$form->addField('he',['caption'=>'Он','DropDown', 'values' => ['Козерог','Водолей','Рыбы','Овен','Телец','Близнецы','Рак','Лев','Дева','Весы','Скорпион', 'Стрелец']]);
$form->buttonSave->set('Узнать');
$form->onSubmit(function($form) use($db) {

  switch ($form->model['she']) {
   case 0:
         $_SESSION['she'] = 'Козерог';
         break;
   case 1:
         $_SESSION['she'] = 'Водолей';
         break;
   case 2:
         $_SESSION['she'] = 'Рыбы';
         break;
   case 3:
         $_SESSION['she'] = 'Овен';
         break;
   case 4:
         $_SESSION['she'] = 'Телец';
         break;
   case 5:
         $_SESSION['she'] = 'Близнецы';
         break;
   case 6:
         $_SESSION['she'] = 'Рак';
         break;
   case 7:
         $_SESSION['she'] = 'Лев';
         break;
   case 8:
         $_SESSION['she'] = 'Дева';
         break;
   case 9:
         $_SESSION['she'] = 'Весы';
         break;
   case 10:
         $_SESSION['she'] = 'Скорпион';
         break;
   case 11:
         $_SESSION['she'] = 'Стрелец';
         break;
   }

   switch ($form->model['he']) {
    case 0:
          $_SESSION['he'] = 'Козерог';
          break;
    case 1:
          $_SESSION['he'] = 'Водолей';
          break;
    case 2:
          $_SESSION['he'] = 'Рыбы';
          break;
    case 3:
          $_SESSION['he'] = 'Овен';
          break;
    case 4:
          $_SESSION['he'] = 'Телец';
          break;
    case 5:
          $_SESSION['he'] = 'Близнецы';
          break;
    case 6:
          $_SESSION['he'] = 'Рак';
          break;
    case 7:
          $_SESSION['he'] = 'Лев';
          break;
    case 8:
          $_SESSION['he'] = 'Дева';
          break;
    case 9:
          $_SESSION['he'] = 'Весы';
          break;
    case 10:
          $_SESSION['he'] = 'Скорпион';
          break;
    case 11:
          $_SESSION['he'] = 'Стрелец';
          break;
    }





  $compil_answer = $_SESSION['she'] . '$' . $_SESSION['he'];
  $model = new Answer($db);
  $model->LoadBy('code',$compil_answer);
  $_SESSION['answer'] = $model['answer'];
  if (isset($_SESSION['lol'])) {
    unset($_SESSION['lol']);
  }
  $_SESSION['lol'] = $compil_answer;
  return new \atk4\ui\jsExpression('document.location = "index.php" ');
});

$app->add(['ui'=>'hidden divider']);

$app->add(['Button','Admin','green','iconRight'=>'user'])->link(['admin']);


$app->add(['ui'=>'hidden divider']);

if ((isset($_SESSION['answer'])) and (isset($_SESSION['he']))) {
  $app->add(['Label','Она: '.$_SESSION['she'].' ,он: '.$_SESSION['he'].'. Результат:'.$_SESSION['answer'],'massive pink']);
}

/*for ($i=0; $i<=11; $i++ ) { //Add all type of answers
    for ($j=0; $j<=11; $j++){

      switch ($i) {
       case 0:
             $a = 'Козерог';
             break;
       case 1:
             $a = 'Водолей';
             break;
       case 2:
             $a = 'Рыбы';
             break;
       case 3:
             $a = 'Овен';
             break;
       case 4:
             $a = 'Телец';
             break;
       case 5:
             $a = 'Близнецы';
             break;
       case 6:
             $a = 'Рак';
             break;
       case 7:
             $a = 'Лев';
             break;
       case 8:
             $a = 'Дева';
             break;
       case 9:
             $a = 'Весы';
             break;
       case 10:
             $a = 'Скорпион';
             break;
       case 11:
             $a = 'Стрелец';
             break;
       }

       switch ($j) {
        case 0:
              $b = 'Козерог';
              break;
        case 1:
              $b = 'Водолей';
              break;
        case 2:
              $b = 'Рыбы';
              break;
        case 3:
              $b = 'Овен';
              break;
        case 4:
              $b = 'Телец';
              break;
        case 5:
              $b = 'Близнецы';
              break;
        case 6:
              $b = 'Рак';
              break;
        case 7:
              $b = 'Лев';
              break;
        case 8:
              $b = 'Дева';
              break;
        case 9:
              $b = 'Весы';
              break;
        case 10:
              $b = 'Скорпион';
              break;
        case 11:
              $b = 'Стрелец';
              break;
        }

      $model = new Answer($db);
      $model['code'] = $a . '$' . $b;
      $model['answer'] = 'Ещё не готово';
      $model->save();
    }
} */

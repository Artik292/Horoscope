<?PHP
require '../vendor/autoload.php';
$app=new \atk4\ui\App('Числа Фибоначчи!');
$app->initLayout('Centered');
/*if (isset($_GET['go'])) {
  $a = $_GET['a'];
  $b = $_GET['b'];
  $c = $a;
  $a = $a + $b;
  $b = $c;
} else { */
  $a = 1;
  $b = 1;
#}
$label = $app->add('View');
$label->set(' '.$a);
$button=$app->add(['Button','+1'])->on('click', function ($button) use($label,$a,$b) {
  $c = $a;
  $a = $a + $b;
  $b = $c;
  $label->set(' '.$a);
  return new \atk4\ui\jsReload($label);
});
$button->link(['test','go'=>'TRUE','a'=>$a,'b'=>$b]);

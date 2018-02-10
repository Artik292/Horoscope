<?PHP
require 'connection.php';

$app=new \atk4\ui\App('Админка');
$app->initLayout('Centered');

$app->add(['Button','Обратно','primary','icon'=>'reply'])->link(['index']);

$app->add(['ui'=>'hidden divider']);

$CRUD = $app->add(['CRUD']);
$CRUD->setModel(new Answer($db));
//$CRUD->addButton->set('Добавить');

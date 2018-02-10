<?PHP
require 'vendor/autoload.php';
$app=new \atk4\ui\App('Админка');
$app->initLayout('Centered');

$db = new \atk4\data\Persistence_SQL('mysql:host=127.0.0.1;dbname=horoscope;charset=utf8', 'root', '');

$app->add(['Header','Первый знак зодиака её второй его','massive']);

class Answer extends \atk4\data\Model {
	public $table = 'main';
function init() {
	parent::init();
	$this->addField('code');
  $this->addField('answer');
}
}

$app->add(['Button','Обратно','primary','icon'=>'reply'])->link(['index']);

$app->add(['ui'=>'hidden divider']);

$CRUD = $app->add(['CRUD']);
$CRUD->setModel(new Answer($db));
//$CRUD->addButton->set('Добавить');

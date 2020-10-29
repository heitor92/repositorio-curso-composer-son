# Meu pacote

Exemplo de curso

## Exemplo de utilização

```
use Heitor\CursoSON\Hello;
use Monolog\Logger;
use Monolog\Handler\StreamHandler;

$log = new Logger('name');
$log->pushHandler(new StreamHandler('app.log', Logger::WARNING));

$log->warning((new Hello)->say('Heitor'));

```
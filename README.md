# ICO

## Versionamento
Este repositório contém todas as versões já realizadas do ICO. Estas estão divididas em pastas (não é o ideal, mas facilita para encontrar implementações em outras versões de uma forma rápida), sendo a última versão:

```
0.6.0
```


## Instalação

Em primeiro lugar, ```cd``` na versão do projeto mais recente. (No momento é ```0.6.0```)

Antes de iniciar o desenvolvimento é necessário baixar todas as dependências. Para isso, você precisa ter o Node(>=5.0) e o NPM [instalados](https://nodejs.org/en/download/).
Você pode conferir suas instalações com:

```
node -v
```

e

```
npm -v
```

Após conferir suas instalações, execute:

```
npm install
```


## Dependências

Para este projeto, foram utilizadas as seguintes ferramentas/bibliotecas:

* [Node](https://nodejs.org) -> Runtime de Javascript utilizada para Server-Side
* [NPM](https://www.npmjs.com/) -> Package Manager para Javascript
* [Babel js](https://babeljs.io/) -> Compilador Javascript que habilita novas features do JS que ainda não suportadas em todos os browsers.
* [Browserify](http://browserify.org/) -> Separar arquivos js em módulos, como utilizado em NodeJS
* [Browser Sync](https://www.browsersync.io/) -> Ferramenta para teste sincronizado em um ou mais browsers com livereload
* [Gulp](http://gulpjs.com/) -> Build tool para Javascript
* [Jade](http://jade-lang.com/) -> 'Preprocessor' para Html
* [Stylus](http://stylus-lang.com/) -> 'Preprocessor' para Css
* [React](https://facebook.github.io/react/) -> Biblioteca de renderização eficiente de UI do Facebook
* [Redux](http://redux.js.org/) -> Arquitetura baseada em [Flux]() do Facebook que substitui o clássico MVC


## Desenvolvimento

Existem dois comandos que iniciam o projeto:

1.
```
npm start
```
Inicia um servidor na porta especificada em ***process.env.PORT*** ou em locahost:8000.

2.
```
npm run start-dev
```
Inicia todas as tarefas do Gulp e inicia um servidor similar ao descrito acima.


## Debugging

Redux (arquitetura utilizada neste projeto) permite [Time-Travel Debugging](https://github.com/zalmoxisus/redux-devtools-extension). Para utilizá-lo, baixe a extensão sua [extensão do chrome](https://chrome.google.com/webstore/detail/redux-devtools/lmhkpmbekcpmknklioeibfkpmmfibljd?hl=en).


## Estrutura

#### Redux
O projeto está estruturado em [Redux](http://redux.js.org/). Por isso, recomendo uma leitura rápida de sua [documentação](http://redux.js.org/docs/basics/index.html).

Isso pelo fato de ele prezar por uma simples Componentização, Imutabilidade de Estado, descrever todo os Estado da aplicação em um único objeto e garantir um fluxo de dados unidirecional, evitando alguns problemas existentes em paradigmas como MVC, MVVM e M*V. Se quiser mais detalhes, recomendo alguns links:
* https://blog.andyet.com/2015/08/06/what-the-flux-lets-redux/

* http://www.youhavetolearncomputers.com/blog/2015/9/15/a-conceptual-overview-of-redux-or-how-i-fell-in-love-with-a-javascript-state-container

* https://rangle.io/resources/why-redux-future-of-angular-react/

#### Pastas
A pasta ```./app``` contém dois diretórios, ```src``` e ```dist```.

O primeiro é onde todo o desenvolvimento deve ocorrer.

Já o segundo contém o os arquivos que serão servidos para o browser. PS: Nunca modifique o javascript, html ou css diretamente no ```dist```.

Quando o projeto é iniciado na linha de comando, o Gulp se encarrega de automatizar as compilações dos preprocessadores no ```src``` para o ```dist```

#### Componentes

Como em toda aplicação baseada em Redux e React, os elementos principais presentes na tela são separados em componentes, e estes são alimentados pelo mesmo objeto que contém o estado. Até agora, são eles:

```
1. ICO-Editor:
  - ICOF
  - ICOCell
```

#### Criar novos Componentes

Para implementar novos Componentes no projeto, basta:

* criar uma nova pasta em ```./app/src/components``` com o nome do novo Componente
* populá-la com um arquivo ```#{nomeDoComponente}.js``` e um ```#{nomeDoComponente}.styl```
* importar o ```.styl``` no fim do ```./app/src/main.styl.```  

PS: É necessário reiniciar o projeto na linha de comando (#Desenvolvimento) para que o Gulp localize os novos arquivos.

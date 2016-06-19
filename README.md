# ICO

## Versionamento
Este repositório contém todas as versões já realizadas do ICO. Estas estão divididas em pastas, sendo a última versão:

#### 0.6.0

## Instalação

Antes de iniciar o desenvolvimento é necessário baixar todas as dependências. Para isso, você precisa ter Node e NPM [instalados](https://nodejs.org/en/download/).
Após conferir sua instalação, execute:

> npm install

## Desenvolvimento

Existem dois comandos para iniciar o projeto:

* > npm start

Inicia um servidor na porta especificada em ***process.env.PORT*** ou em locahost:8000.

* > npm run start-dev

Inicia todas as tarefas do Gulp e inicia um servidor de similar ao descrito acima.

## Debugging

Redux (arquitetura utilizada neste projeto) permite [Time-Travel Debugging](https://github.com/zalmoxisus/redux-devtools-extension). Para utilizá-lo, baixe a extensão sua [extensão do chrome](https://chrome.google.com/webstore/detail/redux-devtools/lmhkpmbekcpmknklioeibfkpmmfibljd?hl=en).


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

## Estrutura



O projeto está estruturado em [Redux](http://redux.js.org/). Por isso, recomendo uma leitura rápida de sua [documentação](http://redux.js.org/docs/basics/index.html).

Como em toda aplicação baseada em Redux e React, os elementos principais presentes na tela são separados em componentes. Até agora, são eles:

*

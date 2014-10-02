[![Code Climate](https://codeclimate.com/github/evertonts/delivery/badges/gpa.svg)](https://codeclimate.com/github/evertonts/delivery)
[![Test Coverage](https://codeclimate.com/github/evertonts/delivery/badges/coverage.svg)](https://codeclimate.com/github/evertonts/delivery)
[![Dependency Status](https://gemnasium.com/evertonts/delivery.svg)](https://gemnasium.com/evertonts/delivery)
[ ![Codeship Status for evertonts/delivery](https://www.codeship.io/projects/0f6dc7c0-2802-0132-6655-165204d253bc/status)](https://www.codeship.io/projects/37876)

delivery
=======

requisitos
----------

ruby 2.1.3

Para executar o programa
------------------------

`bundle install`<br/>
`cp config/database.yml.sample database.yml` E é necessário colocar as configurações do banco<br/>
`rake db:setup`<br/>
`rails s`

Para rodar os testes
--------------------
`rspec` 

O que foi feito
---------------

Foi feito o serviço de criação do mapa a partir do formato de malha logistica. Para acessa-lo é necessário fazer um `POST` para a rota `/maps/create/:name`, passando o parametro routes indicando a malha logistica, ex:

˜curl localhost:3000/maps/create/new_map -d routes="A B 10"`

O que foi planejado 
-------------------

A parte que não foi implementada foi a essencial, o calculo para custo mínimo da entrega, isso seria feito usando o algoritmo 'Shortest path' do Dijkstra, onde cada rota é uma aresta de um grafo com peso (a distância). Além disso pretendia hospedar o sistema no Heroku e fornecer uma interface para usá-lo.






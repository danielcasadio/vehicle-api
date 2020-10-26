# Vehicle API

### Esta aplicação é um exemplo de API Json RESTFUL 

---

## Especficações 

* Versão Ruby: 2.7.1
* Versão Ruby on Rails: 6.0.3.4

---

## Funcionalidades 

> As funcionalidades desta aplicação funcionam com end-points, para testar as mesmas, utilize a coleção [Vehicles](https://www.getpostman.com/collections/b5c09b8482f00f9a42b7) no Postman.

 - GET/vehicles: Retorna todos os veículos
 - GET/vehicles/{id}: Retorna os detalhes de um veículo específico
 - POST/vehicles: Adiciona um novo veículo
 - PUT/vehicles/{id}: Atualiza os dados de um veículo
 - DELETE/vehicles/{id}: Apaga o veículo

--- 

 ## Uso

 Considerando que já tenha as versões de Ruby e Ruby on Rails especificadas acima, para utilizar, é necessário clonar o repositório

> ``` $ git clone https://github.com/danielcasadio/vehicle-api.git ``` 
>
>``` $ cd vehicle-api ``` 
>
>``` $ bundle ``` 
>
>``` $ rails db:create db:migrate ``` 
>
>``` $ rails server ```

Após completo os passos, será possível testar as end-points pelo Postman.

---

## Contato e Dúvidas

[Daniel Casadio](mailto:danielcasadio@gmail.com)




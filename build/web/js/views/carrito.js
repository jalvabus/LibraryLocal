/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

let app = angular.module('carritoApp', []);

app.controller('carritoController', ($scope, $http) => {

    $scope.usuario = [];

    $scope.validateLogin = function () {
        let params = "?action=authlogin";
        $http({
            method: 'POST',
            url: 'auth' + params
        }).then((response, err) => {
            if (err) {
                return console.log(err);
            }

            let data = response.data;
            console.log(data);
            if (data.nombre) {
                $scope.usuario = data;
            } else {
                location.replace("/LibraryLocal/index.jsp");
            }
        });
    };

    $scope.logout = function () {
        let params = "?action=logout";
        $http({
            method: 'POST',
            url: 'auth' + params
        }).then((response, err) => {
            if (err) {
                return console.log(err);
            }
            console.log(response.data);
            $scope.usuario = response.data;
            location.replace("/LibraryLocal/index.jsp");
        });
    };

    $scope.orden = [];
    $scope.precio = [];

    $scope.cargarDatos = function () {

        if (!localStorage.getItem("orden")) {
            localStorage.setItem("orden", JSON.stringify({libros: []}));
        }

        var total = 0;

        let books = JSON.parse(localStorage.getItem("orden"));
        $scope.orden = books.libros;

        $scope.orden.forEach(function (p) {
            total += p.cantidadCarrito * p.precio;
        });

        $scope.precio.total = total.toFixed(2);
        console.log($scope.orden);
    };

    $scope.limpiarOrden = function () {
        localStorage.setItem("orden", JSON.stringify({libros: []}));
        $scope.orden = [];
        $scope.precio.total = 0.0;
    };

    $scope.reCalcular = function (libro) {
        
        let valor = document.getElementById(libro.id_libro+'libro').value;
        var total = 0;
        var ordenActual = JSON.parse(localStorage.getItem("orden"));

        ordenActual.libros.forEach((elemento, i) => {
            if (libro.id_libro === elemento.id_libro) {
                ordenActual.libros[i].cantidadCarrito = Number(valor);
            }
        });
        
        ordenActual.libros.forEach(function (p) {
            total += p.precio * parseInt(p.cantidadCarrito);
        });

        localStorage.setItem("orden", JSON.stringify(ordenActual));

        $scope.orden = ordenActual.libros;
        
        total1 = total.toFixed(2);

        $scope.precio.total = total1;

    };

    $scope.eliminar = function (libro) {

        if (!localStorage.getItem("orden")) {
            localStorage.setItem("orden", JSON.stringify({libros: []}));
        }

        var total = 0;

        var ordenActual = JSON.parse(localStorage.getItem("orden"));

        let nuevaOrden = {
            libros: []
        };

        ordenActual.libros.forEach(function (p) {
            if (p.id_libro !== libro.id_libro) {
                total += p.cantidadCarrito * p.precio;
                nuevaOrden.libros.push(p);
            }
        });

        localStorage.setItem("orden", JSON.stringify(nuevaOrden));
        
        $scope.orden = nuevaOrden.libros;
        total1 = total.toFixed(2);

        $scope.precio.total = total1;
    };

    $scope.cargarDatos();
    $scope.validateLogin();

});

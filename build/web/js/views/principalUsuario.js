/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

let app = angular.module('principalApp', []);

app.controller('principalController', ($scope, $http) => {
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

    $scope.libros = [];

    $scope.getLibros = function () {
        let params = "?action=getLibros";
        $http({
            method: 'POST',
            url: 'libro' + params
        }).then((response, err) => {
            if (err) {
                return console.log(err);
            }
            let data = response.data;
            console.log(data);
            if (data.length > 0) {
                $scope.libros = data;
            }
        });
    };

    $scope.searchLibro = null;
    $scope.getLibrosSearch = function () {
        let params = "?action=busqueda&nombre=" + $scope.searchLibro;
        $http({
            method: 'POST',
            url: 'libro' + params
        }).then((response, err) => {
            if (err) {
                return console.log(err);
            }
            let data = response.data;
            if (data.length > 0) {
                $scope.libros = data;
            }
        });
    };

    $scope.showDetails = false;

    $scope.libro = [];

    $scope.showDetailsBook = function (book) {
        $scope.libro = book;
        $scope.showDetails = true;
    };

    $scope.hideDetailsBook = function (book) {
        $scope.showDetails = false;
    };

    $scope.agregarCarrito = function (libro) {
        console.log(libro);
        let existe = -1;
        if (!localStorage.getItem("orden")) {
            localStorage.setItem('orden', JSON.stringify({libros: []}));
        }

        var ordenActual = JSON.parse(localStorage.getItem("orden"));

        ordenActual.libros.forEach((elemento, i) => {
            if (libro.id_libro === elemento.id_libro) {
                existe = i;
            }
        });

        if (existe === -1) {
            libro.cantidadCarrito = 1;
            ordenActual.libros.push(libro);
        } else {
            ordenActual.libros[existe].cantidadCarrito++;
        }

        localStorage.setItem("orden", JSON.stringify(ordenActual));
        console.log(ordenActual);

        swal("Agregaste '" + libro.nombre + "' a tu carrito !", "", "success");
    };

    $scope.limpiarOrden = function () {
        localStorage.setItem("orden", JSON.stringify({libros: []}));
    };

    $scope.validateLogin();
    $scope.getLibros();
    // $scope.limpiarOrden();
});


/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

let app = angular.module('principalGerenteApp', []);

app.controller('principalGerenteController', ['$scope', '$http', '$rootScope', ($scope, $http, $rootScope) => {
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

        $scope.libro = [];

        $scope.saveBook = function () {
            let book = $scope.libro;
            let params = "?action=register&nombre=" + book.nombre
                    + "&autor=" + book.autor
                    + "&editorial=" + book.editorial
                    + "&precio=" + book.precio
                    + "&categoria=" + book.categoria
                    + "&anio=" + book.ano_publicacion
                    + "&desc=" + book.descripcion
                    + "&status=" + book.status
                    + "&cantidad=" + book.cantidad
                    + "&foto=" + book.foto;
            $http({
                method: 'POST',
                url: 'libro' + params
            }).then((response, err) => {
                if (err) {
                    return console.log(err);
                }
                swal(response.data);
                $scope.getLibros();
                $scope.libro = [];
            });
        };

        $scope.uploadFile = function (files) {
            $scope.libro.foto = files[0].name;
            console.log($scope.libro);
        };

        $scope.saveEditBook = function () {
            let book = $scope.libro;
            console.log(book);
            let params = "?action=update&nombre=" + book.nombre
                    + "&autor=" + book.autor
                    + "&editorial=" + book.editorial
                    + "&precio=" + book.precio
                    + "&categoria=" + book.categoria
                    + "&anio=" + book.ano_publicacion
                    + "&desc=" + book.descripcion
                    + "&status=" + book.status
                    + "&cantidad=" + book.cantidad
                    + "&foto=" + book.foto
                    + "&id=" + book.id_libro;
            $http({
                method: 'POST',
                url: 'libro' + params
            }).then((response, err) => {
                if (err) {
                    return console.log(err);
                }
                swal("Libro Actualizado !", "Actualizacion exitosa!", "success");
                $scope.getLibros();
                $scope.libro = [];
                $scope.mostrarLibros = true;
                $scope.mostrarFormulario = false;
            });
        };

        $scope.cancel = function () {
            $scope.libro = [];
            $scope.mostrarLibros = true;
            $scope.mostrarFormulario = false;
        };

        $scope.eliminar = function (book) {
            swal({
                title: "Eliminar libro " + book.nombre + "?",
                text: "Si borra este libro se perderan los ejemplares !",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            }).then((willDelete) => {
                if (willDelete) {
                    let params = "?action=eliminar&id=" + book.id_libro;
                    $http({
                        method: 'POST',
                        url: 'libro' + params
                    }).then((response, err) => {
                        console.log(response.data);
                        let data = response.data;
                        swal(data, {
                            icon: "success",
                        });
                        $scope.getLibros();
                    });
                } else {
                    swal("Libro no eliminado");
                }
            });
        };

        $scope.validateLogin();
        $scope.getLibros();

        $scope.mostrarLibros = true;
        $scope.mostrarFormulario = false;
        $scope.title = null;
        $scope.formVisivility = false;

        $scope.editar = function (editBook) {
            $scope.libro = editBook;
            $scope.mostrarLibros = false;
            $scope.mostrarFormulario = true;
            $scope.title = "Editar Libro";
            $scope.formVisivility = false;
        };

        $scope.showLibros = function () {
            $scope.mostrarLibros = true;
            $scope.mostrarFormulario = false;
        };

        $scope.showFormulario = function () {
            $scope.title = "Agregar Nuevo Libro";
            $scope.mostrarLibros = false;
            $scope.mostrarFormulario = true;
            $scope.libro = [];
            $scope.formVisivility = true;
        };

    }]);
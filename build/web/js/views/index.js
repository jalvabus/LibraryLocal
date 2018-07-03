/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

let app = angular.module('indexApp', []);

app.controller('indexController', ($scope, $http) => {
    $scope.viewLogin = false;
    $scope.usaurio = [];

    $scope.alert = function () {
        $scope.viewLogin = true;
    };

    $scope.cancelar = function () {
        $scope.viewLogin = false;
    };

    $scope.login = function () {
        let usuario = $('#usuario').val();
        let password = $('#password').val();
        //let params = "?action=login&usuario=LucytaniaRuz&password=ed321";
        let params = "?action=login&usuario=" + usuario + "&password=" + password + "";
        console.log("Enviando Params");
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
                $scope.usuario = response.data;
                if (data.tipo === 'Admin') {
                    location.replace("/LibraryLocal/PrincipalGerente.jsp");
                } else if (data.tipo === 'Cliente'){
                    location.replace("/LibraryLocal/PrincipalUsuario.jsp");
                }
            } else {
                return alert('Usuario no encontrado');
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
            $scope.usuario = response.data;
            location.replace("/Fernando/index.jsp");
        });
    };

});



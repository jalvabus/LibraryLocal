var app = angular.module('appCompra_boleto', []);

app.controller('ctrlCompra_boleto', ($scope, $http) => {
    $scope.usuario = {};
    $scope.pagosRestantesList = {};

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

            if (data.nombre) {
                $scope.usuario = data;
                console.log($scope.usuario);
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

    $scope.getPagosRestantes = function () {
        var action = 'getPagosRestantesByUsuario';
        $http(
                {
                    method: 'POST',
                    url: 'compra_boleto',
                    data: 'action=' + action,
                    headers: {'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}
                }).then(function successCallback(response) {
            console.log(response);
            $scope.pagosRestantesList = response.data;
        }, function errorCallback(response) {
            console.log(response);
        });
    };

    $scope.pagar = function (folio, pago) {
        var action = 'pagar';
        new Promise((resolve, reject) => {
            var date1 = new Date(pago.fecha_compra);
            var date2 = new Date(getDate());
            var diffDays = date1.getDate() - date2.getDate();
            console.log('Day difference: ' + diffDays);
            resolve(diffDays);
        }).then((diffDays) => {
            /**
             * Validacion para pago despues de 7 dias
             */
            if (Number(diffDays) === 0) {
                $http(
                        {
                            method: 'POST',
                            url: 'compra_boleto',
                            data: 'action=' + action + '&folio=' + folio,
                            headers: {'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}
                        }).then(function successCallback(response) {
                    console.log(response);
                    if (response.data === 'success') {
                        swal('Finalizado !', 'Pago realizado con exito.', 'success');
                        location.replace('comprobantepagoboleto?folio=' + folio);
                    } else {
                        swal('Oops !', response.data, 'error');
                    }

                }, function errorCallback(response) {
                    console.log(response);
                });
            } else if (Number(diffDays) < -7) {
                $http(
                        {
                            method: 'POST',
                            url: 'compra_boleto',
                            data: 'action=' + action + '&folio=' + folio,
                            headers: {'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}
                        }).then(function successCallback(response) {
                    console.log(response);
                    if (response.data === 'success') {
                        swal('Finalizado !', 'Pago realizado con exito.', 'success');
                        location.replace('comprobantepagoboleto?folio=' + folio);
                    } else {
                        swal('Oops !', response.data, 'error');
                    }

                }, function errorCallback(response) {
                    console.log(response);
                });
            } else {
                let params = "?action=cancelarEvento"
                        + "&id_usuario=" + $scope.usuario.id_Usuario
                        + "&id_ventaBoleto=" + pago.folio
                        + "&nombreEvento=" + pago.evento.nombre
                        + "&cantidadDevuelta=" + pago.cantidad_boletos
                        + "&totalDevuelto=" + 0;
                console.log(params);

                $http({
                    method: 'POST',
                    url: 'evento' + params
                }).then((response, err) => {
                    console.log(response.data);
                    $scope.getPagosRestantes();
                    swal({
                        title: "Concluyo su periodo de pago!",
                        text: "Lo sentimos no podemos devolverle su dinero",
                        icon: "error",
                        button: "Aceptar"
                    });
                });

            }
        });

        function getDate() {
            var x = new Date();
            var y = x.getFullYear().toString();
            var m = (x.getMonth() + 1).toString();
            var d = x.getDate().toString();
            if (m.length === 1) {
                m = '0' + m;
            }
            if (d.length === 1) {
                d = '0' + d;
            }
            var yyyymmdd = y + '-' + m + '-' + d;
            return yyyymmdd;
        }

    };

    $scope.getComprobantePago = function (folio) {
        var action = 'pagar';
        $http(
                {
                    method: 'POST',
                    url: 'comprobantepagoboleto',
                    data: 'action=' + action + '&folio=' + folio,
                    headers: {'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}
                }).then(function successCallback(response) {
            console.log(response);
            $scope.getPagosRestantes();
        }, function errorCallback(response) {
            $scope.getPagosRestantes();
            console.log(response);
        });
    };

    $scope.validateLogin();
    $scope.getPagosRestantes();
});


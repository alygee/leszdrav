define(['./../module', 'underscore'], function (module, _) {

    module.controller('ImportExportSettingsController', function ($scope, $routeParams, $location, $timeout, localStorageService, Spinner) {

        $scope.settings = {
            opencart_version: 1,
            include_store_data: 0,
            add_dummy_images: 0,
            include_blog_data: 0
        };

        $scope.saveCookie = function (key) {
            localStorageService.set('j2_' + key, $scope.settings[key]);
        };

        Spinner.hide();

        var getExportLink = function () {
            return _.map($scope.settings, function (value, key) {
                return key + '=' + value;
            }).join('&');
        };

        $scope.confirmation = function ($event, verify) {
            $event.preventDefault();
            var $src = $($event.target || $event.srcElement);
            if ($scope.settings.include_store_data && !confirm('ПРЕДУПРЕЖДЕНИЕ! Это включает в себя данные хранилища из этой установки. Импорт этого файла в ваш магазин заменит все ваши текущие данные на импортируемые. ')) {
                return false;
            } else {
                window.location = $src.attr('href') + '&' + getExportLink();
            }
            return false;
        };

    });

});

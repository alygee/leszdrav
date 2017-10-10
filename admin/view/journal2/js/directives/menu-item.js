define(['./module', 'underscore.string'], function (module, _S) {

    module.factory('MenuItemName', function () {
        var TYPES = {
            category    : 'Категория',
            product     : 'Продукт',
            manufacturer: 'Бренд',
            information : 'Информация',
            opencart    : 'Страница OpenCart',
            custom      : 'Своё'
        };

        var PAGES = {
            'common/home': 'Главная',
            'account/wishlist': 'Избранное',
            'product/compare': 'Сравнение',
            'account/account': 'Аккаунт',
            'checkout/cart': 'Корзина',
            'checkout/checkout': 'Оформление Заказа',
            'information/contact': 'Контакты',
            'account/return/insert': 'Возвраты',
            'information/sitemap': 'Карта Сайта',
            'product/manufacturer': 'Бренды',
            'account/voucher': 'Сертификаты',
            'affiliate/account': 'Партнеры',
            'product/special': 'Акции',
            'product/search': 'Поиск',
            'account/order': 'История Заказов',
            'account/newsletter': 'Рассылка',
            'login': 'Вход (Аккаунт)',
            'register': 'Регистрация (Выход)'
        };

        return function (item) {
            var type = item.menu.menu_type;
            var name = item.menu.menu_item ? item.menu.menu_item.name : 'Элемент Меню';
            if (type === 'custom') {
                name = item.name.value[Journal2Config.languages.default] || 'Элемент Меню';
            }
            if (type === 'opencart') {
                name = PAGES[item.menu.menu_item.page];
            }
            if (item.name_overwrite) {
                name = item.name.value[Journal2Config.languages.default];
            }
            name = name || '';
            var pieces = name.split(' &gt; ');
            return _S.unescapeHTML(pieces.length > 0 ? pieces[pieces.length - 1] : '');
        };
    });

    module.directive('menuItem', function (Rest) {
        return {
            require: '?ngModel',
            scope: {
                ngModel: '='
            },
            restrict: 'E',
            templateUrl: 'view/journal2/tpl/directives/menu-item.html?ver=' + Journal2Config.version,
            controller: function ($scope) {
                $scope.languages = Journal2Config.languages.languages;
            },
            link: function ($scope, $element) {
                $scope.popup_modules = [];
                $($element).find('select').change(function () {
                    if ($scope.ngModel.menu_type === 'opencart') {
                        $scope.ngModel.menu_item.page = 'common/home';
                    }
                });
                $scope.$watch('ngModel', function (val) {
                    if (Object.prototype.toString.call(val.menu_item) === '[object Array]') {
                        val.menu_item = {};
                    }
                    if (val.menu_type === 'opencart' && (!val.menu_item || !val.menu_item.page)) {
                        val.menu_item = val.menu_item || {};
                        val.menu_item.page = 'common/home';
                    }
                    if (val.menu_type === 'popup') {
                        Rest.getModules('popup').then(function (response) {
                            $scope.popup_modules = response;
                        }, function (error) {
                            alert(error);
                        });
                    }
                    $scope.ngModel = val;
                });
                $scope.resetItem = function () {
                    if ($scope.ngModel.menu_type === 'opencart') {
                        $scope.ngModel.menu_item = {};
                        $scope.ngModel.menu_item.page = 'common/home';
                    } else {
                        $scope.ngModel.menu_item = null;
                    }
                    if ($scope.ngModel.menu_type === 'popup') {
                        Rest.getModules('popup').then(function (response) {
                            $scope.popup_modules = response;
                        }, function (error) {
                            alert(error);
                        });
                    }
                };
            }
        };
    });

});
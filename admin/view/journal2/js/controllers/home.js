define(['./module', 'underscore', 'underscore.string'], function (module, _, _S) {

    module.filter('linkName', function () {
        var NAMES = {
            'Productlist'   : 'Список Продуктов',
            'All'           : 'Макет',
            'Form'          : 'Изменение',
            'Category'      : 'Страница Категории',
            'Productlabels'   : 'Общее / Этикетки Продукта',
            'Productgrid'   : 'Сетка Продуктов',
            'Quickview'   : 'Общее / Быстрый Просмотр',
            'Headermenus'   : 'Шапка / Меню',
            'Moduleslider'   : 'Модули / Слайдер',
            'Modulecarousel'   : 'Модули / Карусель',
            'Modulecustomsections'   : 'Модули / Настраиваемые Разделы',
            'Modulesuperfilter'   : 'Модули / Супер Фильтр',
            'Modulecmsblocks'   : 'Модули / CMS Блоки',
            'Moduleheadlinerotator'   : 'Модули / Ротатор Заголовков',
            'Modulephotogallery'   : 'Модули / Фотогалерея',
            'Productpage'   : 'Страница Продукта',
            'Sidecolumn'   : 'Боковые Колонки',
            'Custom code'   : 'Пользовательский Код',
            'Super filter'   : 'Супер Фильтр',
            'Static banners'   : 'Баннеры',
            'Custom sections'   : 'Настраиваемые Разделы',
            'Cms blocks'   : 'CMS Блоки',
            'Side category'   : 'Колонка Категорий',
            'Text rotator'   : 'Ротатор Текста',
            'Headline rotator'   : 'Ротатор Заголовков',
            'Photo gallery'   : 'Фотогалерея',
            'Fullscreen slider'   : 'Полноэкранный Слайдер',
            'Side blocks'   : 'Боковые Блоки',
            'Product tabs'   : 'Вкладки Продукта',
            'Moduletextrotator'   : 'Модули / Ротатор Текста',
            'Slider'   : 'Слайдер / Расширенный',
            'Simple slider'   : 'Слайдер / Простой',
            'Advanced grid'   : 'Расширенная Сетка',
            'Settings' : 'Настройки',
            'General' : 'Общее / Основное',
            'Pages' : 'Общее / Страницы',
            'Countdown' : 'Общее / Обратный Отсчет',
            'Notification' : 'Общее / Уведомление',
            'Welcome' : 'Общее / Модуль Приветствия',
            'Header' : 'Шапка / Основное',
            'Footer' : 'Подвал',
            'Blog' : 'Блог',
            'Blogpostpage' : 'Блог / Страница Статьи',
            'Blogmodules' : 'Блог / Модули Блога',
            'Bloglanguage' : 'Блог / Язык Блога',
            'Modulenewsletter' : 'Модули / Подписка на Рассылку',
            'Modulepopup' : 'Модули / Всплывающее Окно',
            'Catalog' : 'Режим Каталога',
            'System' : 'Система и Производительность',
            'Import export' : 'Импорт Экспорт',
            'Menus' : 'Меню',
            'Primary' : 'Верхнее Меню',
            'Secondary' : 'Второе Меню',
            'Main' : 'Главное Меню',
            'Menu' : 'Меню',
            'Copyright' : 'Авторские Права',
            'Payments' : 'Платежные Системы',
            'Posts' : 'Статьи Блога',
            'Categories' : 'Категории Блога',
            'Comments' : 'Комментарии Блога',
            'Blog posts' : 'Модули Блога / Статьи',
            'Blog side_posts' : 'Модули Блога / Колонка Статей',
            'Blog categories' : 'Модули Блога / Категории',
            'Blog search' : 'Модули Блога / Поиск',
            'Blog tags' : 'Модули Блога / Метки',
            'Carousel' : 'Карусель',
            'Side products' : 'Колонка Продуктов',
            'Newsletter' : 'Подписка на Рассылку',
            'Popup' : 'Всплывающее Окно'
        };

        return function (name) {
            var names = name.split('/');
            names.splice(0, 1);
            names = _.filter(names, function (name) {
                return !$.isNumeric(name) && name !== 'module';
            });
            names = _.map(names, function (name) {
                var temp = name.capitalize().replace('_', ' ');
                return NAMES[temp] || temp;
            });
            return names.join(' / ');
        };
    });

    module.controller('HomeController', function ($scope, Spinner, History) {

        $scope.history = History.get();

        Spinner.hide();

    });

});

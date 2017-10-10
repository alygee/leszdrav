<?php echo $header; ?>
<?php if (isset($column_left)): ?>
<?php echo $column_left; ?>
<?php endif; ?>
<?php if ($success) { ?>
   <div class="success" style="margin-bottom: 0px;"><?php echo $success; ?></div>
   <script>
        setTimeout(function () {
            $('.success').slideUp();
        }, 2000);
   </script>
<?php } ?>
<?php if ($warning) { ?>
<div class="warning" style="margin-bottom: 0px;"><?php echo $warning; ?></div>
<script>
    setTimeout(function () {
        $('.warning').slideUp();
    }, 2000);
</script>
<?php } ?>
<div id="content" class="journal-content<?php echo Front::$IS_OC2 ? 'oc2' : ''; ?>" data-ng-controller="MainController">
<div class="dummy-bg"></div>
<nav>
   <div class="sticky">
       <a class="set-menu" href="<?php echo $base_href;?>#/home"><div class="logo">hgm|group<small>hgmgroup@bk.ru</small></div></a>
   </div>
   <ul id="nav">
       <li class="divider">Панель Управления</li>
       <li class="first-li cp">
           <a class="set-menu" href="<?php echo $base_href;?>#/settings/general/{{getActiveSkin()}}" data-icon='&#xe094;'>Настройки</a>
           <ul data-icon='&#xe61f;'>
               <li>
                   <a href="<?php echo $base_href;?>#/settings/general/{{getActiveSkin()}}" data-icon='&#xe094;'>Общее</a>
                   <ul data-icon='&#xe61f;'>
                       <li><a href="<?php echo $base_href;?>#/settings/general/{{getActiveSkin()}}">Основное</a></li>
                       <li><a href="<?php echo $base_href;?>#/settings/pages/{{getActiveSkin()}}">Страницы</a></li>
                       <li><a href="<?php echo $base_href;?>#/settings/productlabels/{{getActiveSkin()}}">Этикетки Продуктов</a></li>
                       <li><a href="<?php echo $base_href;?>#/settings/countdown/{{getActiveSkin()}}">Обратный Отсчет</a></li>
                       <li><a href="<?php echo $base_href;?>#/settings/notification/{{getActiveSkin()}}">Уведомление</a></li>
                       <li><a href="<?php echo $base_href;?>#/settings/quickview/{{getActiveSkin()}}">Быстрый Просмотр</a></li>
                       <li><a href="<?php echo $base_href;?>#/settings/welcome/{{getActiveSkin()}}">Модуль Приветствия</a></li>
                   </ul>
               </li>
               <li>
                   <a href="<?php echo $base_href;?>#/settings/header/{{getActiveSkin()}}" data-icon='&#xe094;'>Шапка</a>
                   <ul data-icon='&#xe61f;'>
                       <li><a href="<?php echo $base_href;?>#/settings/header/{{getActiveSkin()}}">Основное</a></li>
                       <li><a href="<?php echo $base_href;?>#/settings/headermenus/{{getActiveSkin()}}">Меню</a></li>
                   </ul>
               </li>
               <li><a href="<?php echo $base_href;?>#/settings/footer/{{getActiveSkin()}}">Подвал</a></li>
               <li>
                   <a href="<?php echo $base_href;?>#/settings/blog/{{getActiveSkin()}}" data-icon='&#xe094;'>Блог</a>
                   <ul data-icon='&#xe61f;'>
                       <li><a href="<?php echo $base_href;?>#/settings/blog/{{getActiveSkin()}}">Настройки</a></li>
                       <li><a href="<?php echo $base_href;?>#/settings/blogpostpage/{{getActiveSkin()}}">Страница Статьи</a></li>
                       <li><a href="<?php echo $base_href;?>#/settings/blogmodules/{{getActiveSkin()}}">Модули Блога</a></li>
                       <li><a href="<?php echo $base_href;?>#/settings/bloglanguage/{{getActiveSkin()}}">Язык Блога</a></li>
                   </ul>
               </li>

               <li>
                   <a href="<?php echo $base_href;?>#/settings/moduleslider/{{getActiveSkin()}}" data-icon='&#xe094;'>Модули</a>
                   <ul data-icon='&#xe61f;'>
                       <li><a href="<?php echo $base_href;?>#/settings/moduleslider/{{getActiveSkin()}}">Слайдер</a></li>
                       <li><a href="<?php echo $base_href;?>#/settings/modulecarousel/{{getActiveSkin()}}">Карусель</a></li>
                       <li><a href="<?php echo $base_href;?>#/settings/modulecustomsections/{{getActiveSkin()}}">Настраиваемые Разделы</a></li>
                       <li><a href="<?php echo $base_href;?>#/settings/modulesuperfilter/{{getActiveSkin()}}">Супер Фильтр</a></li>
                       <li><a href="<?php echo $base_href;?>#/settings/modulecmsblocks/{{getActiveSkin()}}">CMS Блоки</a></li>
                       <li><a href="<?php echo $base_href;?>#/settings/moduletextrotator/{{getActiveSkin()}}">Ротатор Текстов</a></li>
                       <li><a href="<?php echo $base_href;?>#/settings/moduleheadlinerotator/{{getActiveSkin()}}">Ротатор Заголовков</a></li>
                       <li><a href="<?php echo $base_href;?>#/settings/modulenewsletter/{{getActiveSkin()}}">Подписка на Рассылку</a></li>
                       <li><a href="<?php echo $base_href;?>#/settings/modulephotogallery/{{getActiveSkin()}}">Фотогалерея</a></li>
                       <li><a href="<?php echo $base_href;?>#/settings/modulepopup/{{getActiveSkin()}}">Всплывающее Окно</a></li>
                   </ul>
               </li>
               <li><a href="<?php echo $base_href;?>#/settings/productgrid/{{getActiveSkin()}}">Сетка Продуктов</a></li>
               <li><a href="<?php echo $base_href;?>#/settings/productlist/{{getActiveSkin()}}">Список Продуктов</a></li>
               <li><a href="<?php echo $base_href;?>#/settings/productpage/{{getActiveSkin()}}">Страница Продукта</a></li>
               <li><a href="<?php echo $base_href;?>#/settings/category/{{getActiveSkin()}}">Страница Категории</a></li>
               <li><a href="<?php echo $base_href;?>#/settings/sidecolumn/{{getActiveSkin()}}">Боковые Колонки</a></li>
               <li><a href="<?php echo $base_href;?>#/settings/catalog/{{getActiveSkin()}}">Режим Каталога</a></li>
               <li><a href="<?php echo $base_href;?>#/settings/custom_code/{{getActiveSkin()}}">Пользовательский Код</a></li>
               <li><a href="<?php echo $base_href;?>#/settings/system">Система и Производительность</a></li>
               <li><a href="<?php echo $base_href;?>#/settings/import_export">Импорт / Экспорт</a></li>
           </ul>
       </li>
       <li class="cp">
           <a class="menu-menu" href="<?php echo $base_href;?>#/menus/primary" data-icon='&#xe094;' >Меню</a>
           <ul data-icon='&#xe61f;'>
               <li><a href="<?php echo $base_href;?>#/menus/primary">Верхнее Меню</a></li>
               <li><a href="<?php echo $base_href;?>#/menus/secondary">Дополнительное Меню</a></li>
               <li><a href="<?php echo $base_href;?>#/menus/main">Главное Меню</a></li>
           </ul>
       </li>
       <li class="cp">
           <a class="foot-menu" href="<?php echo $base_href;?>#/footer/menu" data-icon='&#xe094;' >Подвал</a>
           <ul data-icon='&#xe61f;'>
               <li><a href="<?php echo $base_href;?>#/footer/menu">Меню</a></li>
               <li><a href="<?php echo $base_href;?>#/footer/copyright">Авторские Права</a></li>
               <li><a href="<?php echo $base_href;?>#/footer/payments">Платежные Системы</a></li>
           </ul>
       </li>
       <li class="cp">
           <a class="bs-menu" href="<?php echo $base_href;?>#/blog/settings" data-icon='&#xe094;' >Блог</a>
           <ul data-icon='&#xe61f;'>
               <li><a href="<?php echo $base_href;?>#/blog/settings">Основное</a></li>
               <!--<li><a href="<?php echo $base_href;?>#/blog/authors">Авторы</a></li>-->
               <li><a href="<?php echo $base_href;?>#/blog/posts">Статьи</a></li>
               <li><a href="<?php echo $base_href;?>#/blog/categories">Категории</a></li>
               <li><a href="<?php echo $base_href;?>#/blog/comments">Комментарии</a></li>
           </ul>
       </li>
       <li class="divider">Модули</li>
       <li>
           <a class="blog-menu" href="<?php echo $base_href;?>#/module/blog_categories/all" data-icon='&#xe094;'>Модули Блога</a>
           <ul data-icon='&#xe61f;'>
               <li><a href="<?php echo $base_href;?>#/module/blog_posts/all">Модуль Статей</a></li>
               <li><a href="<?php echo $base_href;?>#/module/blog_side_posts/all">Колонка Статей</a></li>
               <li><a href="<?php echo $base_href;?>#/module/blog_categories/all">Категории</a></li>
               <li><a href="<?php echo $base_href;?>#/module/blog_comments/all">Комментарии</a></li>
               <li><a href="<?php echo $base_href;?>#/module/blog_search/all">Поиск</a></li>
               <li><a href="<?php echo $base_href;?>#/module/blog_tags/all">Метки</a></li>
           </ul>
       </li>
       <li>
           <a class="slide-menu" href="<?php echo $base_href;?>#/module/simple_slider/all" data-icon='&#xe094;'>Слайдер</a>
           <ul data-icon='&#xe61f;'>
               <li><a href="<?php echo $base_href;?>#/module/simple_slider/all">Простой</a></li>
               <li><a href="<?php echo $base_href;?>#/module/slider/all">Расширенный</a></li>
           </ul>
       </li>
       <li>
           <a class="b-menu" href="<?php echo $base_href;?>#/module/static_banners/all">Баннеры</a>
       </li>
       <li>
           <a class="car-menu" href="<?php echo $base_href;?>#/module/carousel/all">Карусель</a>
       </li>
       <li>
           <a class="cs-menu" href="<?php echo $base_href;?>#/module/custom_sections/all">Настраиваемые Разделы</a>
       </li>
       <li>
           <a class="cms-menu" href="<?php echo $base_href;?>#/module/cms_blocks/all">CMS Блоки</a>
       </li>
       <li>
           <a class="sf-menu" href="<?php echo $base_href;?>#/module/super_filter/all">Супер Фильтр</a>
       </li>
       <li>
           <a class="sc-menu" href="<?php echo $base_href;?>#/module/side_category/all">Колонка Категорий</a>
       </li>
       <li>
           <a class="sp-menu" href="<?php echo $base_href;?>#/module/side_products/all">Колонка Продуктов</a>
       </li>
       <li>
           <a class="tr-menu" href="<?php echo $base_href;?>#/module/text_rotator/all">Ротатор Текстов</a>
       </li>
       <li>
           <a class="hr-menu" href="<?php echo $base_href;?>#/module/headline_rotator/all">Ротатор Заголовков</a>
       </li>
       <li>
           <a class="pg-menu" href="<?php echo $base_href;?>#/module/photo_gallery/all">Фотогалерея</a>
       </li>
       <li>
           <a class="sb-menu" href="<?php echo $base_href;?>#/module/side_blocks/all">Настраиваемые Блоки</a>
       </li>
       <li>
           <a class="fs-menu" href="<?php echo $base_href;?>#/module/fullscreen_slider/all">Полноэкранный Слайдер</a>
       </li>
       <li><a class="pt-menu" href="<?php echo $base_href;?>#/module/product_tabs/all">Вкладки / Блоки Продукта</a>
       </li>
       <li>
           <a class="multimod" href="<?php echo $base_href;?>#/module/advanced_grid/all">Расширенная Сетка</a>
       </li>
       <!--<li>-->
           <!--<a class="multimod" href="<?php echo $base_href;?>#/module/carousel_grid/all">Сетка Карусели</a>-->
       <!--</li>-->
       <li>
           <a class="newslet" href="<?php echo $base_href;?>#/module/newsletter/all">Подписка на Рассылку</a>
       </li>
       <li>
           <a class="pop" href="<?php echo $base_href;?>#/module/popup/all">Всплывающее Окно</a>
       </li>
   </ul>
</nav>

<div class="dummy-module-header"></div>

<div class="journal-loading"><span>Загрузка...</span></div>
<div class="border-top"></div>
<div class="journal-body" id="journal-body" data-ng-view>
<div></div>
</div>

<div style="clear: both"></div>

</div>

<script>
    var Journal2Config = $.parseJSON('<?php echo addslashes(json_encode($journal2_config)); ?>');
</script>


<script src="view/journal2/lib/require/require.js"></script>
<script src="view/journal2/journal.js"></script>

<?php if (Front::$IS_OC2): ?>
<script>$('html').addClass('oc2');</script>
<?php endif; ?>

<?php echo $footer; ?>
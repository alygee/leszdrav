<div class="sticky">
   <div class="module-header">
       <div class='module-name'>Настройки<span>Режим Каталога</span></div>

       <skin-manager data-url="settings/general"></skin-manager>

       <div class="module-buttons">
           <?php if (defined('J2ENV')): ?>
           <a class="btn blue" data-ng-show="skin_id< 100" data-ng-click="saveDefault($event)">Экспорт</a>
           <?php endif; ?>
           <!--<a class="btn blue" data-ng-click="multiStore($event)">MultiStore</a>-->
           <a class="btn blue" data-ng-click="saveAs($event)">Сохранить Как</a>
           <a class="btn green" data-ng-click="save($event)">Сохранить</a>
           <a class="btn red" data-ng-show="skin_id< 100" data-ng-click="reset($event)">Сброс</a>
           <a class="btn red" data-ng-show="skin_id >= 100" data-ng-click="delete($event)">Удалить</a>
       </div>
   </div>
</div>
<div class="module-body custom-code">
   <div class="accordion-bar bar-level-0 bar-expand" >
       <a data-ng-click="toggleAccordion(true)" class="hint--top" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(false)" class="hint--top" data-hint="Свернуть"><i class="collapse-icon"></i></a>
       <label class="close-others hint--top" data-hint="Закрыть Разделы"><input type="checkbox" data-ng-model="accordion.close_others" /></label>
   </div>
   <accordion id="main-accordion" close-others="accordion.close_others">
       <accordion-group is-open="accordion.accordions[0]">
       <accordion-heading>
           <div class="accordion-bar bar-level-0">Шапка</div>
       </accordion-heading>
       <ul class="module-create-options">
           <li>
               <span class="module-create-title">Корзина</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_header_cart">
                           <switch-option key="block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>
           <li>
               <span class="module-create-title">Поиск</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_header_search">
                           <switch-option key="block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>
           <li>
               <span class="module-create-title">Язык</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_header_lang">
                           <switch-option key="table-cell">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>
           <li>
               <span class="module-create-title">Валюта</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_header_curr">
                           <switch-option key="table-cell">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>
       </ul>
   </accordion-group>

       <accordion-group is-open="accordion.accordions[1]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Сетка Продуктов</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Кнопка "Купить"</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_cart">
                           <switch-option key="block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Избранное</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_wishlist">
                           <switch-option key="inline-block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Сравнение</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_compare">
                           <switch-option key="inline-block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цена</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_price">
                           <switch-option key="inline-block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Название</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_name">
                           <switch-option key="table">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>



               <accordion-group is-open="false">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-1">Карусель</div>
                   </accordion-heading>
                   <ul class="module-create-options">
                       <li>
                           <span class="module-create-title">Кнопка "Купить"</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_carousel_cart">
                           <switch-option key="block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Избранное</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_carousel_wishlist">
                           <switch-option key="inline-block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Сравнение</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_carousel_compare">
                           <switch-option key="inline-block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цена</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_carousel_price">
                           <switch-option key="inline-block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Название</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_carousel_name">
                           <switch-option key="table">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                   </ul>
               </accordion-group>

               <accordion-group is-open="false">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-1">Карусель - Боковая Колонка</div>
                   </accordion-heading>
                   <ul class="module-create-options">
                       <li>
                           <span class="module-create-title">Кнопка "Купить"</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_side_carousel_cart">
                           <switch-option key="block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Избранное</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_side_carousel_wishlist">
                           <switch-option key="inline-block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Сравнение</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_side_carousel_compare">
                           <switch-option key="inline-block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цена</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_side_carousel_price">
                           <switch-option key="inline-block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Название</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_side_carousel_name">
                           <switch-option key="table">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                   </ul>
               </accordion-group>

               <accordion-group is-open="false">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-1">Настраиваемые Разделы</div>
                   </accordion-heading>
                   <ul class="module-create-options">
                       <li>
                           <span class="module-create-title">Кнопка "Купить"</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_cs_cart">
                           <switch-option key="block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Избранное</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_cs_wishlist">
                           <switch-option key="inline-block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Сравнение</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_cs_compare">
                           <switch-option key="inline-block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цена</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_cs_price">
                           <switch-option key="inline-block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Название</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_cs_name">
                           <switch-option key="table">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                   </ul>
               </accordion-group>
               <accordion-group is-open="false">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-1">Главное Меню</div>
                   </accordion-heading>
                   <ul class="module-create-options">
                       <li>
                           <span class="module-create-title">Кнопка "Купить"</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_main_menu_cart">
                           <switch-option key="block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Избранное</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_main_menu_wishlist">
                           <switch-option key="inline-block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Сравнение</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_main_menu_compare">
                           <switch-option key="inline-block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цена</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_main_menu_price">
                           <switch-option key="inline-block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Название</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_grid_main_menu_name">
                           <switch-option key="table">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                   </ul>
               </accordion-group>
           </ul>
       </accordion-group>


       <accordion-group is-open="accordion.accordions[2]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Список Продуктов</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Кнопка "Купить"</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_list_cart">
                           <switch-option key="block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Избранное</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_list_wishlist">
                           <switch-option key="inline-block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Сравнение</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_list_compare">
                           <switch-option key="inline-block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цена</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_list_price">
                           <switch-option key="inline-block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Название</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_list_name">
                           <switch-option key="table">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Описание</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_list_description">
                           <switch-option key="block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>

       <accordion-group is-open="accordion.accordions[3]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Колонка Продуктов / Продукты в Подвале</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Цена</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.side_list_price">
                           <switch-option key="inline-block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
           </accordion-group>


       <accordion-group is-open="accordion.accordions[4]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Страница Продукта</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Кнопка "Купить"</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_product_page_cart">
                           <switch-option key="block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Избранное</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_product_page_wishlist">
                           <switch-option key="inline-block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Сравнение</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_product_page_compare">
                           <switch-option key="inline-block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Детали Продукта</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_product_page_details">
                           <switch-option key="block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Раздел Цены</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_product_page_price">
                           <switch-option key="block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Варианты</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.catalog_product_page_options">
                           <switch-option key="block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
   </accordion>
</div>

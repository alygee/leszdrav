<div class="sticky">
<div class="module-header">
   <div class='module-name'>Шапка<span>Главное Меню</span></div>

   <store-picker data-url="menus/main"></store-picker>

   <div class="module-buttons">
       <a class="btn green" data-ng-click="save($event)">Сохранить</a>
       <a class="btn red" data-ng-click="reset($event)">Сброс</a>
   </div>
</div>
</div>
<div class="module-body">
   <div class="accordion-bar bar-level-0 bar-expand" >
       <a data-ng-click="toggleAccordion(items, null, true)" class="hint--top" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(items, null, false)" class="hint--top" data-hint="Свернуть"><i class="collapse-icon"></i></a>
       <label class="close-others hint--top" data-hint="Закрыть Разделы"><input type="checkbox" data-ng-model="close_others" /></label>
   </div>
   <accordion close-others="close_others">
       <accordion-group is-open="options.is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Основное</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Тип Отображения</span>
                   <span class="module-create-option">
                       <switch data-ng-model="options.display">
                           <switch-option key="table">Табличный</switch-option>
                           <switch-option key="floated">Плавающий</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="options.display === 'table'">
                   <span class="module-create-title">Макет Таблицы</span>
                   <span class="module-create-option">
                       <switch data-ng-model="options.table_layout">
                           <switch-option key="fixed">Фиксированный</switch-option>
                           <switch-option key="auto">Автоматический</switch-option>
                       </switch>
                   </span>
               </li>
           </ul>
       </accordion-group>
       <accordion-group data-ng-repeat="menu in items" is-open="menu.is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Элемент Меню {{$index + 1}}<a href="javascript:;" class="accordion-remove slide-remove" data-ng-click="removeMenu($index)"><b></b>Удалить</a></div>
           </accordion-heading>
           <ul class="module-create-options">
               <!-- menu type -->
               <li>
                   <span class="module-create-title">Тип Меню</span>
                   <span class="module-create-option">
                       <switch data-ng-model="menu.type">
                           <switch-option key="categories">Категория</switch-option>
                           <switch-option key="products">Продукты</switch-option>
                           <switch-option key="manufacturers">Бренды</switch-option>
                           <switch-option key="custom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Своё&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                           <switch-option key="html">HTML</switch-option>
                           <switch-option key="mixed">Смесь</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Иконка</span>
                   <span class="module-create-option">
                       <icon-select data-ng-model="menu.icon"></icon-select>
                   </span>
               </li>
               <li data-ng-show="options.display === 'floated'">
                   <span class="module-create-title">Выравнивание</span>
                   <span class="module-create-option">
                       <switch data-ng-model="menu.float">
                           <switch-option key="left">Слева</switch-option>
                           <switch-option key="right">Справа</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Скрыть Текст</span>
                   <span class="module-create-option">
                       <switch data-ng-model="menu.hide_text">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <!-- categories -->
               <li data-ng-show="menu.type === 'categories'">
                   <span class="module-create-title">Тип Категорий Меню</span>
                   <span class="module-create-option">
                       <switch data-ng-model="menu.categories.render_as">
                           <switch-option key="megamenu">&nbsp;&nbsp;Мега Меню&nbsp;&nbsp;</switch-option>
                           <switch-option key="dropdown">Мульти Уровень</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="menu.type === 'categories'">
                   <span class="module-create-title">Элемент Категории</span>
                   <span class="module-create-option">
                       <switch data-ng-model="menu.categories.type">
                           <switch-option key="existing">Существующий</switch-option>
                           <switch-option key="custom">&nbsp;&nbsp;&nbsp;&nbsp;Выбрать&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="menu.type === 'categories' && menu.categories.type === 'existing'">
                   <span class="module-create-title">Главная Категория</span>
                   <span class="module-create-option">
                       <category-search model="menu.categories.top"></category-search>
                   </span>
               </li>
               <li data-ng-show="menu.type === 'categories' && menu.categories.type === 'custom'">
                   <span class="module-create-title">Категория</span>
                   <span class="module-create-option">
                       <ul class="simple-list">
                           <li data-ng-repeat="item in menu.categories.items">
                               <category-search model="item.data"></category-search>
                               <a class="btn red delete" data-ng-click="removeItem(menu.categories, $index)">X</a>
                           </li>
                       </ul>
                       <a class="btn blue add-product" data-ng-click="addItem(menu.categories)">Добавить</a>
                   </span>
               </li>
               <li data-ng-show="menu.type === 'categories' && menu.categories.render_as === 'megamenu'">
                   <span class="module-create-title">Тип Ссылок</span>
                   <span class="module-create-option">
                       <switch data-ng-model="menu.categories.links_type">
                           <switch-option key="categories">Подкатегории</switch-option>
                           <switch-option key="products">&nbsp;&nbsp;Продукты&nbsp;&nbsp;</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="menu.type === 'categories' && menu.categories.render_as === 'megamenu'">
                   <span class="module-create-title">Показывать</span>
                   <span class="module-create-option">
                       <switch data-ng-model="menu.categories.show">
                           <switch-option key="links">&nbsp;&nbsp;Ссылки&nbsp;&nbsp;</switch-option>
                           <switch-option key="image">Изображения</switch-option>
                           <switch-option key="both">&nbsp;&nbsp;&nbsp;&nbsp;Оба&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="menu.type === 'categories' && menu.categories.render_as === 'megamenu' && menu.categories.show === 'both'">
                   <span class="module-create-title">Позиция Изображения</span>
                   <span class="module-create-option">
                       <switch data-ng-model="menu.categories.image_position">
                           <switch-option key="left">Слева</switch-option>
                           <switch-option key="top">Сверху</switch-option>
                           <switch-option key="right">Справа</switch-option>
                       </switch>
                   </span>
               </li>

               <!-- products -->
               <li data-ng-show="menu.type === 'products'">
                   <span class="module-create-title">Источник</span>
                   <span class="module-create-option">
                       <switch data-ng-model="menu.products.source">
                           <switch-option key="module">Модуль</switch-option>
                           <switch-option key="category">Категория</switch-option>
                           <switch-option key="manufacturer">Бренд</switch-option>
                           <switch-option key="random">Случайно</switch-option>
                           <switch-option key="custom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Своё&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="menu.type === 'products' && menu.products.source === 'category'">
                   <span class="module-create-title">Категория</span>
                   <span class="module-create-option">
                       <category-search model="menu.products.category"></category-search>
                   </span>
               </li>
               <li data-ng-show="menu.type === 'products' && menu.products.source === 'module'">
                   <span class="module-create-title">Модуль</span>
                   <span class="module-create-option">
                       <switch data-ng-model="menu.products.module_type">
                           <switch-option key="featured">Рекомендуем&nbsp;&nbsp;</switch-option>
                           <switch-option key="latest">Последнее</switch-option>
                           <switch-option key="bestseller">Хит Продаж</switch-option>
                           <switch-option key="special">&nbsp;&nbsp;&nbsp;&nbsp;Акция&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="menu.type === 'products' && menu.products.source === 'module' && menu.products.module_type == 'featured' && featured_modules !== null">
                   <span class="module-create-title">Рекомендуемые Модули</span>
                   <span class="module-create-option">
                       <select data-ng-model="menu.products.featured_module_id" ui-select2="{width: 50, minimumResultsForSearch: -1, placeholder: 'Выберите Модуль'}">
                           <option value=""></option>
                           <option data-ng-repeat="module in featured_modules" value="{{module.module_id}}">{{module.name}}</option>
                       </select>
                   </span>
               </li>
               <li data-ng-show="menu.type === 'products' && menu.products.source === 'manufacturer'">
                   <span class="module-create-title">Бренд</span>
                   <span class="module-create-option">
                       <manufacturer-search model="menu.products.manufacturer"></manufacturer-search>
                   </span>
               </li>
               <!-- custom -->
               <li data-ng-show="menu.type === 'custom'">
                   <span class="module-create-title">Ссылка</span>
                   <span class="module-create-option">
                       <menu-item data-ng-model="menu.custom.top"></menu-item>
                   </span>
               </li>
               <li data-ng-show="menu.type === 'custom'">
                   <span class="module-create-title">Открыть в Новом Окне</span>
                   <span class="module-create-option">
                       <switch data-ng-model="menu.custom.target">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">{{ menu.type === 'manufacturers' || menu.type === 'custom' || menu.type === 'html' || menu.type === 'mixed' || (menu.type === 'categories' && menu.categories.type === 'custom') ? '' : 'Своё ' }}Название</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="menu.name"></j-opt-text-lang>
                   </span>
               </li>

               <li data-ng-hide="menu.type === 'categories' || menu.type === 'custom'">
                   <span class="module-create-title">Ссылка</span>
                   <span class="module-create-option">
                       <menu-item data-ng-model="menu.html_menu_link"></menu-item>
                   </span>
               </li>

               <!-- custom products -->
               <li data-ng-show="menu.type === 'products' && menu.products.source === 'custom'">
                   <span class="module-create-title">Продукты</span>
                   <span class="module-create-option">
                       <ul class="simple-list">
                           <li data-ng-repeat="item in menu.products.items">
                               <product-search model="item.data"></product-search>
                               <a class="btn red delete" data-ng-click="removeItem(menu.products, $index)">X</a>
                           </li>
                       </ul>
                       <a class="btn blue add-product" data-ng-click="addItem(menu.products)">Добавить</a>
                   </span>
               </li>
               <li data-ng-show="menu.type === 'manufacturers'">
                   <span class="module-create-title">Бренды</span>
                   <span class="module-create-option">
                       <switch data-ng-model="menu.manufacturers.type">
                           <switch-option key="all">&nbsp;&nbsp;Все&nbsp;&nbsp;</switch-option>
                           <switch-option key="custom">Выбрать</switch-option>
                       </switch>
                   </span>
               </li>
               <!-- manufacturers -->
               <li data-ng-show="menu.type === 'manufacturers' && menu.manufacturers.type === 'custom'">
                   <span class="module-create-title">Бренды</span>
                   <span class="module-create-option">
                       <ul class="simple-list">
                           <li data-ng-repeat="item in menu.manufacturers.items">
                               <manufacturer-search model="item.data"></manufacturer-search>
                               <a class="btn red delete" data-ng-click="removeItem(menu.manufacturers, $index)">X</a>
                           </li>
                       </ul>
                       <a class="btn blue add-product" data-ng-click="addItem(menu.manufacturers)">Добавить</a>
                   </span>
               </li>
               <li data-ng-show="menu.type === 'manufacturers'">
                   <span class="module-create-title">Показывать</span>
                   <span class="module-create-option">
                       <switch data-ng-model="menu.manufacturers.show">
                           <switch-option key="text">Текст</switch-option>
                           <switch-option key="image">Изображения</switch-option>
                           <switch-option key="both">Оба</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="(menu.type === 'categories' && menu.categories.render_as === 'megamenu' && menu.categories.show !== 'links') || menu.type === 'products' || (menu.type === 'manufacturers' && menu.manufacturers.show != 'text')">
                   <span class="module-create-title">Размер Изображения</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-number-field" data-ng-model="menu.image_width" /> x<input type="text" class="journal-number-field" data-ng-model="menu.image_height" />
                       <switch data-ng-model="menu.image_type">
                           <switch-option key="fit">Вписать</switch-option>
                           <switch-option key="crop">Обрезать</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-hide="(menu.type === 'categories' && menu.categories.render_as === 'dropdown') || (menu.type === 'custom') || (menu.type === 'mixed')">
                   <span class="module-create-title">Элементов в Строке</span>
                   <span class="module-create-option">
                       <j-opt-items-per-row data-ng-model="menu.items_per_row"></j-opt-items-per-row>
                   </span>
               </li>
               <li data-ng-show="(menu.type === 'categories' && menu.categories.render_as === 'megamenu') || (menu.type === 'manufacturers' && menu.manufacturers.type === 'all') || (menu.type === 'products' && menu.products.source !== 'custom')">
                   <span class="module-create-title">Лимит Элементов</span>
                   <span class="module-create-option">
                       <input type="text" data-ng-model="menu.items_limit" class="journal-input journal-sort" />
                   </span>
               </li>

               <li>
                   <span class="module-create-title">Отключать на Мобильных</span>
                   <span class="module-create-option">
                       <switch data-ng-model="menu.hide_on_mobile">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>

               <!-- status -->
               <li>
                   <span class="module-create-title">Статус</span>
                   <span class="module-create-option">
                       <switch data-ng-model="menu.status">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <!-- sort order -->
               <li>
                   <span class="module-create-title">Порядок</span>
                   <span class="module-create-option">
                       <input type="text" data-ng-model="menu.sort_order" class="journal-input journal-sort" />
                   </span>
               </li>
           </ul>
           <!-- custom text -->
           <div data-ng-show="menu.type === 'html'" class="accordion-bar bar-level-1 bar-expand" >
               <a data-ng-click="toggleAccordion(menu.html_blocks, menu, true)" class="hint--top hint-fix" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(menu.html_blocks, menu, false)" class="hint--top hint-fix" data-hint="Свернуть"><i class="collapse-icon"></i></a>
               <label class="close-others hint--top" data-hint="Закрыть Разделы"><input type="checkbox" data-ng-model="menu.close_others" /></label>
           </div>
           <accordion data-ng-show="menu.type === 'html'" close-others="menu.close_others">
               <accordion-group data-ng-repeat="block in menu.html_blocks" is-open="block.is_open">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-2">Подкатегория {{$index + 1}}<a href="javascript:;" class="accordion-remove slide-remove" data-ng-click="removeHtmlBlock(menu, $index)"><b></b>Удалить</a></div>
                   </accordion-heading>
                   <ul class="module-create-options">
                       <li>
                           <span class="module-create-title">Заголовок</span>
                           <span class="module-create-option">
                               <j-opt-text-lang data-ng-model="block.title"></j-opt-text-lang>
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Ссылка</span>
                           <span class="module-create-option">
                               <menu-item data-ng-model="block.link"></menu-item>
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Статус</span>
                           <span class="module-create-option">
                               <switch data-ng-model="block.status">
                                   <switch-option key="1">ВКЛ</switch-option>
                                   <switch-option key="0">ВЫКЛ</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Порядок</span>
                           <span class="module-create-option">
                               <input type="text" data-ng-model="block.sort_order" class="journal-input journal-sort" />
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Содержание</span>
                           <span class="module-create-option">
                               <ck-editor data-ng-model="block.text"></ck-editor>
                           </span>
                       </li>
                   </ul>
               </accordion-group>
            </accordion>
           <!-- custom items -->
           <div data-ng-show="menu.type === 'custom'" class="accordion-bar bar-level-1 bar-expand" >
               <a data-ng-click="toggleAccordion(menu.custom.items, menu.custom, true)" class="hint--top hint-fix" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(menu.custom.items, menu.custom, false)" class="hint--top hint-fix" data-hint="Свернуть"><i class="collapse-icon"></i></a>
               <label class="close-others hint--top" data-hint="Закрыть Разделы"><input type="checkbox" data-ng-model="menu.custom.close_others" /></label>
           </div>
           <accordion data-ng-show="menu.type === 'custom'" close-others="menu.custom.close_others">
               <accordion-group data-ng-repeat="item in menu.custom.items" is-open="item.is_open">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-2">Подкатегория {{$index + 1}}<a href="javascript:;" class="accordion-remove slide-remove" data-ng-click="removeSubMenu(menu.custom, $index)"><b></b>Удалить</a></div>
                   </accordion-heading>
                   <ul class="module-create-options">
                       <li>
                           <span class="module-create-title">Ссылка</span>
                           <span class="module-create-option">
                               <menu-item data-ng-model="item.menu"></menu-item>
                           </span>
                       </li>
                       <li data-ng-show="menu.type === 'custom'">
                           <span class="module-create-title">Открыть в Новом Окне</span>
                           <span class="module-create-option">
                               <switch data-ng-model="item.target">
                                   <switch-option key="1">ВКЛ</switch-option>
                                   <switch-option key="0">ВЫКЛ</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Своё Название</span>
                           <span class="module-create-option">
                               <j-opt-text-lang data-ng-model="item.name"></j-opt-text-lang>
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Порядок</span>
                           <span class="module-create-option">
                               <input type="text" data-ng-model="item.sort_order" class="journal-input journal-sort" />
                           </span>
                       </li>
                   </ul>
               </accordion-group>
           </accordion>
           <!-- mixed -->
           <div data-ng-show="menu.type === 'mixed'" class="accordion-bar bar-level-1 bar-expand" >
               <a data-ng-click="toggleAccordion(menu.custom.items, menu.custom, true)" class="hint--top hint-fix" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(menu.custom.items, menu.custom, false)" class="hint--top hint-fix" data-hint="Свернуть"><i class="collapse-icon"></i></a>
               <label class="close-others hint--top" data-hint="Закрыть Разделы"><input type="checkbox" data-ng-model="menu.custom.close_others" /></label>
           </div>
           <accordion data-ng-show="menu.type === 'mixed'" close-others="menu.custom.close_others">
               <accordion-group data-ng-repeat="column in menu.mixed_columns" is-open="column.is_open">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-2">Колонка {{$index + 1}}<a href="javascript:;" class="accordion-remove slide-remove" data-ng-click="removeColumn(menu, $index)"><b></b>Удалить</a></div>
                   </accordion-heading>
                   <ul class="module-create-options">
                       <li>
                           <span class="module-create-title">Тип Колонки</span>
                           <span class="module-create-option">
                               <switch data-ng-model="column.type">
                                   <switch-option key="categories">Категории</switch-option>
                                   <switch-option key="products">Продукты</switch-option>
                                   <switch-option key="manufacturers">Бренды</switch-option>
                                   <switch-option key="html-block">HTML</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li data-ng-hide="column.type === 'categories'">
                           <span class="module-create-title">Своё Название</span>
                           <span class="module-create-option">
                               <j-opt-text-lang data-ng-model="column.name"></j-opt-text-lang>
                           </span>
                       </li>

                       <!-- ------------- mixed categories --------------- -->

                       <li data-ng-show="column.type === 'categories'">
                           <span class="module-create-title">Элемент Категории</span>
                           <span class="module-create-option">
                               <switch data-ng-model="column.categories.type">
                                   <switch-option key="existing">Существующий</switch-option>
                                   <switch-option key="custom">&nbsp;&nbsp;&nbsp;&nbsp;Выбрать&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'categories' && column.categories.type === 'existing'">
                           <span class="module-create-title">Главная Категория</span>
                           <span class="module-create-option">
                               <category-search model="column.categories.top"></category-search>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'categories' && column.categories.type === 'custom'">
                           <span class="module-create-title">Категория</span>
                           <span class="module-create-option">
                               <ul class="simple-list">
                                   <li data-ng-repeat="item in column.categories.items">
                                       <category-search model="item.data"></category-search>
                                       <a class="btn red delete" data-ng-click="removeItem(column.categories, $index)">X</a>
                                   </li>
                               </ul>
                               <a class="btn blue add-product" data-ng-click="addItem(column.categories)">Добавить</a>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'categories'">
                           <span class="module-create-title">Тип Ссылок</span>
                           <span class="module-create-option">
                               <switch data-ng-model="column.categories.links_type">
                                   <switch-option key="categories">Подкатегория</switch-option>
                                   <switch-option key="products">&nbsp;&nbsp;Продукты&nbsp;&nbsp;</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'categories'">
                           <span class="module-create-title">Показывать</span>
                           <span class="module-create-option">
                               <switch data-ng-model="column.categories.show">
                                   <switch-option key="links">Ссылки</switch-option>
                                   <switch-option key="image">Изображения</switch-option>
                                   <switch-option key="both">Оба</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'categories' && column.categories.show === 'both'">
                           <span class="module-create-title">Позиция Изображения</span>
                           <span class="module-create-option">
                               <switch data-ng-model="column.categories.image_position">
                                   <switch-option key="left">Слева</switch-option>
                                   <switch-option key="top">Сверху</switch-option>
                                   <switch-option key="right">Справа</switch-option>
                               </switch>
                           </span>
                       </li>

                       <!-- ---------------------------------------------- -->

                       <!-- ---------- mixed products -------------------- -->
                       <li data-ng-show="column.type === 'products'">
                           <span class="module-create-title">Источник</span>
                           <span class="module-create-option">
                               <switch data-ng-model="column.products.source">
                                   <switch-option key="module">Модуль</switch-option>
                                   <switch-option key="category">Категория</switch-option>
                                   <switch-option key="manufacturer">Бренд</switch-option>
                                   <switch-option key="random">Случайно</switch-option>
                                   <switch-option key="custom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Своё&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'products' && column.products.source === 'category'">
                           <span class="module-create-title">Категория</span>
                           <span class="module-create-option">
                               <category-search model="column.products.category"></category-search>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'products' && column.products.source === 'module'">
                           <span class="module-create-title">Модуль</span>
                           <span class="module-create-option">
                               <switch data-ng-model="column.products.module_type">
                                   <switch-option key="featured">Рекомендуем</switch-option>
                                   <switch-option key="latest">Последнее</switch-option>
                                   <switch-option key="bestseller">Хит Продаж</switch-option>
                                   <switch-option key="special">Акция</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'products' && column.products.source === 'module' && column.products.module_type == 'featured' && featured_modules !== null">
                           <span class="module-create-title">Рекомендуемые Модули</span>
                           <span class="module-create-option">
                               <select data-ng-model="column.products.featured_module_id" ui-select2="{width: 50, minimumResultsForSearch: -1, placeholder: 'Выберите Модуль'}">
                                   <option value=""></option>
                                   <option data-ng-repeat="module in featured_modules" value="{{module.module_id}}">{{module.name}}</option>
                               </select>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'products' && column.products.source === 'manufacturer'">
                           <span class="module-create-title">Бренд</span>
                           <span class="module-create-option">
                               <manufacturer-search model="column.products.manufacturer"></manufacturer-search>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'products' && column.products.source === 'custom'">
                           <span class="module-create-title">Продукты</span>
                           <span class="module-create-option">
                               <ul class="simple-list">
                                   <li data-ng-repeat="item in column.products.items">
                                       <product-search model="item.data"></product-search>
                                       <a class="btn red delete" data-ng-click="removeItem(column.products, $index)">X</a>
                                   </li>
                               </ul>
                               <a class="btn blue add-product" data-ng-click="addItem(column.products)">Добавить</a>
                           </span>
                       </li>

                       <!-- ---------------------------------------------- -->

                       <!-- ------------- manufacturers ------------------ -->

                       <li data-ng-show="column.type === 'manufacturers'">
                           <span class="module-create-title">Бренды</span>
                           <span class="module-create-option">
                               <switch data-ng-model="column.manufacturers.type">
                                   <switch-option key="all">&nbsp; &nbsp; &nbsp;Все&nbsp; &nbsp; &nbsp;</switch-option>
                                   <switch-option key="custom">Выбрать</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'manufacturers' && column.manufacturers.type === 'custom'">
                           <span class="module-create-title">Бренды</span>
                           <span class="module-create-option">
                               <ul class="simple-list">
                                   <li data-ng-repeat="item in column.manufacturers.items">
                                       <manufacturer-search model="item.data"></manufacturer-search>
                                       <a class="btn red delete" data-ng-click="removeItem(column.manufacturers, $index)">X</a>
                                   </li>
                               </ul>
                               <a class="btn blue add-product" data-ng-click="addItem(column.manufacturers)">Добавить</a>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'manufacturers'">
                           <span class="module-create-title">Показывать</span>
                           <span class="module-create-option">
                               <switch data-ng-model="column.manufacturers.show">
                                   <switch-option key="text">Текст</switch-option>
                                   <switch-option key="image">Изображения</switch-option>
                                   <switch-option key="both">Оба</switch-option>
                               </switch>
                           </span>
                       </li>



                       <!-- ---------------------------------------------- -->
                       <!-- -------------- global settings --------------- -->
                       <li>
                           <span class="module-create-title">Ширина Колонки</span>
                           <span class="module-create-option">
                               <select data-ng-model="column.width" ui-select2="{width: 50, minimumResultsForSearch: -1, placeholder: 'Выберите Ширину'}">
                                   <option value=""></option>
                                   <option value="25">25%</option>
                                   <option value="33.33333">33%</option>
                                   <option value="50">50%</option>
                                   <option value="66.66666">66%</option>
                                   <option value="75">75%</option>
                                   <option value="100">100%</option>
                               </select>
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Размер Изображения</span>
                           <span class="module-create-option">
                               <input type="text" class="journal-number-field" data-ng-model="column.image_width" /> x<input type="text" class="journal-number-field" data-ng-model="column.image_height" />
                               <switch data-ng-model="column.image_type">
                                   <switch-option key="fit">Вписать</switch-option>
                                   <switch-option key="crop">Обрезать</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Элементов в Строке</span>
                           <span class="module-create-option">
                               <j-opt-items-per-row data-ng-model="column.items_per_row"></j-opt-items-per-row>
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Лимит Элементов</span>
                           <span class="module-create-option">
                               <input type="text" data-ng-model="column.items_limit" class="journal-input journal-sort" />
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Отключать на Мобильных</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="column.hide_on_mobile">
                                       <switch-option key="1">ВКЛ</switch-option>
                                       <switch-option key="0">ВЫКЛ</switch-option>
                                   </switch>
                               </span>
                           </li>
                       <li>
                           <span class="module-create-title">Статус</span>
                           <span class="module-create-option">
                               <switch data-ng-model="column.status">
                                   <switch-option key="1">ВКЛ</switch-option>
                                   <switch-option key="0">ВЫКЛ</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Порядок</span>
                           <span class="module-create-option">
                               <input type="text" data-ng-model="column.sort_order" class="journal-input journal-sort" />
                           </span>
                       </li>
                       <!-- ---------------------------------------------- -->

                       <!-- --------------- html block ------------------- -->

                       <li data-ng-show="column.type === 'html-block'">
                           <span class="module-create-title">Содержание</span>
                           <span class="module-create-option">
                               <ck-editor data-ng-model="column.html_text"></ck-editor>
                           </span>
                       </li>
                   </ul>
                   <accordion close-others="false">
                       <accordion-group data-ng-repeat="cms_block in column.cms_blocks" is-open="cms_block.is_open">
                           <accordion-heading>
                               <div class="accordion-bar bar-level-2">CMS Блок {{$index + 1}}<a href="javascript:;" class="accordion-remove slide-remove" data-ng-click="removeCMSBlock(column, $index)"><b></b>Удалить</a></div>
                           </accordion-heading>
                           <ul class="module-create-options">

                               <li>
                                   <span class="module-create-title">Позиция</span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="cms_block.position">
                                           <switch-option key="top">Сверху</switch-option>
                                           <switch-option key="bottom">Снизу</switch-option>
                                       </switch>
                                   </span>
                               </li>
                               <li>
                                   <span class="module-create-title">Статус</span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="cms_block.status">
                                           <switch-option key="1">ВКЛ</switch-option>
                                           <switch-option key="0">ВЫКЛ</switch-option>
                                       </switch>
                                   </span>
                               </li>
                               <li>
                                   <span class="module-create-title">Порядок</span>
                                   <span class="module-create-option">
                                       <input type="text" data-ng-model="cms_block.sort_order" class="journal-input journal-sort" />
                                   </span>
                               </li>
                               <li>
                                   <span class="module-create-title">Содержание</span>
                                   <span class="module-create-option">
                                       <ck-editor data-ng-model="cms_block.content"></ck-editor>
                                   </span>
                               </li>
                           </ul>
                       </accordion-group>
                   </accordion>
                   <div data-ng-show="menu.type === 'mixed'" class="add-level add-level-3" data-ng-click="addCMSBlock(column)">Добавить CMS Блок +</div>
               </accordion-group>
           </accordion>
           <div data-ng-show="menu.type === 'custom'" class="add-level add-level-2" data-ng-click="addSubMenu(menu.custom)">Добавить Подкатегорию +</div>
           <div data-ng-show="menu.type === 'html'" class="add-level add-level-2" data-ng-click="addHtmlBlock(menu)">Добавить Элемент +</div>
           <div data-ng-show="menu.type === 'mixed'" class="add-level add-level-2" data-ng-click="addColumn(menu)">Добавить Колонку +</div>
       </accordion-group>
   </accordion>
   <div class="add-level add-level-1" data-ng-click="addMenu()">Добавить Элемент Меню +</div>
</div>
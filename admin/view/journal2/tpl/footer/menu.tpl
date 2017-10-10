<div class="sticky">
<div class="module-header">
   <div class='module-name'>Подвал<span>Меню</span></div>

   <store-picker data-url="footer/menu"></store-picker>

   <div class="module-buttons">
       <a class="btn green" data-ng-click="save($event)">Сохранить</a>
       <a class="btn red" data-ng-click="reset($event)">Сброс</a>
   </div>
</div>
</div>
<div class="module-body footer-columns">
   <div class="accordion-bar bar-level-0 bar-expand" >
       <a data-ng-click="toggleAccordion(rows, 'scope', null, true)" class="hint--top" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(rows, 'scope', null, false)" class="hint--top" data-hint="Свернуть"><i class="collapse-icon"></i></a>
       <label class="close-others hint--top" data-hint="Закрыть Разделы"><input type="checkbox" data-ng-model="close_others" /></label>
   </div>
   <accordion close-others="close_others">
       <!-- rows -->
       <accordion-group data-ng-repeat="row in rows" is-open="row.is_open">
           <div class="dummy-1"></div>
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Строка {{$index + 1}}<a href="javascript:;" class="accordion-remove slide-remove" data-ng-click="removeRow($index)"><b ></b>Удалить</a></div>
           </accordion-heading>
           <ul class="module-create-options lvl-0">
               <li>
                   <span class="module-create-title">Тип Строки</span>
                   <span class="module-create-option">
                       <switch data-ng-model="row.type">
                           <switch-option key="columns">Колонки</switch-option>
                           <switch-option key="contacts">Контакты</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Элементов в Строке</span>
                   <span class="module-create-option">
                       <j-opt-items-per-row data-ng-model="row.items_per_row"></j-opt-items-per-row>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Фон</span>
                   <span class="module-create-option">
                       <j-opt-background data-ng-model="row.background" data-bgcolor="true"></j-opt-background>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Поля<small>Верх-Право-Низ-Лево</small></span>
                   <span class="module-create-option">
                       <input type="text" data-ng-model="row.padding_top" class="journal-sort journal-input" /> -
                       <input type="text" data-ng-model="row.padding_right" class="journal-sort journal-input" /> -
                       <input type="text" data-ng-model="row.padding_bottom" class="journal-sort journal-input" /> -
                       <input type="text" data-ng-model="row.padding_left" class="journal-sort journal-input" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Отступ Снизу</span>
                   <span class="module-create-option">
                       <input type="text" data-ng-model="row.bottom_spacing" class="journal-input journal-number-field" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Статус</span>
                   <span class="module-create-option">
                       <switch data-ng-model="row.status">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Отключать на Мобильных</span>
                   <span class="module-create-option">
                       <switch data-ng-model="row.disable_mobile">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Порядок</span>
                   <span class="module-create-option">
                       <input type="text" data-ng-model="row.sort_order" class="journal-input journal-sort" />
                   </span>
               </li>
           </ul>
           <div class="accordion-bar bar-level-1 bar-expand" data-ng-show="row.type === 'columns'">
               <a data-ng-click="toggleAccordion(row.columns, null, row, true)" class="hint--top hint-fix" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(row.columns, null, row, false)" class="hint--top hint-fix" data-hint="Свернуть"><i class="collapse-icon"></i></a>
               <label class="close-others hint--top" data-hint="Закрыть Разделы"><input type="checkbox" data-ng-model="row.close_others" /></label>
           </div>
           <accordion close-others="row.close_others" data-ng-show="row.type === 'columns'">
               <!-- columns -->
               <accordion-group data-ng-repeat="column in row.columns" is-open="column.is_open">
                   <div class="dummy-2"></div>
                   <accordion-heading>
                       <div class="accordion-bar bar-level-1">Колонка {{$index + 1}}<a href="javascript:;" class="accordion-remove slide-remove" data-ng-click="removeColumn(row, $index)"><b ></b>Удалить</a></div>
                   </accordion-heading>
                   <ul class="module-create-options lvl-1">
                       <li>
                           <span class="module-create-title">Тип Колонки</span>
                           <span class="module-create-option">
                               <switch data-ng-model="column.type">
                                   <switch-option key="menu">Меню</switch-option>
                                   <switch-option key="text">HTML</switch-option>
                                   <switch-option key="newsletter">Рассылка</switch-option>
                                   <switch-option key="products">Продукты</switch-option>
                                   <switch-option key="posts">Статьи</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Заголовок</span>
                           <span class="module-create-option">
                               <j-opt-text-lang data-ng-model="column.title"></j-opt-text-lang>
                           </span>
                       </li>
                       <li data-ng-show="column.type == 'text'">
                           <span class="module-create-title">Добавить Иконку</span>
                           <span class="module-create-option">
                               <switch data-ng-model="column.icon_status">
                                   <switch-option key="1">ВКЛ</switch-option>
                                   <switch-option key="0">ВЫКЛ</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li data-ng-show="column.icon_status == 1 && column.type == 'text'">
                           <span class="module-create-title">Иконка</span>
                           <span class="module-create-option">
                               <icon-select data-ng-model="column.icon"></icon-select>
                           </span>
                       </li>
                       <li data-ng-show="column.icon_status == 1 && column.type == 'text'">
                           <span class="module-create-title">Позиция Иконки</span>
                           <span class="module-create-option">
                               <switch data-ng-model="column.icon_position">
                                   <switch-option key="left">Слева</switch-option>
                                   <switch-option key="top">Сверху</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li data-ng-show="column.icon_status == 1 && column.type == 'text'">
                           <span class="module-create-title">Фон Контейнера Иконки</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="column.icon_bg_color"></j-opt-color>
                           </span>
                       </li>
                       <li data-ng-show="column.icon_status == 1 && column.type == 'text'">
                           <span class="module-create-title">Настройка Границ Контейнера Иконки</span>
                           <span class="module-create-option">
                               <j-opt-border data-ng-model="column.icon_border"></j-opt-border>
                           </span>
                       </li>
                       <li data-ng-show="column.icon_status == 1 && column.type == 'text'">
                           <span class="module-create-title">Размер Контейнера Иконки</span>
                           <span class="module-create-option">
                               <input type="text" class="journal-number-field" data-ng-model="column.icon_width" /> x<input type="text" class="journal-number-field" data-ng-model="column.icon_height" />
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'text'">
                           <span class="module-create-title">Содержание</span>
                           <span class="module-create-option">
                               <ck-editor data-ng-model="column.text"></ck-editor>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'newsletter'">
                           <span class="module-create-title">Модуль</span>
                           <span class="module-create-option">
                               <select data-ng-model="column.newsletter_id" ui-select2="{width: 50, minimumResultsForSearch: -1, placeholder: 'Выберите Модуль'}">
                                   <option value=""></option>
                                   <option data-ng-repeat="module in newsletter_modules" value="{{module.module_id}}">{{module.module_data.module_name}}</option>
                               </select>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'products'">
                           <span class="module-create-title">Тип Раздела</span>
                           <span class="module-create-option">
                               <switch data-ng-model="column.section_type">
                                   <switch-option key="module">Модуль</switch-option>
                                   <switch-option key="category">Категория</switch-option>
                                   <switch-option key="manufacturer">Бренд</switch-option>
                                   <switch-option key="random">Случайно</switch-option>
                                   <switch-option key="custom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Своё&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'posts'">
                           <span class="module-create-title">Тип Статей</span>
                           <span class="module-create-option">
                               <switch data-ng-model="column.posts_type">
                                   <switch-option key="newest">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Последние&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                                   <switch-option key="comments">Комментируемые</switch-option>
                                   <switch-option key="views">Просматриваемые</switch-option>
                                   <switch-option key="custom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Своё&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'posts' && column.posts_type === 'custom'">
                           <span class="module-create-title">Статьи</span>
                           <span class="module-create-option">
                               <ul class="simple-list">
                                   <li data-ng-repeat="post in column.posts">
                                       <blog-post-search model="post.data"></blog-post-search>
                                       <a class="btn red delete" href="javascript:;" data-ng-click="removePost(column, $index)">X</a>
                                   </li>
                               </ul>
                               <a href="javascript:;" data-ng-click="addPost(column)" class="btn blue add-product">Добавить</a>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'products' && column.section_type == 'module'">
                           <span class="module-create-title">Тип Модуля</span>
                           <span class="module-create-option">
                               <switch data-ng-model="column.module_type">
                                   <switch-option key="featured">Рекомендуем</switch-option>
                                   <switch-option key="bestsellers">Хиты Продаж</switch-option>
                                   <switch-option key="specials">Акции</switch-option>
                                   <switch-option key="latest">Последнее</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'products' && column.section_type == 'module' && column.module_type == 'featured' && featured_modules !== null">
                           <span class="module-create-title">Рекомендуемые Модули</span>
                           <span class="module-create-option">
                               <select data-ng-model="column.featured_module_id" ui-select2="{width: 50, minimumResultsForSearch: -1, placeholder: 'Выберите Модуль'}">
                                   <option value=""></option>
                                   <option data-ng-repeat="module in featured_modules" value="{{module.module_id}}">{{module.name}}</option>
                               </select>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'products' && column.section_type == 'category'">
                           <span class="module-create-title">Категория</span>
                           <span class="module-create-option">
                               <category-search model="column.category.data"></category-search>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'products' && column.section_type == 'manufacturer'">
                           <span class="module-create-title">Бренд</span>
                           <span class="module-create-option">
                               <manufacturer-search model="column.manufacturer.data"></manufacturer-search>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'products' && column.section_type == 'custom'">
                           <span class="module-create-title">Продукты</span>
                           <span class="module-create-option">
                                <ul class="simple-list">
                                    <li data-ng-repeat="item in column.products">
                                        <product-search model="item.data"></product-search>
                                        <a class="btn red delete" href="javascript:;" data-ng-click="removeProduct(column, $index)">X</a>
                                    </li>
                                </ul>
                               <a href="javascript:;" class="btn blue add-product" data-ng-click="addProduct(column)">Добавить</a>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'products' && column.section_type == 'random'">
                           <span class="module-create-title">Случайно от</span>
                           <span class="module-create-option">
                               <switch data-ng-model="column.random_from">
                                   <switch-option key="all"> &nbsp;&nbsp;&nbsp; Всех &nbsp;&nbsp;&nbsp;</switch-option>
                                   <switch-option key="category">Выбрать</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'products' && column.section_type == 'random' && column.random_from == 'category'">
                           <span class="module-create-title">Категория</span>
                           <span class="module-create-option">
                               <category-search model="column.random_from_category"></category-search>
                           </span>
                       </li>
                       <li data-ng-show="column.type === 'products' || column.type === 'posts'">
                           <span class="module-create-title">Лимит Элементов</span>
                           <span class="module-create-option">
                                <input type="text" value="" class="journal-input journal-sort" data-ng-model="column.items_limit" />
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
                           <span class="module-create-title">Отключать на Мобильных</span>
                           <span class="module-create-option">
                               <switch data-ng-model="column.disable_mobile">
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
                   </ul>
                   <!-- column item -->
                   <div class="accordion-bar bar-level-2 bar-expand" data-ng-show="row.type === 'columns'">
                       <a data-ng-click="toggleAccordion(column.items, null, column, true)" class="hint--top hint-fix" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(column.items, null, column, false)" class="hint--top hint-fix" data-hint="Свернуть"><i class="collapse-icon"></i></a>
                       <label class="close-others hint--top" data-hint="Закрыть Разделы"><input type="checkbox" data-ng-model="column.close_others" /></label>
                   </div>
                   <accordion close-others="column.close_others" data-ng-show="column.type === 'menu'">
                       <accordion-group data-ng-repeat="item in column.items" is-open="item.is_open">
                           <div class="dummy-3"></div>
                           <accordion-heading>
                               <div class="accordion-bar bar-level-2">Элемент Меню {{$index + 1}}<a href="javascript:;" class="accordion-remove slide-remove" data-ng-click="removeItem(column, $index)"><b ></b>Удалить</a></div>
                           </accordion-heading>
                           <ul class="module-create-options lvl-2">
                               <li>
                                   <span class="module-create-title">Иконка</span>
                                   <span class="module-create-option">
                                       <icon-select data-ng-model="item.icon"></icon-select>
                                   </span>
                               </li>
                               <li>
                                   <span class="module-create-title">Ссылка</span>
                                   <span class="module-create-option">
                                       <menu-item data-ng-model="item.menu"></menu-item>
                                   </span>
                               </li>
                               <li data-ng-hide="item.menu.menu_type === 'custom'">
                                   <span class="module-create-title">Своё Название</span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="item.name_overwrite">
                                           <switch-option key="1">ВКЛ</switch-option>
                                           <switch-option key="0">ВЫКЛ</switch-option>
                                       </switch>
                                   </span>
                               </li>
                               <li data-ng-show="item.name_overwrite === '1' || item.menu.menu_type === 'custom'">
                                   <span class="module-create-title">Название</span>
                                   <span class="module-create-option">
                                       <j-opt-text-lang data-ng-model="item.name"></j-opt-text-lang>
                                   </span>
                               </li>
                               <li>
                                   <span class="module-create-title">Открыть в Новом Окне</span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="item.target">
                                           <switch-option key="1">ВКЛ</switch-option>
                                           <switch-option key="0">ВЫКЛ</switch-option>
                                       </switch>
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
                   <div class="add-level add-level-2" data-ng-click="addItem(column)" data-ng-show="row.type === 'columns' && column.type === 'menu'">Добавить Элемент Меню +</div>
               </accordion-group>
           </accordion>
           <div class="accordion-bar bar-level-1 bar-expand" data-ng-show="row.type === 'contacts'">
               <a data-ng-click="toggleAccordion(row.contacts, null, row, true)" class="hint--top hint-fix" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(row.contacts, null, row, false)" class="hint--top hint-fix" data-hint="Свернуть"><i class="collapse-icon"></i></a>
               <label class="close-others hint--top" data-hint="Закрыть Разделы"><input type="checkbox" data-ng-model="row.close_others" /></label>
           </div>
           <accordion close-others="row.close_others" data-ng-show="row.type === 'contacts'">
               <!-- contacts -->
               <accordion-group data-ng-repeat="contact in row.contacts" is-open="contact.is_open">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-1">{{ 'Контакт' + ($index + 1) }}<a href="javascript:;" class="accordion-remove slide-remove" data-ng-click="removeContact(row, $index)"><b ></b>Удалить</a></div>
                   </accordion-heading>
                   <ul class="module-create-options">
                       <li>
                           <span class="module-create-title">Позиция</span>
                           <span class="module-create-option">
                               <switch data-ng-model="contact.position">
                                   <switch-option key="left">Слева</switch-option>
                                   <switch-option key="right">Справа</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Иконка</span>
                           <span class="module-create-option">
                               <icon-select data-ng-model="contact.icon"></icon-select>
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Название</span>
                           <span class="module-create-option">
                               <j-opt-text-lang data-ng-model="contact.name"></j-opt-text-lang>
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Как Подсказка</span>
                           <span class="module-create-option">
                               <switch data-ng-model="contact.tooltip">
                                   <switch-option key="1">ВКЛ</switch-option>
                                   <switch-option key="0">ВЫКЛ</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Ссылка</span>
                           <span class="module-create-option">
                               <menu-item data-ng-model="contact.link"></menu-item>
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Открыть в Новом Окне</span>
                           <span class="module-create-option">
                               <switch data-ng-model="contact.target">
                                   <switch-option key="1">ВКЛ</switch-option>
                                   <switch-option key="0">ВЫКЛ</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Порядок</span>
                           <span class="module-create-option">
                               <input type="text" class="journal-input journal-sort" data-ng-model="contact.sort_order" />
                           </span>
                       </li>
                   </ul>
               </accordion-group>
           </accordion>
           <div class="add-level add-level-1" data-ng-click="addColumn(row)" data-ng-show="row.type === 'columns'">Добавить Колонку +</div>
           <div class="add-level add-level-1" data-ng-click="addContact(row)" data-ng-show="row.type === 'contacts'">Добавить Контакт +</div>
       </accordion-group>
   </accordion>
   <div class="add-level add-level-0" data-ng-click="addRow()">Добавить Строку +</div>
</div>
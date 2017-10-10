<div class="sticky">
<div class="module-header">
   <div class='module-name'>Карусель<span data-ng-show="module_id == null">Создание Модуля</span><span data-ng-show="module_id != null">Изменение Модуля</span></div>
   <div class="module-buttons">
       <a href="<?php echo $base_href;?>#/module/{{module_type}}/all/{{module_id}}" data-ng-show="module_id != null" class="btn blue">Добавить в Макет</a>
       <a data-ng-click="save($event)" class="btn green">Сохранить</a>
       <a href="<?php echo $base_href;?>#/module/{{module_type}}/all" data-ng-show="module_id == null" class="btn red">Отмена</a>
       <a data-ng-click="delete($event)" data-ng-show="module_id != null" class="btn red">Удалить</a>
   </div>
</div>
</div>
<div class="module-body module-form">
   <div class="accordion-bar bar-level-0 bar-expand" >
       <a data-ng-click="toggleAccordion(true)" class="hint--top" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(false)" class="hint--top" data-hint="Свернуть"><i class="collapse-icon"></i></a>
       <label class="close-others hint--top" data-hint="Закрыть Разделы"><input type="checkbox" data-ng-model="module_data.close_others" /></label>
   </div>
   <accordion close-others="module_data.close_others">
       <accordion-group is-open="module_data.general_is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Основное</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Название Модуля</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-name-field" data-ng-model="module_data.module_name" required />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Тип Модуля</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.module_type">
                           <switch-option key="product">Продукт</switch-option>
                           <switch-option key="category">Категория</switch-option>
                           <switch-option key="manufacturer">Бренд</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Размер Изображения</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-number-field" data-ng-model="module_data.image_width" /> x<input type="text" class="journal-number-field" data-ng-model="module_data.image_height" />
                       <switch data-ng-model="module_data.image_type">
                           <switch-option key="fit">Вписать</switch-option>
                           <switch-option key="crop">Обрезать</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ Изображения</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="module_data.image_border"></j-opt-border>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Элемента</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="module_data.image_bgcolor"></j-opt-color>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Элементов в Строке</span>
                   <span class="module-create-option">
                       <j-opt-items-per-row data-ng-model="module_data.items_per_row"></j-opt-items-per-row>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Стрелки</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.arrows">
                           <switch-option key="none">Нет</switch-option>
                           <switch-option key="top">Сверху</switch-option>
                           <switch-option key="side">Сбоку</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Индикаторы</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.bullets">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Скрыть Заголовок<small>Если одна карусель</small></span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.show_title">
                           <switch-option key="0">ВКЛ</switch-option>
                           <switch-option key="1">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-if="module_data.module_type == 'manufacturer'">
                   <span class="module-create-title">Название Бренда</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.brand_name">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Автопрокрутка</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.autoplay">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="module_data.autoplay == '1'">
                   <span class="module-create-title">Пауза при Наведении</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.pause_on_hover">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="module_data.autoplay == '1'">
                   <span class="module-create-title">Задержка Перехода</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-number-field" data-ng-model="module_data.transition_delay" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Скорость Перехода</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-number-field" data-ng-model="module_data.transition_speed" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Отключать на Мобильных</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.disable_mobile">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-hide="module_data.disable_mobile">
                   <span class="module-create-title">Сенсорное Управление</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.touch_drag">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
           </ul>
       </accordion-group>
       <accordion-group is-open="module_data.top_bottom_is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Настройка Позиции и Фона</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Фон</span>
                       <span class="module-create-option">
                           <j-opt-background data-ng-model="module_data.background" data-bgcolor="true"></j-opt-background>
                       </span>
               </li>
               <li>
                   <span class="module-create-title">По Всей Ширине</span>
                       <span class="module-create-option">
                           <switch data-ng-model="module_data.fullwidth">
                               <switch-option key="1">ВКЛ</switch-option>
                               <switch-option key="0">ВЫКЛ</switch-option>
                           </switch>
                       </span>
               </li>
               <li>
                   <span class="module-create-title">Отступ<small>Верх/Низ</small></span>
                   <span class="module-create-option">
                       <input type="text" class="journal-number-field" data-ng-model="module_data.margin_top" /> x<input type="text" class="journal-number-field" data-ng-model="module_data.margin_bottom" />
                   </span>
               </li>
               <li data-ng-show="module_data.fullwidth == 0">
                   <span class="module-create-title">Фон Модуля</span>
                   <span class="module-create-option">
                       <j-opt-background data-ng-model="module_data.module_background" data-bgcolor="true"></j-opt-background>
                   </span>
               </li>
               <li data-ng-show="module_data.fullwidth == 0">
                   <span class="module-create-title">Желоб<small>Пространство между столбцами</small></span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.module_padding">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
           </ul>
       </accordion-group>
       <accordion-group data-ng-repeat="section in module_data.product_sections" data-ng-if="module_data.module_type == 'product'" is-open="section.is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-1"> {{section.section_title.value[default_language] || ('Раздел ' + ($index + 1))}}<a class="accordion-remove slide-remove" data-ng-click="removeSection(module_data.product_sections, $index)"><b></b>Удалить</a></div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Заголовок Раздела</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="section.section_title"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Тип Раздела</span>
                   <span class="module-create-option">
                       <switch data-ng-model="section.section_type">
                           <switch-option key="module">Модуль</switch-option>
                           <switch-option key="category">Категория</switch-option>
                           <switch-option key="manufacturer">Бренд</switch-option>
                           <switch-option key="random">Случайно</switch-option>
                           <switch-option key="custom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Своё&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                           <switch-option key="link">Ссылка</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="section.section_type == 'module'">
                   <span class="module-create-title">Тип Модуля<small data-ng-show="section.section_type == 'module' && (section.module_type === 'related' || section.module_type === 'people-also-bought')">Только в макете продукта</small></span>
                   <span class="module-create-option">
                       <select data-ng-model="section.module_type" ui-select2="{minimumResultsForSearch: -1}">
                           <option value="featured">Рекомендуемое</option>
                           <option value="bestsellers">Хиты Продаж</option>
                           <option value="specials">Акции</option>
                           <option value="latest">Последнее</option>
                           <option value="related">Связанные</option>
                           <option value="people-also-bought">Уже Купили</option>
                           <option value="recently-viewed">Вы Смотрели</option>
                           <option value="most-viewed">Просматриваемые</option>
                       </select>
                   </span>
               </li>
               <li data-ng-show="section.section_type == 'module' && section.module_type == 'featured' && featured_modules !== null">
                   <span class="module-create-title">Рекомендуемые Модули</span>
                   <span class="module-create-option">
                       <select data-ng-model="section.featured_module_id" ui-select2="{width: 50, minimumResultsForSearch: -1, placeholder: 'Выберите Модуль'}">
                           <option value=""></option>
                           <option data-ng-repeat="module in featured_modules" value="{{module.module_id}}">{{module.name}}</option>
                       </select>
                   </span>
               </li>
               <li data-ng-show="section.section_type == 'module' && section.module_type == 'specials'">
                   <span class="module-create-title">Только Сегодняшние Акции</span>
                   <span class="module-create-option">
                       <switch data-ng-model="section.todays_specials_only">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="section.section_type == 'module' && section.module_type == 'specials'">
                   <span class="module-create-title">Обратный Отсчет</span>
                   <span class="module-create-option">
                       <switch data-ng-model="section.countdown_visibility">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="section.section_type == 'category'">
                   <span class="module-create-title">Категория</span>
                   <span class="module-create-option">
                       <category-search model="section.category.data"></category-search>
                   </span>
               </li>
               <li data-ng-show="section.section_type == 'manufacturer'">
                   <span class="module-create-title">Бренд</span>
                   <span class="module-create-option">
                       <manufacturer-search model="section.manufacturer.data"></manufacturer-search>
                   </span>
               </li>
               <li data-ng-show="section.section_type == 'custom'">
                   <span class="module-create-title">Продукты</span>
                   <span class="module-create-option">
                        <ul class="simple-list">
                            <li data-ng-repeat="item in section.products">
                                <product-search model="item.data"></product-search>
                                <a class="btn red delete" href="javascript:;" data-ng-click="removeProduct(section, $index)">X</a>
                            </li>
                        </ul>
                       <a href="javascript:;" class="btn blue add-product" data-ng-click="addProduct(section)">Добавить</a>
                   </span>
               </li>
               <li data-ng-show="section.section_type == 'random'">
                   <span class="module-create-title">Случайно от</span>
                      <span class="module-create-option">
                      <switch data-ng-model="section.random_from">
                          <switch-option key="all"> &nbsp;&nbsp;&nbsp; Всех &nbsp;&nbsp;&nbsp;</switch-option>
                          <switch-option key="category">Выбрать</switch-option>
                      </switch>
                   </span>
               </li>
               <li data-ng-show="section.section_type == 'random' && section.random_from == 'category'">
                   <span class="module-create-title">Категория</span>
                   <span class="module-create-option">
                       <category-search model="section.random_from_category"></category-search>
                   </span>
               </li>
               <li data-ng-show="section.section_type == 'link'">
                   <span class="module-create-title">Ссылка</span>
                   <span class="module-create-option">
                       <menu-item data-ng-model="section.link"></menu-item>
                   </span>
               </li>
               <li data-ng-show="section.section_type == 'link'">
                   <span class="module-create-title">Открыть в Новом Окне</span>
                   <span class="module-create-option">
                       <switch data-ng-model="section.new_window">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <!--<li data-ng-show="section.section_type == 'module' && (section.module_type === 'featured' || section.module_type === 'bestsellers' || section.module_type === 'specials' || section.module_type === 'latest')">-->
                   <!--<span class="module-create-title">Auto Category<small>Category Layout Only</small></span>-->
                      <!--<span class="module-create-option">-->
                      <!--<switch data-ng-model="section.filter_category">-->
                          <!--<switch-option key="1">ВКЛ</switch-option>-->
                          <!--<switch-option key="0">ВЫКЛ</switch-option>-->
                      <!--</switch>-->
                   <!--</span>-->
               <!--</li>-->
               <li>
                   <span class="module-create-title">Статус</span>
                      <span class="module-create-option">
                      <switch data-ng-model="section.status">
                          <switch-option key="1">ВКЛ</switch-option>
                          <switch-option key="0">ВЫКЛ</switch-option>
                      </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Раздел по Умолчанию</span>
                      <span class="module-create-option">
                      <switch data-ng-model="section.default_section" data-ng-change="setDefault(module_data.product_sections, $index)">
                          <switch-option key="1">ВКЛ</switch-option>
                          <switch-option key="0">ВЫКЛ</switch-option>
                      </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Лимит Элементов</span>
                   <span class="module-create-option">
                        <input type="text" value="" class="journal-input journal-sort" data-ng-model="section.items_limit" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Порядок</span>
                   <span class="module-create-option">
                        <input type="text" value="" class="journal-input journal-sort" data-ng-model="section.sort_order" />
                   </span>
               </li>
           </ul>
       </accordion-group>
       <accordion-group data-ng-repeat="section in module_data.category_sections" data-ng-if="module_data.module_type == 'category'" is-open="section.is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-1"> {{section.section_title.value[default_language] || ('Раздел ' + ($index + 1))}}<a class="accordion-remove slide-remove" data-ng-click="removeSection(module_data.category_sections, $index)"><b></b>Удалить</a></div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Заголовок Раздела</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="section.section_title"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Категории</span>
                   <span class="module-create-option">
                       <switch data-ng-model="section.section_type">
                           <switch-option key="top">&nbsp;&nbsp;&nbsp;Основные&nbsp;&nbsp;&nbsp;</switch-option>
                           <switch-option key="sub">Подкатегории</switch-option>
                           <switch-option key="custom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Своё&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                           <switch-option key="link">&nbsp;&nbsp;&nbsp;Ссылка&nbsp;&nbsp;&nbsp;</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="section.section_type == 'sub'">
                   <span class="module-create-title">Выберите</span>
                   <span class="module-create-option">
                       <category-search model="section.category_sub"></category-search>
                   </span>
               </li>
               <li data-ng-show="section.section_type == 'custom'">
                   <span class="module-create-title">Категории</span>
                   <span class="module-create-option">
                       <ul class="simple-list">
                           <li data-ng-repeat="item in section.categories">
                               <category-search model="item.data"></category-search>
                               <a class="btn red delete" href="javascript:;" data-ng-click="removeCategory(section, $index)">X</a>
                           </li>
                       </ul>
                       <a href="javascript:;" class="btn blue add-product" data-ng-click="addCategory(section)">Добавить</a>
                   </span>
               </li>
               <li data-ng-show="section.section_type == 'link'">
                   <span class="module-create-title">Ссылка</span>
                   <span class="module-create-option">
                       <menu-item data-ng-model="section.link"></menu-item>
                   </span>
               </li>
               <li data-ng-show="section.section_type == 'link'">
                   <span class="module-create-title">Открыть в Новом Окне</span>
                   <span class="module-create-option">
                       <switch data-ng-model="section.new_window">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Статус</span>
                      <span class="module-create-option">
                      <switch data-ng-model="section.status">
                          <switch-option key="1">ВКЛ</switch-option>
                          <switch-option key="0">ВЫКЛ</switch-option>
                      </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Раздел по Умолчанию</span>
                      <span class="module-create-option">
                      <switch data-ng-model="section.default_section"  data-ng-change="setDefault(module_data.category_sections, $index)">
                          <switch-option key="1">ВКЛ</switch-option>
                          <switch-option key="0">ВЫКЛ</switch-option>
                      </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Лимит Элементов</span>
                   <span class="module-create-option">
                        <input type="text" value="" class="journal-input journal-sort" data-ng-model="section.items_limit" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Порядок</span>
                   <span class="module-create-option">
                        <input type="text" value="" class="journal-input journal-sort" data-ng-model="section.sort_order" />
                   </span>
               </li>
           </ul>
       </accordion-group>
       <accordion-group data-ng-repeat="section in module_data.manufacturer_sections" data-ng-if="module_data.module_type == 'manufacturer'" is-open="section.is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-1"> {{section.section_title.value[default_language] || ('Раздел ' + ($index + 1))}}<a class="accordion-remove slide-remove" data-ng-click="removeSection(module_data.manufacturer_sections, $index)"><b></b>Удалить</a></div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Заголовок Раздела</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="section.section_title"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Бренды</span>
                   <span class="module-create-option">
                       <switch data-ng-model="section.section_type">
                           <switch-option key="all">&nbsp;&nbsp;&nbsp;Все&nbsp;&nbsp;&nbsp;</switch-option>
                           <switch-option key="custom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Своё&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                           <switch-option key="link">Ссылка</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="section.section_type == 'custom'">
                   <span class="module-create-title">Бренды</span>
                   <span class="module-create-option">
                       <ul class="simple-list">
                           <li data-ng-repeat="item in section.manufacturers">
                               <manufacturer-search model="item.data"></manufacturer-search>
                               <a class="btn red delete" href="javascript:;" data-ng-click="removeManufacturer(section, $index)">X</a>
                           </li>
                       </ul>
                       <a href="javascript:;" class="btn blue add-product" data-ng-click="addManufacturer(section)">Добавить</a>
                   </span>
               </li>
               <li data-ng-show="section.section_type == 'link'">
                   <span class="module-create-title">Ссылка</span>
                   <span class="module-create-option">
                       <menu-item data-ng-model="section.link"></menu-item>
                   </span>
               </li>
               <li data-ng-show="section.section_type == 'link'">
                   <span class="module-create-title">Открыть в Новом Окне</span>
                   <span class="module-create-option">
                       <switch data-ng-model="section.new_window">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Статус</span>
                      <span class="module-create-option">
                      <switch data-ng-model="section.status">
                          <switch-option key="1">ВКЛ</switch-option>
                          <switch-option key="0">ВЫКЛ</switch-option>
                      </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Раздел по Умолчанию</span>
                      <span class="module-create-option">
                      <switch data-ng-model="section.default_section" data-ng-change="setDefault(module_data.manufacturer_sections, $index)">
                          <switch-option key="1">ВКЛ</switch-option>
                          <switch-option key="0">ВЫКЛ</switch-option>
                      </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Лимит Элементов</span>
                   <span class="module-create-option">
                        <input type="text" value="" class="journal-input journal-sort" data-ng-model="section.items_limit" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Порядок</span>
                   <span class="module-create-option">
                        <input type="text" value="" class="journal-input journal-sort" data-ng-model="section.sort_order" />
                   </span>
               </li>
           </ul>
       </accordion-group>
   </accordion>
   <div class="add-level add-level-1" data-ng-click="addSection(module_data.module_type)">Добавить Раздел +</div>
</div>

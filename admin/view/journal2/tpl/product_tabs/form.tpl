<div class="sticky">
<div class="module-header">
   <div class='module-name'>Вкладки / Блоки Продукта<span data-ng-show="module_id == null">Создание Модуля</span><span data-ng-show="module_id != null">Изменение Модуля</span></div>
   <div class="module-buttons">
       <a href="<?php echo $base_href;?>#/module/{{module_type}}/all/{{module_id}}" data-ng-show="module_id != null" class="btn blue">Список Модулей</a>
       <a data-ng-click="save($event)" class="btn green">Сохранить</a>
       <a href="<?php echo $base_href;?>#/module/{{module_type}}/all" data-ng-show="module_id == null" class="btn red">Отмена</a>
       <a data-ng-click="delete($event)" data-ng-show="module_id != null" class="btn red">Удалить</a>
   </div>
</div>
</div>
<div class="module-body module-form">
   <div class="accordion-bar bar-level-0 bar-expand" >
   </div>
   <accordion close-others="false">
       <accordion-group is-open="true">
           <accordion-heading>
               <div class="accordion-bar bar-level-0" data-ng-click="$event.stopPropagation()">Основное</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Название Модуля</span>
                   <span class="module-create-option">
                        <input type="text" class="journal-input" data-ng-model="module_data.module_name" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Заголовок</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="module_data.name"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Тип</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.content_type">
                           <switch-option key="custom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Своё&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                           <switch-option key="description">Описание</switch-option>
                           <switch-option key="enquiry">&nbsp;&nbsp;&nbsp; Запрос &nbsp;&nbsp;&nbsp;</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="module_data.content_type === 'enquiry'">
                   <span class="module-create-title">Всплывающее Окно</span>
                   <span class="module-create-option">
                       <select ui-select2="{minimumResultsForSearch: -1, placeholder: 'Выберите Модуль...'}" data-ng-model="module_data.popup">
                           <option value=""></option>
                           <option data-ng-repeat="module in popup_modules" value="{{module.module_id}}">{{module.module_data.module_name}}</option>
                       </select>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Показывать</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.global">
                           <switch-option key="1">Везде</switch-option>
                           <switch-option key="0">Выбрать</switch-option>
                           <switch-option key="2">Категория</switch-option>
                           <switch-option key="3">Бренд</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="module_data.global == 0">
                   <span class="module-create-title">Продукты</span>
                   <span class="module-create-option">
                       <ul class="simple-list">
                           <li data-ng-repeat="product in module_data.products">
                               <product-search model="product.data"></product-search>
                               <a href="javascript:;" data-ng-click="removeItem(module_data.products, $index)" class="btn red delete">X</a>
                           </li>
                       </ul>
                       <a href="javascript:;" data-ng-click="addItem(module_data.products)" class="btn blue add-product">Добавить</a>
                   </span>
               </li>
               <li data-ng-show="module_data.global == 2">
                   <span class="module-create-title">Продукты из Категории</span>
                   <span class="module-create-option">
                       <ul class="simple-list">
                           <li data-ng-repeat="category in module_data.categories">
                               <category-search model="category.data"></category-search>
                               <a href="javascript:;" data-ng-click="removeItem(module_data.categories, $index)" class="btn red delete">X</a>
                           </li>
                       </ul>
                       <a href="javascript:;" data-ng-click="addItem(module_data.categories)" class="btn blue add-product">Добавить</a>
                   </span>
               </li>
               <li data-ng-show="module_data.global == 3">
                   <span class="module-create-title">Продукты от Бренда</span>
                   <span class="module-create-option">
                       <ul class="simple-list">
                           <li data-ng-repeat="manufacturer in module_data.manufacturers">
                               <manufacturer-search model="manufacturer.data"></manufacturer-search>
                               <a href="javascript:;" data-ng-click="removeItem(module_data.manufacturers, $index)" class="btn red delete">X</a>
                           </li>
                       </ul>
                       <a href="javascript:;" data-ng-click="addItem(module_data.manufacturers)" class="btn blue add-product">Добавить</a>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Магазин</span>
                   <span class="module-create-option">
                       <select ui-select2="{minimumResultsForSearch: -1}" data-ng-model="module_data.store_id">
                           <option value="-1">Все Магазины</option>
                           <option data-ng-repeat="store in stores" value="{{store.store_id}}">{{store.name}}</option>
                       </select>
                   </span>
               </li>
               <li data-ng-hide="module_data.content_type === 'enquiry'">
                   <span class="module-create-title">Позиция</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.position">
                           <switch-option key="tab">Вкладки</switch-option>
                           <switch-option key="image">Изображение</switch-option>
                           <switch-option key="desc">Варианты</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="module_data.content_type !== 'enquiry' && module_data.position === 'desc'">
                   <span class="module-create-title">Позиция</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.option_position">
                           <switch-option key="top">Сверху</switch-option>
                           <switch-option key="bottom">Снизу</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="module_data.content_type !== 'description'" data-ng-hide="module_data.position === 'tab'">
                   <span class="module-create-title">Добавить Иконку</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.icon_status">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="module_data.icon_status == 1 && module_data.content_type !== 'description'" data-ng-hide="module_data.position === 'tab'">
                   <span class="module-create-title">Иконка</span>
                   <span class="module-create-option">
                       <icon-select data-ng-model="module_data.icon"></icon-select>
                   </span>
               </li>

               <li data-ng-show="module_data.icon_status == 1 && module_data.content_type == 'custom'" data-ng-hide="module_data.position === 'tab'">
                   <span class="module-create-title">Фон Контейнера Иконки</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="module_data.icon_bg_color"></j-opt-color>
                   </span>
               </li>
               <li data-ng-show="module_data.icon_status == 1 && module_data.content_type == 'custom'" data-ng-hide="module_data.position === 'tab'">
                   <span class="module-create-title">Настройка Границ Контейнера Иконки</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="module_data.icon_border"></j-opt-border>
                   </span>
               </li>
               <li data-ng-show="module_data.icon_status == 1 && module_data.content_type == 'custom'" data-ng-hide="module_data.position === 'tab'">
                   <span class="module-create-title">Размер Контейнера Иконки</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-number-field" data-ng-model="module_data.icon_width" /> x<input type="text" class="journal-number-field" data-ng-model="module_data.icon_height" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Статус</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.status">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Порядок</span>
                   <span class="module-create-option">
                        <input type="text" class="journal-input journal-sort" data-ng-model="module_data.sort_order" />
                   </span>
               </li>
               <li data-ng-show="module_data.content_type === 'custom'">
                   <span class="module-create-title">Содержание</span>
                   <span class="module-create-option">
                       <ck-editor data-ng-model="module_data.content"></ck-editor>
                   </span>
               </li>
           </ul>
       </accordion-group>
   </accordion>
</div>

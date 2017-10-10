<div class="sticky">
<div class="module-header">
   <div class='module-name'>Супер Фильтр<span data-ng-show="module_id == null">Создание Модуля</span><span data-ng-show="module_id != null">Изменение Модуля</span></div>
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
       <a data-ng-click="toggleAccordion(module_data.is_open, true)" class="hint--top" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(module_data.is_open, false)" class="hint--top" data-hint="Свернуть"><i class="collapse-icon"></i></a>
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
                   <span class="module-create-title">Кнопка "Сброс Фильтра"</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.reset">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Счетчик Продуктов<small>Возможны тормоза</small></span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.product_count">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Фильтр Цены</span>
                   <span class="module-create-option filter-multi">
                       <switch data-ng-model="module_data.price">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                       <input type="text" class="journal-input journal-sort" data-ng-model="module_data.sort_orders['p']" placeholder="Порядок" />
                   </span>
               </li>
               <li data-ng-show="module_data.price == '1'">
                   <span class="module-create-title">Налоговый Класс</span>
                   <span class="module-create-option">
                       <select ui-select2="{minimumResultsForSearch: -1}" data-ng-model="module_data.tax_class_id">
                           <option data-ng-repeat="t in tax_classes" value="{{t.tax_class_id}}">{{t.title}}</option>
                       </select>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Категории</span>
                   <span class="module-create-option filter-multi">
                       <switch data-ng-model="module_data.category">
                           <switch-option key="list">Список</switch-option>
                           <switch-option key="image">Изображения</switch-option>
                           <switch-option key="both">Оба</switch-option>
                           <switch-option key="off">ВЫКЛ</switch-option>
                       </switch>
                       <switch data-ng-model="module_data.category_type">
                           <switch-option key="multi">Мультивыбор</switch-option>
                           <switch-option key="single">Один Вариант</switch-option>
                       </switch>
                       <input type="text" class="journal-input journal-sort" data-ng-model="module_data.sort_orders['c']" placeholder="Порядок" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Бренды</span>
                   <span class="module-create-option filter-multi">
                       <switch data-ng-model="module_data.manufacturer">
                           <switch-option key="list">Список</switch-option>
                           <switch-option key="image">Изображения</switch-option>
                           <switch-option key="both">Оба</switch-option>
                           <switch-option key="off">ВЫКЛ</switch-option>
                       </switch>
                       <switch data-ng-model="module_data.manufacturer_type">
                           <switch-option key="multi">Мультивыбор</switch-option>
                           <switch-option key="single">Один Вариант</switch-option>
                       </switch>
                       <input type="text" class="journal-input journal-sort" data-ng-model="module_data.sort_orders['m']" placeholder="Порядок" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Метки</span>
                   <span class="module-create-option filter-multi">
                       <switch data-ng-model="module_data.tags">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                       <input type="text" class="journal-input journal-sort" data-ng-model="module_data.sort_orders['t']" placeholder="Порядок" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Наличие</span>
                   <span class="module-create-option filter-multi">
                       <switch data-ng-model="module_data.availability">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                       <input type="text" class="journal-input journal-sort" data-ng-model="module_data.sort_orders['a']" placeholder="Порядок" />
                   </span>
               </li>
           </ul>
       </accordion-group>
       <accordion-group is-open="module_data.options_is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Варианты</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li data-ng-repeat="option in options">
                   <span class="module-create-title">{{option.name}}</span>
                   <span class="module-create-option filter-multi">
                       <switch data-ng-model="module_data.options[option.option_id]">
                           <switch-option key="list">Список</switch-option>
                           <switch-option key="image">Изображения</switch-option>
                           <switch-option key="both">Оба</switch-option>
                           <switch-option key="off">ВЫКЛ</switch-option>
                       </switch>
                       <switch data-ng-model="module_data.options_type[option.option_id]">
                           <switch-option key="multi">Мультивыбор</switch-option>
                           <switch-option key="single">Один Вариант</switch-option>
                       </switch>
                       <input type="text" class="journal-input journal-sort" data-ng-model="module_data.sort_orders['o_' + option.option_id]" placeholder="Порядок" />
                   </span>
               </li>
           </ul>
       </accordion-group>
       <accordion-group is-open="module_data.is_open[attribute_group.group_id].is_open" data-ng-repeat="attribute_group in attributes">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">{{attribute_group.group_name}} Атрибуты</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li data-ng-repeat="attribute in attribute_group.attributes">
                   <span class="module-create-title">{{attribute.name}}</span>
                   <span class="module-create-option filter-multi">
                       <switch data-ng-model="module_data.attributes[attribute.attribute_id]">
                           <switch-option key="on">ВКЛ</switch-option>
                           <switch-option key="off">ВЫКЛ</switch-option>
                       </switch>
                       <switch data-ng-model="module_data.attributes_type[attribute.attribute_id]">
                           <switch-option key="multi">Мультивыбор</switch-option>
                           <switch-option key="single">Один Вариант</switch-option>
                       </switch>
                       <input type="text" class="journal-input journal-sort" data-ng-model="module_data.sort_orders['a_' + attribute.attribute_id]" placeholder="Порядок" />
                   </span>
               </li>
           </ul>
       </accordion-group>
   </accordion>
</div>

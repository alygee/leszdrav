<div class="sticky">
<div class="module-header">
   <div class='module-name'>Колонка Продуктов<span data-ng-show="module_id == null">Создание Модуля</span><span data-ng-show="module_id != null">Изменение Модуля</span></div>
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
       <accordion-group is-open="true">
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
                   <span class="module-create-title">Заголовок</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="module_data.section_title"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Тип</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.section_type">
                           <switch-option key="module">Модуль</switch-option>
                           <switch-option key="category">Категория</switch-option>
                           <switch-option key="manufacturer">Бренд</switch-option>
                           <switch-option key="random">Случайно</switch-option>
                           <switch-option key="custom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Своё&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="module_data.section_type == 'module'">
                   <span class="module-create-title">Тип Модуля<small data-ng-show="module_data.section_type == 'module' && (module_data.module_type === 'related' || module_data.module_type === 'people-also-bought')">Только в макете продукта</small></span>
                   <span class="module-create-option">
                       <select data-ng-model="module_data.module_type" ui-select2="{minimumResultsForSearch: -1}">
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
               <li data-ng-show="module_data.section_type == 'module' && module_data.module_type == 'featured' && featured_modules !== null">
                   <span class="module-create-title">Рекомендуемые Модули</span>
                   <span class="module-create-option">
                       <select data-ng-model="module_data.featured_module_id" ui-select2="{width: 50, minimumResultsForSearch: -1, placeholder: 'Выберите Модуль'}">
                           <option value=""></option>
                           <option data-ng-repeat="module in featured_modules" value="{{module.module_id}}">{{module.name}}</option>
                       </select>
                   </span>
               </li>
               <li data-ng-show="module_data.section_type == 'category'">
                   <span class="module-create-title">Категория</span>
                   <span class="module-create-option">
                       <category-search model="module_data.category.data"></category-search>
                   </span>
               </li>
               <li data-ng-show="module_data.section_type == 'manufacturer'">
                   <span class="module-create-title">Бренд</span>
                   <span class="module-create-option">
                       <manufacturer-search model="module_data.manufacturer.data"></manufacturer-search>
                   </span>
               </li>
               <li data-ng-show="module_data.section_type == 'custom'">
                   <span class="module-create-title">Продукт</span>
                   <span class="module-create-option">
                        <ul class="simple-list">
                            <li data-ng-repeat="item in module_data.products">
                                <product-search model="item.data"></product-search>
                                <a class="btn red delete" href="javascript:;" data-ng-click="removeProduct($index)">X</a>
                            </li>
                        </ul>
                       <a href="javascript:;" class="btn blue add-product" data-ng-click="addProduct()">Добавить</a>
                   </span>
               </li>
               <li data-ng-show="module_data.section_type == 'random'">
                   <span class="module-create-title">Случайно от</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.random_from">
                           <switch-option key="all"> &nbsp;&nbsp;&nbsp; Всех &nbsp;&nbsp;&nbsp;</switch-option>
                           <switch-option key="category">Выбрать</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="module_data.section_type == 'random' && module_data.random_from == 'category'">
                   <span class="module-create-title">Категория</span>
                   <span class="module-create-option">
                       <category-search model="module_data.random_from_category"></category-search>
                   </span>
               </li>

               <!--<li data-ng-show="module_data.section_type == 'module' && (module_data.module_type === 'featured' || module_data.module_type === 'bestsellers' || module_data.module_type === 'specials' || module_data.module_type === 'latest')">-->
                   <!--<span class="module-create-title">Auto Category<small>Category Layout Only</small></span>-->
                      <!--<span class="module-create-option">-->
                      <!--<switch data-ng-model="module_data.filter_category">-->
                          <!--<switch-option key="1">ВКЛ</switch-option>-->
                          <!--<switch-option key="0">ВЫКЛ</switch-option>-->
                      <!--</switch>-->
                   <!--</span>-->
               <!--</li>-->
               <li>
                   <span class="module-create-title">Лимит Элементов</span>
                   <span class="module-create-option">
                        <input type="text" value="" class="journal-input journal-sort" data-ng-model="module_data.items_limit" />
                   </span>
               </li>
           </ul>
       </accordion-group>
   </accordion>
</div>

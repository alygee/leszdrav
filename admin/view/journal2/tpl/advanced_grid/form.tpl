<div class="sticky">
<div class="module-header">
   <div class='module-name'>Расширенная Сетка<span data-ng-show="module_id == null">Создание Модуля</span><span data-ng-show="module_id != null">Изменение Модуля</span></div>
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
       <a data-ng-click="toggleAccordion(module_data.columns, true)" class="hint--top" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(module_data.columns, false)" class="hint--top" data-hint="Свернуть"><i class="collapse-icon"></i></a>
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
                   <span class="module-create-title">Высота</span>
                       <span class="module-create-option">
                            <input type="text" class="journal-input journal-number-field" data-ng-model="module_data.height" />
                       </span>
               </li>
               <li>
                   <span class="module-create-title">Интервал</span>
                       <span class="module-create-option">
                            <input type="text" class="journal-input journal-number-field" data-ng-model="module_data.module_spacing" />
                       </span>
               </li>
               <li>
                   <span class="module-create-title">Размеры Сетки</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.grid_dimensions">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
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
       <accordion-group data-ng-repeat="column in module_data.columns" is-open="column.is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-1"> {{'Колонка ' + ($index + 1)}} - {{column.width}} %<a href="javascript:;" class="accordion-remove slide-remove" data-ng-click="removeColumn($index)"><b></b>Удалить</a></div>
           </accordion-heading>
           <ul class="module-create-options">
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
                        <input type="text" class="journal-input journal-sort" data-ng-model="column.sort_order" />
                   </span>
               </li>
           </ul>
           <div class="accordion-bar bar-level-1 bar-expand">
               <a data-ng-click="toggleAccordion2(column, true)" class="hint--top hint-fix" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion2(column, false)" class="hint--top hint-fix" data-hint="Свернуть"><i class="collapse-icon"></i></a>
               <label class="close-others hint--top" data-hint="Закрыть Разделы"><input type="checkbox" data-ng-model="column.close_others" /></label>
           </div>
           <accordion close-others="column.close_others">
               <accordion-group data-ng-repeat="module in column.modules" is-open="module.is_open">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-2">Модуль {{$index + 1}}<a href="javascript:;" class="accordion-remove slide-remove" data-ng-click="removeModule(column, $index)"><b></b>Удалить</a></div>
                   </accordion-heading>
                   <ul class="module-create-options">
                       <li>
                           <span class="module-create-title">Модуль</span>
                           <span class="module-create-option">
                               <select data-ng-model="module.module_id" ui-select2="{width: 50, minimumResultsForSearch: -1, placeholder: 'Выберите Модуль'}">
                                   <option value=""></option>
                                   <optgroup data-ng-repeat="group in modules" label="{{group.module_type}}">
                                       <option data-ng-repeat="module in group.modules" value="{{module.module_id}}">{{module.module_name}}</option>
                                   </optgroup>
                               </select>
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Высота Модуля</span>
                           <span class="module-create-option">
                               <select data-ng-model="module.height" ui-select2="{width: 50, minimumResultsForSearch: -1, placeholder: 'Выберите Высоту'}">
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
                           <span class="module-create-title">Отключать на Мобильных</span>
                           <span class="module-create-option">
                               <switch data-ng-model="module.disable_mobile">
                                   <switch-option key="1">ВКЛ</switch-option>
                                   <switch-option key="0">ВЫКЛ</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Статус</span>
                           <span class="module-create-option">
                               <switch data-ng-model="module.status">
                                   <switch-option key="1">ВКЛ</switch-option>
                                   <switch-option key="0">ВЫКЛ</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Порядок</span>
                           <span class="module-create-option">
                               <input type="text" data-ng-model="module.sort_order" class="journal-input journal-sort" />
                           </span>
                       </li>
                   </ul>
               </accordion-group>
           </accordion>
           <div class="add-level add-level-2" data-ng-click="addModule(column)">Добавить Модуль +</div>
       </accordion-group>
   </accordion>
   <div class="add-level add-level-1" data-ng-click="addColumn()">Добавить Колонку +</div>
</div>
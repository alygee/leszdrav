<div class="sticky">
<div class="module-header">
   <div class='module-name'>Колонка Категорий<span data-ng-show="module_id == null">Создание Модуля</span><span data-ng-show="module_id != null">Изменение Модуля</span></div>
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
       <a data-ng-click="toggleAccordion(module_data.sections, true)" class="hint--top" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(module_data.sections, false)" class="hint--top" data-hint="Свернуть"><i class="collapse-icon"></i></a>
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
                   <span class="module-create-title">Заголовок</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="module_data.title"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Категории по Умолчанию</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.show_categories">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
           </ul>
       </accordion-group>
       <accordion-group data-ng-repeat="section in module_data.sections" is-open="section.is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-1"> {{section.name.value[default_language] || ('Элемент ' + ($index + 1))}}<a href="javascript:;" class="accordion-remove slide-remove" data-ng-click="removeSection($index)"><b ></b>Удалить</a></div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Своё Название Пункта</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="section.name"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Позиция</span>
                   <span class="module-create-option">
                       <switch data-ng-model="section.position">
                           <switch-option key="top">Сверху</switch-option>
                           <switch-option key="bottom">Снизу</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Ссылка</span>
                   <span class="module-create-option">
                       <menu-item data-ng-model="section.link"></menu-item>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Открыть в Новом Окне</span>
                   <span class="module-create-option">
                       <switch data-ng-model="section.new_window">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Порядок</span>
                   <span class="module-create-option">
                        <input type="text" class="journal-input journal-sort" data-ng-model="section.sort_order" />
                   </span>
               </li>
           </ul>
       </accordion-group>
   </accordion>
   <div class="add-level add-level-1" data-ng-click="addSection()">Добавить Элемент +</div>
</div>

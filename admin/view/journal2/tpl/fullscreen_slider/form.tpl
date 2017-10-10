<div class="sticky">
<div class="module-header">
   <div class='module-name'>Полноэкранный Слайдер<span data-ng-show="module_id == null">Создание Модуля</span><span data-ng-show="module_id != null">Изменение Модуля</span></div>
   <div class="module-buttons">
       <a href="<?php echo $base_href;?>#/module/{{module_type}}/all/{{module_id}}" data-ng-show="module_id != null" class="btn blue">Добавить в Макет</a>
       <a data-ng-click="save($event)" class="btn green">Сохранить</a>
       <a href="<?php echo $base_href;?>#/module/{{module_type}}/all" data-ng-show="module_id == null" class="btn red">Отмена</a>
       <a data-ng-click="delete($event)" data-ng-show="module_id != null" class="btn red">Удалить</a>
   </div>
</div>
</div>
<div class="module-body module-form fullscreen-slider">
   <div class="accordion-bar bar-level-0 bar-expand" >
       <a data-ng-click="toggleAccordion(module_data.images, true)" class="hint--top" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(module_data.images, false)" class="hint--top" data-hint="Свернуть"><i class="collapse-icon"></i></a>
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
                       <input type="text" class="journal-input" style="width: 215px;" data-ng-model="module_data.module_name" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Переход</span>
                       <span class="module-create-option">
                           <select ui-select2="" data-ng-model="module_data.transition">
                               <option data-ng-repeat="tr in transitions" value="{{tr.id}}">{{tr.name}}</option>
                           </select>
                       </span>
               </li>
               <li>
                   <span class="module-create-title">Скорость Перехода</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-number-field" data-ng-model="module_data.transition_speed" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Задержка Перехода</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-number-field" data-ng-model="module_data.transition_delay" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Прозрачное Наложение</span>
                   <span class="module-create-option">
                       <image-select image="module_data.transparent_overlay"></image-select>
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
       <accordion-group data-ng-repeat="image in module_data.images" is-open="image.is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-1">Изображение {{$index + 1}}<a href="javascript:;" class="accordion-remove slide-remove" data-ng-click="removeImage($index)"><b ></b>Удалить</a></div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Изображение</span>
                   <span class="module-create-option">
                       <image-select-lang image="image.image"></image-select-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Статус</span>
                   <span class="module-create-option">
                       <switch data-ng-model="image.status">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Порядок</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-sort" data-ng-model="image.sort_order" />
                   </span>
               </li>
           </ul>
       </accordion-group>
   </accordion>
   <div class="add-level add-level-1" data-ng-click="addImage()">Добавить Изображение +</div>
</div>
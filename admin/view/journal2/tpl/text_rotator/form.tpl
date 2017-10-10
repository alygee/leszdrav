<div class="sticky">
<div class="module-header">
   <div class='module-name'>Ротатор Текстов<span data-ng-show="module_id == null">Создание Модуля</span><span data-ng-show="module_id != null">Изменение Модуля</span></div>
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
                       <j-opt-text-lang data-ng-model="module_data.module_title"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Задержка Перехода</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-number-field" data-ng-model="module_data.transition_delay" required />
                   </span>
               </li>

               <li>
                   <span class="module-create-title">Фон</span>
                   <span class="module-create-option">
                       <j-opt-background data-ng-model="module_data.text_background" data-bgcolor="true"></j-opt-background>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Текста</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="module_data.text_font"></j-opt-font>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Автора</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="module_data.author_font"></j-opt-font>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Выравнивание</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.text_align">
                           <switch-option key="left">Слева</switch-option>
                           <switch-option key="center">По Центру</switch-option>
                           <switch-option key="right">Справа</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Выравнивание Автора</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.author_align">
                           <switch-option key="left">Слева</switch-option>
                           <switch-option key="center">По Центру</switch-option>
                           <switch-option key="right">Справа</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Выравнивание Изображения</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.image_align">
                           <switch-option key="left">Слева</switch-option>
                           <switch-option key="center">По Центру</switch-option>
                           <switch-option key="right">Справа</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Размер Изображения</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-number-field" data-ng-model="module_data.image_width" /> x<input type="text" class="journal-number-field" data-ng-model="module_data.image_height" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ Изображения</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="module_data.image_border"></j-opt-border>
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
               <li data-ng-show="module_data.bullets == 1">
                   <span class="module-create-title">Позиция Индикаторов</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.bullets_position">
                           <switch-option key="left">Слева</switch-option>
                           <switch-option key="center">По Центру</switch-option>
                           <switch-option key="right">Справа</switch-option>
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
               <li>
                   <span class="module-create-title">Пауза при Наведении</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.pause_on_hover">
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
           </ul>
       </accordion-group>

       <accordion-group data-ng-repeat="section in module_data.sections" is-open="section.is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-1"> {{section.name || ('Элемент ' + ($index + 1))}}<a href="javascript:;" class="accordion-remove slide-remove" data-ng-click="removeSection($index)"><b ></b>Удалить</a></div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Название</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input" data-ng-model="section.name" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Текст</span>
                   <span class="module-create-option">
                       <j-opt-textarea-lang data-ng-model="section.text" data-rows="4" data-cols="30"></j-opt-textarea-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Автор</span>
                   <span class="module-create-option">
                        <input type="text" class="journal-input" data-ng-model="section.author" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Изображение</span>
                   <span class="module-create-option">
                       <image-select image="section.image"></image-select>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Иконка</span>
                   <span class="module-create-option">
                       <icon-select data-ng-model="section.icon"></icon-select>
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
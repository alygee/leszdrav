<div class="sticky">
<div class="module-header">
   <div class='module-name'>Подписка на Рассылку<span data-ng-show="module_id == null">Создание Модуля</span><span data-ng-show="module_id != null">Изменение Модуля</span></div>
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
                   <span class="module-create-title">Заголовок</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="module_data.module_title"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Текст</span>
                   <span class="module-create-option">
                       <j-opt-textarea-lang data-ng-model="module_data.module_text" data-rows="4" data-cols="30"></j-opt-textarea-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Текста</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="module_data.module_text_font"></j-opt-font>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Фон Модуля</span>
                   <span class="module-create-option">
                       <j-opt-background data-ng-model="module_data.module_background" data-bgcolor="true"></j-opt-background>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="module_data.module_border"></j-opt-border>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Поля</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-number-field" data-ng-model="module_data.module_padding" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Позиция Текста</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.text_position">
                           <switch-option key="left">Слева</switch-option>
                           <switch-option key="top">Сверху</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Высота Поля Ввода</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-number-field" data-ng-model="module_data.input_height" placeholder="Высота"/>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Заполнитель Поля</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="module_data.input_placeholder"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Поля</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="module_data.input_bg_color"></j-opt-color>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Текста Поля</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="module_data.input_font"></j-opt-font>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ Поля</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="module_data.input_border"></j-opt-border>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Текст Кнопки</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="module_data.button_text"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Текста Кнопки</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="module_data.button_font"></j-opt-font>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Кнопки</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="module_data.button_background"></j-opt-color>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Иконка Кнопки</span>
                   <span class="module-create-option">
                       <icon-select data-ng-model="module_data.button_icon"></icon-select>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ Кнопки</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="module_data.button_border"></j-opt-border>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Смещение Кнопки</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-number-field" data-ng-model="module_data.button_offset_top" placeholder="Верх"/> &nbsp;
                       <input type="text" class="journal-input journal-number-field" data-ng-model="module_data.button_offset_left" placeholder="Лево"/>
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
           </ul>
       </accordion-group>
   </accordion>
</div>

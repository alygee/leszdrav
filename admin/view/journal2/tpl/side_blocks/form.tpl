<div class="sticky">
<div class="module-header">
   <div class='module-name'>Настраиваемые Блоки<span data-ng-show="module_id == null">Создание Модуля</span><span data-ng-show="module_id != null">Изменение Модуля</span></div>
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
                   <span class="module-create-title">Тип</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.module_type">
                           <switch-option key="button">Кнопка</switch-option>
                           <switch-option key="block">Блок</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Иконка</span>
                   <span class="module-create-option">
                       <icon-select data-ng-model="module_data.icon"></icon-select>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Размер Кнопки<small>Ширина х Высота</small></span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-number-field" data-ng-model="module_data.icon_width" /> x
                       <input type="text" class="journal-input journal-number-field" data-ng-model="module_data.icon_height" />
                   </span>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона Иконки</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input" color-picker data-ng-model="module_data.icon_bg_color" />
                   </span>
               </li>
               <li data-ng-show="module_data.module_type === 'button'">
                   <span class="module-create-title">Цвет Фона Иконки при Наведении</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input" color-picker data-ng-model="module_data.icon_bg_hover_color" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ Иконки</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="module_data.icon_border"></j-opt-border>
                   </span>
               </li>
               <li data-ng-show="module_data.module_type === 'block'">
                   <span class="module-create-title">Цвет Фона Содержания</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input" color-picker data-ng-model="module_data.content_bg_color" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Позиция</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.alignment">
                           <switch-option key="left">Слева</switch-option>
                           <switch-option key="right">Справа</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Зафиксировать</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.position">
                           <switch-option key="fixed">ВКЛ</switch-option>
                           <switch-option key="absolute">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Смещение Сверху</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-number-field" data-ng-model="module_data.offset_top" />
                   </span>
               </li>
               <li data-ng-show="module_data.module_type === 'button'">
                   <span class="module-create-title">Смещение Сбоку</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-number-field" data-ng-model="module_data.offset_side" />
                   </span>
               </li>
               <li data-ng-show="module_data.module_type === 'block'">
                   <span class="module-create-title">Ширина Содержания</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-number-field" data-ng-model="module_data.content_width" />
                   </span>
               </li>
               <li data-ng-show="module_data.module_type === 'block'">
                   <span class="module-create-title">Поля Содержания</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-number-field" data-ng-model="module_data.content_padding" />
                   </span>
               </li>
               <li data-ng-show="module_data.module_type === 'button'">
                   <span class="module-create-title">Ссылка</span>
                   <span class="module-create-option">
                       <menu-item data-ng-model="module_data.link"></menu-item>
                   </span>
               </li>
               <li data-ng-show="module_data.module_type === 'button'">
                   <span class="module-create-title">Открыть в Новом Окне</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.new_window">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="module_data.module_type === 'block'">
                   <span class="module-create-title">Содержание</span>
                   <span class="module-create-option">
                       <ck-editor data-ng-model="module_data.content"></ck-editor>
                   </span>
               </li>
           </ul>
       </accordion-group>
   </accordion>
</div>
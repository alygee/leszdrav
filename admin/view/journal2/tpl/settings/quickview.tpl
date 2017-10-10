<div class="sticky">
<div class="module-header">
   <div class='module-name'>Настройки<span>Быстрый Просмотр</span></div>

   <skin-manager data-url="settings/general"></skin-manager>

   <div class="module-buttons">
       <?php if (defined('J2ENV')): ?>
       <a class="btn blue" data-ng-show="skin_id< 100" data-ng-click="saveDefault($event)">Экспорт</a>
       <?php endif; ?>
       <!--<a class="btn blue" data-ng-click="multiStore($event)">MultiStore</a>-->
       <a class="btn blue" data-ng-click="saveAs($event)">Сохранить Как</a>
       <a class="btn green" data-ng-click="save($event)">Сохранить</a>
       <a class="btn red" data-ng-show="skin_id< 100" data-ng-click="reset($event)">Сброс</a>
       <a class="btn red" data-ng-show="skin_id >= 100" data-ng-click="delete($event)">Удалить</a>
   </div>
</div>
</div>

<div class="module-body">
   <div class="accordion-bar bar-level-0 bar-expand" >
       <a data-ng-click="toggleAccordion(true)" class="hint--top" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(false)" class="hint--top" data-hint="Свернуть"><i class="collapse-icon"></i></a>
       <label class="close-others hint--top" data-hint="Закрыть Разделы"><input type="checkbox" data-ng-model="accordion.close_others" /></label>
   </div>
   <accordion id="main-accordion" close-others="accordion.close_others">
       <!--Notification-->
       <accordion-group is-open="accordion.accordions[0]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Основное</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Статус</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.quickview_status">
                               <switch-option key="1">ВКЛ</switch-option>
                               <switch-option key="0">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-show="settings.quickview_status == '1'">
                   <span class="module-create-title">Высота Модального Окна</span>
                       <span class="module-create-option">
                           <!--<j-opt-text data-ng-model="settings.quickview_width" class="journal-number-field"></j-opt-text> x-->
                           <j-opt-text data-ng-model="settings.quickview_height" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-show="settings.quickview_status == '1'">
                   <span class="module-create-title">Цвет Фона</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.quickview_bg_color"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-show="settings.quickview_status == '1'">
                   <span class="module-create-title">Настройка Границ</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.quickview_border" editor="hide-radius"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-show="settings.quickview_status == '1'">
                   <span class="module-create-title">Шрифт Заголовка</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.quickview_title_font"></j-opt-font>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-show="settings.quickview_status == '1'">
                   <span class="module-create-title">Цвет Фона Заголовка</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.quickview_title_bg"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-show="settings.quickview_status == '1'">
                   <span class="module-create-title">Настройка Границ Заголовка</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.quickview_title_border"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Поля Заголовка<small>Лево-Право</small></span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.quickview_title_padding_left" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.quickview_title_padding_right" class="journal-sort"></j-opt-text>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Выравнивание Заголовка</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.quickview_title_align">
                               <switch-option key="left">Слева</switch-option>
                               <switch-option key="center">По Центру</switch-option>
                               <switch-option key="right">Справа</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li  data-ng-show="settings.quickview_status == '1'">
                   <span class="module-create-title">Варианты Продукта</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.quickview_product_options">
                               <switch-option key="1">ВКЛ</switch-option>
                               <switch-option key="0">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li  data-ng-show="settings.quickview_status == '1'">
                   <span class="module-create-title">Cloud Zoom</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.quickview_cloud_zoom">
                               <switch-option key="1">ВКЛ</switch-option>
                               <switch-option key="0">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li  data-ng-show="settings.quickview_status == '1'">
                   <span class="module-create-title">Текст Кнопки "Быстрый Просмотр"</span>
                       <span class="module-create-option">
                           <j-opt-text-lang data-ng-model="settings.quickview_button_text"></j-opt-text-lang>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-show="settings.quickview_status == '1'">
                   <span class="module-create-title">Текст Кнопки "Подробнее"</span>
                       <span class="module-create-option">
                           <j-opt-text-lang data-ng-model="settings.quickview_more_details_text"></j-opt-text-lang>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-show="settings.quickview_status == '1'">
                   <span class="module-create-title">Цвет Фона Кнопки "Подробнее"</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.quickview_more_details_bg_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li  data-ng-show="settings.quickview_status == '1'">
                   <span class="module-create-title">Цвет Фона Кнопки "Подробнее" при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.quickview_more_details_bg_color_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-show="settings.quickview_status == '1'">
                   <span class="module-create-title">Иконка Кнопки "Подробнее"</span>
                       <span class="module-create-option">
                           <j-opt-icon data-ng-model="settings.quickview_more_details_icon"></j-opt-icon>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li  data-ng-show="settings.quickview_status == '1'">
                   <span class="module-create-title">Цвет Шрифта Подсказки</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.quickview_more_details_tip_font"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li  data-ng-show="settings.quickview_status == '1'">
                   <span class="module-create-title">Цвет Фона Подсказки</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.quickview_more_details_tip_bg"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-show="settings.quickview_status == '1'">
                   <span class="module-create-title">Радиус Подсказки</span>
                           <span class="module-create-option">
                               <j-opt-border data-ng-model="settings.quickview_more_details_tip_border" editor="hide-style"></j-opt-border>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li  data-ng-show="settings.quickview_status == '1'">
                   <span class="module-create-title">Позиция Описания</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.quickview_description_position">
                               <switch-option key="image">Изображение</switch-option>
                               <switch-option key="options">Варианты</switch-option>
                               <switch-option key="bottom">Снизу</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Поля Описания<small>Верх-Право-Низ-Лево</small></span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.quickview_description_padding_top" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.quickview_description_padding_right" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.quickview_description_padding_bottom" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.quickview_description_padding_left" class="journal-sort"></j-opt-text>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li  data-ng-show="settings.quickview_status == '1'">
                   <span class="module-create-title">Шрифт Описания</span>
                           <span class="module-create-option">
                               <j-opt-font data-ng-model="settings.quickview_description_font" editor="hide-style"></j-opt-font>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

           </ul>
       </accordion-group>


   </accordion>
</div>

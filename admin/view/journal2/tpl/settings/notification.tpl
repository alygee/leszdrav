<div class="sticky">
<div class="module-header">
   <div class='module-name'>Настройки<span>Уведомление</span></div>

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
                           <switch data-ng-model="settings.notification_status">
                               <switch-option key="block">ВКЛ</switch-option>
                               <switch-option key="none">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li  data-ng-show="settings.notification_status == 'block'">
                   <span class="module-create-title">Позиция</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.notification_position">
                               <switch-option key="top-left">Верх Лево</switch-option>
                               <switch-option key="top-center">Верх Центр</switch-option>
                               <switch-option key="top-right">Верх Право</switch-option>
                               <switch-option key="center">Центр</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-show="settings.notification_status == 'block'">
                   <span class="module-create-title">Кнопка "Закрыть"</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.notification_show_close">
                               <switch-option key="hover">Наведение</switch-option>
                               <switch-option key="always">Всегда</switch-option>
                               <switch-option key="never">Никогда</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li  data-ng-show="settings.notification_status == 'block' && settings.notification_show_close == 'hover' || settings.notification_show_close == 'always'">
                   <span class="module-create-title">Цвет Кнопки</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.notification_close_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li  data-ng-show="settings.notification_status == 'block' && settings.notification_show_close == 'hover' || settings.notification_show_close == 'always'">
                   <span class="module-create-title">Цвет Кнопки при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.notification_close_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-show="settings.notification_status == 'block'">
                   <span class="module-create-title">Автозакрытие через<small>в миллисекундах</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.notification_hide" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-show="settings.notification_status == 'block'">
                   <span class="module-create-title">Тень</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.notification_shadow">
                               <switch-option key="1">ВКЛ</switch-option>
                               <switch-option key="0">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-show="settings.notification_status == 'block'">
                   <span class="module-create-title">Цвет Фона</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.notification_bg_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-show="settings.notification_status == 'block'">
                   <span class="module-create-title">Настройка Границ</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.notification_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-show="settings.notification_status == 'block'">
                   <span class="module-create-title">Шрифт Заголовка</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.notification_title_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-show="settings.notification_status == 'block'">
                   <span class="module-create-title">Цвет Фона Заголовка</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.notification_title_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-show="settings.notification_status == 'block'">
                   <span class="module-create-title">Настройка Границ Заголовка</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.notification_title_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-show="settings.notification_status == 'block'">
                   <span class="module-create-title">Шрифт Текста</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.notification_text_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li  data-ng-show="settings.notification_status == 'block'">
                   <span class="module-create-title">Цвет Ссылок</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.notification_text_link_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li  data-ng-show="settings.notification_status == 'block'">
                   <span class="module-create-title">Цвет Ссылок <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.notification_text_link_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-show="settings.notification_status == 'block'">
                   <span class="module-create-title">Изображение Продукта</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.notification_show_image">
                               <switch-option key="block">ВКЛ</switch-option>
                               <switch-option key="none">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-show="settings.notification_status == 'block' && settings.notification_show_image == 'block'">
                   <span class="module-create-title">Настройка Границ Изображения</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.notification_image_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

           </ul>
       </accordion-group>

   </accordion>
</div>

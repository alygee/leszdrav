<div class="sticky">
<div class="module-header">
   <div class='module-name'>Модули<span>CMS Блоки</span></div>

   <skin-manager data-url="settings/general"></skin-manager>

   <div class="module-buttons">
       <?php if (defined('J2ENV')): ?>
       <a class="btn blue" data-ng-show="skin_id< 100" data-ng-click="saveDefault($event)">Экспорт</a>
       <?php endif; ?>
       <a class="btn blue" data-ng-click="saveAs($event)">Сохранить Как</a>
       <a class="btn green" data-ng-click="save($event)">Сохранить</a>
       <a class="btn red" data-ng-show="skin_id< 100" data-ng-click="reset($event)">Сброс</a>
       <a class="btn red" data-ng-show="skin_id >= 100" data-ng-click="delete($event)">Удалить</a>
   </div>
</div>
</div>
<div class="module-body custom-code">
   <div class="accordion-bar bar-level-0 bar-expand" >
       <a data-ng-click="toggleAccordion(true)" class="hint--top" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(false)" class="hint--top" data-hint="Свернуть"><i class="collapse-icon"></i></a>
       <label class="close-others hint--top" data-hint="Закрыть Разделы"><input type="checkbox" data-ng-model="accordion.close_others" /></label>
   </div>
   <accordion id="main-accordion" close-others="accordion.close_others">
       <accordion-group is-open="accordion.accordions[0]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Основное</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Шрифт Заголовков<small>H1 - H3 теги</small></span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.cms_heading_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Шрифт Текста<small>p тег</small></span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.cms_font_color"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Высота Линии Текста<small>в пикселях</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.cms_block_line_height" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Отступ Заголовка<small>Поле Снизу</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.cms_heading_padding" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Отступ Параграфа<small>Поле Снизу</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.cms_block_p_padding" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона Блока</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.cms_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Настройка Границ Блока</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.cms_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Поля Содержания</span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.cms_padding" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


           </ul>
       </accordion-group>
       <accordion-group is-open="accordion.accordions[0]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Боковые Колонки</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Шрифт Заголовков<small>H1 - H3 теги</small></span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.side_cms_heading_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Шрифт Текста<small>p тег</small></span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.side_cms_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Высота Линии Текста<small>в пикселях</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.side_cms_block_line_height" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Отступ Заголовка<small>Поле Снизу</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.side_cms_heading_padding" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Отступ Параграфа<small>Поле Снизу</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.side_cms_block_p_padding" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона Блока</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.side_cms_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Настройка Границ Блока</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.side_cms_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Поля Содержания</span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.side_cms_padding" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Интервал<small>Отступ Сверху</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.side_cms_margin" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


           </ul>
       </accordion-group>

   </accordion>
</div>

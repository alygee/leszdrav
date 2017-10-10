<div class="sticky">
<div class="module-header">
   <div class='module-name'>Настройки<span>Этикетки Продуктов</span></div>

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
       <accordion-group is-open="accordion.accordions[0]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Этикетка "Новинка"</div>
           </accordion-heading>

           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Тип Отображения</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.label_latest_status">
                               <switch-option key="hover">Наведение</switch-option>
                               <switch-option key="always">Всегда</switch-option>
                               <switch-option key="never">Никогда</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-hide="settings.label_latest_status == 'never'">
                   <span class="module-create-title">Текст</span>
                           <span class="module-create-option">
                               <j-opt-text-lang data-ng-model="settings.label_latest_text"></j-opt-text-lang>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-hide="settings.label_latest_status == 'never'">
                   <span class="module-create-title">Лимит Продуктов<small>для наложения этикетки</small></span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.label_latest_limit" class="journal-number-field"></j-opt-text>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-hide="settings.label_latest_status == 'never'">
                   <span class="module-create-title">Шрифт</span>
                           <span class="module-create-option">
                               <j-opt-font data-ng-model="settings.label_latest_font"></j-opt-font>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li  data-ng-hide="settings.label_latest_status == 'never'">
                   <span class="module-create-title">Цвет Фона</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.label_latest_bg"></j-opt-color>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li  data-ng-hide="settings.label_latest_status == 'never'">
                   <span class="module-create-title">Настройка Границ</span>
                           <span class="module-create-option">
                               <j-opt-border data-ng-model="settings.label_latest_border"></j-opt-border>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li  data-ng-hide="settings.label_latest_status == 'never'">
                   <span class="module-create-title">Размер<small>Ширина х Высота</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.label_latest_width" class="journal-number-field"></j-opt-text> x
                           <j-opt-text data-ng-model="settings.label_latest_height" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

           </ul>
       </accordion-group>
       <accordion-group is-open="accordion.accordions[1]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Этикетка "Акция"</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Тип Отображения</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.label_special_status">
                               <switch-option key="hover">Наведение</switch-option>
                               <switch-option key="always">Всегда</switch-option>
                               <switch-option key="never">Никогда</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li  data-ng-hide="settings.label_special_status == 'never'">
                   <span class="module-create-title">Отображать</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.label_special_type">
                               <switch-option key="percent">Процент</switch-option>
                               <switch-option key="text">&nbsp;&nbsp;Текст&nbsp;&nbsp;</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li  data-ng-hide="settings.label_special_type == 'percent' || settings.label_special_status == 'never'">
                   <span class="module-create-title">Текст</span>
                           <span class="module-create-option">
                               <j-opt-text-lang data-ng-model="settings.label_special_text"></j-opt-text-lang>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li  data-ng-hide="settings.label_special_status == 'never'">
                   <span class="module-create-title">Шрифт</span>
                           <span class="module-create-option">
                               <j-opt-font data-ng-model="settings.label_special_font"></j-opt-font>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li  data-ng-hide="settings.label_special_status == 'never'">
                   <span class="module-create-title">Цвет Фона</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.label_special_bg"></j-opt-color>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li  data-ng-hide="settings.label_special_status == 'never'">
                   <span class="module-create-title">Настройка Границ</span>
                           <span class="module-create-option">
                               <j-opt-border data-ng-model="settings.label_special_border"></j-opt-border>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li  data-ng-hide="settings.label_special_status == 'never'">
                   <span class="module-create-title">Размер<small>Ширина х Высота</small></span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.label_special_width" class="journal-number-field"></j-opt-text> x
                               <j-opt-text data-ng-model="settings.label_special_height" class="journal-number-field"></j-opt-text>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>

       <!--Out of Stock-->
       <accordion-group is-open="accordion.accordions[2]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Этикетка "Нет в Наличии"</div>
           </accordion-heading>
           <ul class="module-create-options">

               <li>
                   <span class="module-create-title">Тип Отображения</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.out_of_stock_status">
                               <switch-option key="hover">Наведение</switch-option>
                               <switch-option key="always">Всегда</switch-option>
                               <switch-option key="never">Никогда</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-hide="settings.out_of_stock_status == 'never'">
                   <span class="module-create-title">Размер Ленты</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.out_of_stock_ribbon_size">
                               <switch-option key="small">32 px</switch-option>
                               <switch-option key="medium">38 px</switch-option>
                               <switch-option key="large">48 px</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li  data-ng-hide="settings.out_of_stock_status == 'never'">
                   <span class="module-create-title">Цвет Шрифта</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.out_of_stock_font_color"></j-opt-color>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li  data-ng-hide="settings.out_of_stock_status == 'never'">
                   <span class="module-create-title">Цвет Фона</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.out_of_stock_bg"></j-opt-color>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Отключать Кнопку "Купить"</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.out_of_stock_disable_button">
                               <switch-option key="1">ВКЛ</switch-option>
                               <switch-option key="0">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Прозрачность Отключенной Кнопки<small>.5 = 50%</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.out_of_stock_disable_button_opacity" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
                
           </ul>
       </accordion-group>
   </accordion>
</div>

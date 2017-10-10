<div class="sticky">
<div class="module-header">
   <div class='module-name'>Модули<span>Ротатор Заголовков</span></div>

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
<div class="module-body custom-code">
   <div class="accordion-bar bar-level-0 bar-expand" >
       <a data-ng-click="toggleAccordion(true)" class="hint--top" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(false)" class="hint--top" data-hint="Свернуть"><i class="collapse-icon"></i></a>
       <label class="close-others hint--top" data-hint="Закрыть Разделы"><input type="checkbox" data-ng-model="accordion.close_others" /></label>
   </div>
   <accordion id="main-accordion" close-others="accordion.close_others">
       <accordion-group is-open="accordion.accordions[0]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Кнопка Призыва к Действию</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Шрифт Текста</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.cta_button_font"></j-opt-font>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Шрифта <br />при Наведении</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.cta_button_font_hover"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Цвет Фона</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.cta_button_bg"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.cta_button_bg_hover"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.cta_button_border"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.cta_button_border_hover"></j-opt-color>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Ширина<small>Поля слева / справа</small></span>
                               <span class="module-create-option">
                                   <j-opt-text data-ng-model="settings.cta_button_width" class="journal-number-field"></j-opt-text>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Высота</span>
                               <span class="module-create-option">
                                   <j-opt-text data-ng-model="settings.cta_button_height" class="journal-number-field"></j-opt-text>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Внутренняя Тень<small>Эффект Нажатия</small></span>
                               <span class="module-create-option">
                                   <switch data-ng-model="settings.cta_button_active_shadow">
                                       <switch-option key="inset 0 1px 10px rgba(0, 0, 0, 0.8)">ВКЛ</switch-option>
                                       <switch-option key="none">ВЫКЛ</switch-option>
                                   </switch>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
       <accordion-group is-open="accordion.accordions[1]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Индикаторы</div>
           </accordion-heading>

           <ul>
               <li>
                   <span class="module-create-title">Цвет</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.headline_bullet_color"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет <br />при Наведении</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.headline_bullet_hover_color"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.headline_bullet_border"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.headline_bullet_border_hover"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Отступ</span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.headline_bullet_margin" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-hide="settings.product_grid_quickview_status == 'never'">
                   <span class="module-create-title">Размер<small>Ширина х Высота</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.headline_bullet_width" class="journal-number-field"></j-opt-text> x
                           <j-opt-text data-ng-model="settings.headline_bullet_height" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Масштаб<small>при Наведении / Активная</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.headline_bullet_scale" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

           </ul>
       </accordion-group>

   </accordion>
</div>

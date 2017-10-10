<div class="sticky">
<div class="module-header">
   <div class='module-name'>Модули<span>Слайдер</span></div>

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
               <div class="accordion-bar bar-level-0">Основное</div>
           </accordion-heading>
           <ul class="module-create-options">

               <li>
                   <span class="module-create-title">Левая Стрелка</span>
                   <span class="module-create-option">
                       <j-opt-icon data-ng-model="settings.slider_left_icon"></j-opt-icon>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Правая Стрелка</span>
                   <span class="module-create-option">
                       <j-opt-icon data-ng-model="settings.slider_right_icon"></j-opt-icon>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Стрелок <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.slider_icon_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Таймера<small>Расширенный Слайдер</small></span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.slider_timer_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Размер Таймера<small>Расширенный Слайдер</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.slider_timer_size" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ Превью<small>Расширенный Слайдер</small></span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.slider_thumbs_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Прозрачность Наложения Превью<small>Расширенный Слайдер</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.slider_thumbs_overlay" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Прозрачность Наложения Активного Превью<small>Расширенный Слайдер</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.slider_thumbs_active_overlay" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
       <accordion-group is-open="accordion.accordions[1]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Индикаторы</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Цвет</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.slider_bullet_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.slider_bullet_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.slider_bullet_border"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.slider_bullet_border_hover"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Отступ</span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.slider_bullet_margin" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-hide="settings.product_grid_quickview_status == 'never'">
                   <span class="module-create-title">Размер<small>Ширина х Высота</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.slider_bullet_width" class="journal-number-field"></j-opt-text> x
                           <j-opt-text data-ng-model="settings.slider_bullet_height" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Масштаб<small>при Наведении / Активная</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.slider_bullet_scale" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
   </accordion>
</div>

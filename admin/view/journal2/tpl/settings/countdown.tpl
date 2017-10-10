<div class="sticky">
<div class="module-header">
   <div class='module-name'>Настройки<span>Обратный Отсчет</span></div>

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
       <!--Countdown-->
       <accordion-group is-open="accordion.accordions[0]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Язык</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Текст "Дней"</span>
                   <span class="module-create-option countdown-text">
                       <j-opt-text-lang data-ng-model="settings.countdown_days" class="journal-number-field"></j-opt-text-lang>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Текст "Часов"</span>
                   <span class="module-create-option countdown-text">
                       <j-opt-text-lang data-ng-model="settings.countdown_hours" class="journal-number-field"></j-opt-text-lang>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Текст "Минут"</span>
                   <span class="module-create-option countdown-text">
                       <j-opt-text-lang data-ng-model="settings.countdown_min" class="journal-number-field"></j-opt-text-lang>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Текст "Секунд"</span>
                   <span class="module-create-option countdown-text">
                       <j-opt-text-lang data-ng-model="settings.countdown_sec" class="journal-number-field"></j-opt-text-lang>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

           </ul>
       </accordion-group>

       <accordion-group is-open="accordion.accordions[1]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Сетка / Список Продуктов</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Отображение Обратного Отсчета</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.show_countdown">
                               <switch-option key="never">Никогда</switch-option>
                               <switch-option key="hidden">Скрыто</switch-option>
                               <switch-option key="hover">Наведение</switch-option>
                               <switch-option key="always">Всегда</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                       <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.countdown_bg"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Шрифт Цифр</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.countdown_numbers_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Текста<small>Дней, Часов, Минут, Секунд</small></span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.countdown_text_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Цвет Делителя</span>
                       <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.countdown_divider_color"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Тип Делителя</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.countdown_divider_type">
                               <switch-option key="solid">Сплошной</switch-option>
                               <switch-option key="dashed">Пунктир</switch-option>
                               <switch-option key="dotted">Точки</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

           </ul>
       </accordion-group>

       <accordion-group is-open="accordion.accordions[2]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Страница Продукта</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Отображение Обратного Отсчета</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.show_countdown_product_page">
                           <switch-option key="on">ВКЛ</switch-option>
                           <switch-option key="off">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                       <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.pp_countdown_bg"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Шрифт Цифр</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.pp_countdown_numbers_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Текста<small>Дней, Часов, Минут, Секунд</small></span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.pp_countdown_text_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Делителя</span>
                       <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.pp_countdown_divider_color"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Тип Делителя</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.pp_countdown_divider_type">
                               <switch-option key="solid">Сплошной</switch-option>
                               <switch-option key="dashed">Пунктир</switch-option>
                               <switch-option key="dotted">Точки</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">MAX Ширина Счетчика</span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.countdown_product_page_width" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               <li>
                   <span class="module-create-title">Заголовок</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="settings.countdown_product_page_title"></j-opt-text-lang>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Заголовка</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.countdown_product_page_title_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона Заголовка</span>
                       <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.countdown_product_page_title_bg"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля Заголовка<small>Верх-Право-Низ-Лево</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.countdown_product_page_padding_top" class="journal-sort"></j-opt-text> -
                           <j-opt-text data-ng-model="settings.countdown_product_page_padding_right" class="journal-sort"></j-opt-text> -
                           <j-opt-text data-ng-model="settings.countdown_product_page_padding_bottom" class="journal-sort"></j-opt-text> -
                           <j-opt-text data-ng-model="settings.countdown_product_page_padding_left" class="journal-sort"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Выравнивание</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.countdown_product_page_title_align">
                               <switch-option key="left">Слева</switch-option>
                               <switch-option key="center">По Центру</switch-option>
                               <switch-option key="right">Справа</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона Раздела</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.countdown_product_page_option_bg"></j-opt-color>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля Раздела</span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.countdown_product_page_option_padding" class="journal-number-field"></j-opt-text>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.countdown_product_page_border"></j-opt-border>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

           </ul>
       </accordion-group>
   </accordion>
</div>

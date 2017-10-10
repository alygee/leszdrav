<div class="sticky">
<div class="module-header">
   <div class='module-name'>Модули<span>Супер Фильтр</span></div>

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
                   <span class="module-create-title">Флажки Выбора</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.filter_show_box">
                               <switch-option key="1">ВКЛ</switch-option>
                               <switch-option key="0">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Шрифт Заголовка</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.filter_heading_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Заголовка</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.filter_heading_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ Заголовка</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.filter_heading_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Высота Строки Заголовка</span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.filter_heading_height" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Шрифт Вариантов</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.filter_font"></j-opt-font>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Шрифта Активного Варианта</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.filter_active_text"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               
               <li>
                   <span class="module-create-title">Цвет Фона Секции</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.filter_section_bg"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>               

               <li>
                   <span class="module-create-title">Цвет Делителя Элементов</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.filter_item_divider"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Тип Делителя</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.filter_item_divider_type">
                           <switch-option key="solid">Сплошной</switch-option>
                           <switch-option key="dashed">Пунктир</switch-option>
                           <switch-option key="dotted">Точки</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">MAX Высота Секции<small>Генерирует полосу прокрутки</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.filter_height" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Интервал Секции<small>Дистанция между секциями</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.filter_section_spacing" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля Секции<small>Верх-Низ</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.filter_section_padding_from_title" class="journal-sort"></j-opt-text> -
                       <j-opt-text data-ng-model="settings.filter_section_padding_from_bottom" class="journal-sort"></j-opt-text>

                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля Вариантов<small>Верх-Право-Низ-Лево</small></span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.filter_section_padding_top" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.filter_section_padding_right" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.filter_section_padding_bottom" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.filter_section_padding_left" class="journal-sort"></j-opt-text>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля Изображения Секции<small>Верх-Право-Низ-Лево</small></span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.filter_image_section_padding_top" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.filter_image_section_padding_right" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.filter_image_section_padding_bottom" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.filter_image_section_padding_left" class="journal-sort"></j-opt-text>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Отступ Изображения<small>Право-Низ</small></span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.filter_image_section_margin_right" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.filter_image_section_margin_bottom" class="journal-sort"></j-opt-text>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ Изображения</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.filter_border"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Границ Активного Изображения</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.filter_active_border"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Размер Изображения Категории</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.filter_cat_image_size">
                           <switch-option key="12.5">16 px</switch-option>
                           <switch-option key="16.666666">25 px</switch-option>
                           <switch-option key="20">32 px</switch-option>
                           <switch-option key="25">43 px</switch-option>
                           <switch-option key="33.333333">60 px</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Размер Изображения Бренда</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.filter_brand_image_size">
                           <switch-option key="12.5">16 px</switch-option>
                           <switch-option key="16.666666">25 px</switch-option>
                           <switch-option key="20">32 px</switch-option>
                           <switch-option key="25">43 px</switch-option>
                           <switch-option key="33.333333">60 px</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Размер Изображения Варианта</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.filter_image_size">
                           <switch-option key="12.5">16 px</switch-option>
                           <switch-option key="16.666666">25 px</switch-option>
                           <switch-option key="20">32 px</switch-option>
                           <switch-option key="25">43 px</switch-option>
                           <switch-option key="33.333333">60 px</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

           </ul>
       </accordion-group>
       <accordion-group is-open="accordion.accordions[1]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Фильтр Цены</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Цвет Регулятора</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.filter_price_button"></j-opt-color>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Регулятора<br />при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.filter_price_button_hover"></j-opt-color>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Размер Регуляторов<small>Ширина х Высота</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.filter_price_button_width" class="journal-number-field"></j-opt-text> x
                           <j-opt-text data-ng-model="settings.filter_price_button_height" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Смещение Регуляторов по Вертикали</span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.filter_price_bar_offset" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Радиус Регуляторов</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.filter_price_button_radius" editor="hide-style"></j-opt-border>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Текста Цены</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.filter_price_color"></j-opt-color>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Цены</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.filter_price_tip"></j-opt-color>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Радиус Фона Цены</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.filter_price_tip_radius" editor="hide-style"></j-opt-border>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Полоски</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.filter_price_bar"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Статичной Полоски</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.filter_price_bar_static_color"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Толщина Полоски</span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.filter_price_bar_height" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля Секции Цены<small>Верх-Право-Низ-Лево</small></span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.filter_price_padding_top" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.filter_price_padding_right" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.filter_price_padding_bottom" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.filter_price_padding_left" class="journal-sort"></j-opt-text>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

           </ul>
       </accordion-group>
       <accordion-group is-open="accordion.accordions[2]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Сброс</div>
           </accordion-heading>
           <ul class="module-create-options">
               
               <li>
                   <span class="module-create-title">Отображать</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="settings.filter_reset_display">
                                       <switch-option key="text">Только Текст</switch-option>
                                       <switch-option key="both">Иконка + Текст</switch-option>
                                       <switch-option key="icon">Только Иконка</switch-option>
                                   </switch>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Текста</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.reset_color"></j-opt-color>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет <br />при Наведении</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.reset_hover"></j-opt-color>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Иконка Сброса</span>
                               <span class="module-create-option">
                                   <j-opt-icon data-ng-model="settings.reset_icon"></j-opt-icon>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Текста Подсказки</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.reset_tip_text"></j-opt-color>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Подсказки</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.reset_tip_bg"></j-opt-color>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Радиус Подсказки</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.filter_price_tooltip_radius" editor="hide-style"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
       <accordion-group is-open="accordion.accordions[3]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Язык</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Текст <br />"Загрузка"</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="settings.filter_loading_text"></j-opt-text-lang>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Текст <br />"Сброс"</span>
                           <span class="module-create-option">
                               <j-opt-text-lang data-ng-model="settings.filter_reset_text"></j-opt-text-lang>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Текст Заголовка<br />"Цена"</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="settings.filter_price_text"></j-opt-text-lang>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Текст Заголовка<br />"Бренды"</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="settings.filter_brands_text"></j-opt-text-lang>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Текст Заголовка<br />"Категории"</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="settings.filter_categories_text"></j-opt-text-lang>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Текст Заголовка<br />"Метки"</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="settings.filter_tags_text"></j-opt-text-lang>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Текст Заголовка<br />"Наличие"</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="settings.filter_availability_text"></j-opt-text-lang>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Текст<br />"В Наличии"</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="settings.filter_availability_yes_text"></j-opt-text-lang>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Текст<br />"Нет в Наличии"</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="settings.filter_availability_no_text"></j-opt-text-lang>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <!--<li>-->
                   <!--<span class="module-create-title">Текст<br />"Нет Продуктов"</span>-->
                   <!--<span class="module-create-option">-->
                       <!--<j-opt-text-lang data-ng-model="settings.filter_no_products_text"></j-opt-text-lang>-->
                   <!--</span>-->
                   <!--<a href="#" target="_blank" class="journal-tip"></a>-->
               <!--</li>-->
               <!--<li>-->
                   <!--<span class="module-create-title">Текст<br />"Нет Фильтров"</span>-->
                   <!--<span class="module-create-option">-->
                       <!--<j-opt-text-lang data-ng-model="settings.filter_no_filters_text"></j-opt-text-lang>-->
                   <!--</span>-->
                   <!--<a href="#" target="_blank" class="journal-tip"></a>-->
               <!--</li>-->
           </ul>
       </accordion-group>
   </accordion>
</div>

<div class="sticky">
<div class="module-header">
   <div class='module-name'>Шапка<span>Меню</span></div>

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

<div class="module-body header">
   <div class="accordion-bar bar-level-0 bar-expand" >
       <a data-ng-click="toggleAccordion(true)" class="hint--top" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(false)" class="hint--top" data-hint="Свернуть"><i class="collapse-icon"></i></a>
       <label class="close-others hint--top" data-hint="Закрыть Разделы"><input type="checkbox" data-ng-model="accordion.close_others" /></label>
   </div>
   <accordion id="main-accordion" close-others="accordion.close_others">
       <!--Top Menu-->
       <accordion-group is-open="accordion.accordions[0]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Верхнее Меню</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Шрифт Ссылок</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.top_menu_link_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Ссылок <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.top_menu_link_hover_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Статичного Текста</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.top_menu_text_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Границ<small>Классик / Слим Шапка</small></span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.top_menu_border_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона<small>Классик / Слим Шапка</small></span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.top_menu_bg_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона <br />при Наведении<small>Классик / Слим Шапка</small></span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.top_menu_link_hover_bg_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <!--<li>-->
                   <!--<span class="module-create-title">Top Bar Border Color</span>-->
                   <!--<span class="module-create-option">-->
                       <!--<j-opt-color data-ng-model="settings.center_top_menu_border_color"></j-opt-color>-->
                   <!--</span>-->
                   <!--<a href="#" target="_blank" class="journal-tip"></a>-->
               <!--</li>-->


           </ul>
       </accordion-group>
       <!--Secondary Menu-->
       <accordion-group is-open="accordion.accordions[1]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Дополнительное Меню</div>
           </accordion-heading>
           <ul class="module-create-options">

               <li>
                   <span class="module-create-title">Шрифт Ссылок</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.secondary_menu_link_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Ссылок при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.secondary_menu_link_hover_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Статичного Текста</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.secondary_menu_text_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона<small>Классик / Слим Шапка</small></span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.secondary_menu_bg_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

           </ul>
       </accordion-group>
       <!--Main Menu-->
       <accordion-group is-open="accordion.accordions[2]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Главное Меню</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Цвет Фона Меню</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.main_menu_bg_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-hide="settings.header_type == 'default'">
                   <span class="module-create-title">Цвет Фона по Ширине<small>Slim / Central / Mega Header</small></span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.main_menu_bg_full_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.main_menu_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Шрифта <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.menu_font_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.menu_bg_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ Меню</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.main_menu_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Делителя</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.menu_divider"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Делителя при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.menu_divider_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Тип Делителя</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.menu_divider_type">
                           <switch-option key="solid">Сплошной</switch-option>
                           <switch-option key="dashed">Пунктир</switch-option>
                           <switch-option key="dotted">Точки</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Высота Строки<small>Вертикальное Центрирование</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.menu_line_height" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <accordion>
                   <accordion-group is-open="false">
                       <accordion-heading>
                           <div class="accordion-bar bar-level-1">Мега Меню</div>
                       </accordion-heading>
                       <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.mega_menu_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.mega_menu_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Поля</span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.mega_menu_padding" class="journal-number-field"></j-opt-text>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Интервал Колонок</span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.menu_categories_item_margin" class="journal-number-field"></j-opt-text>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Тень</span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="settings.mega_menu_shadow">
                                           <switch-option key="0 2px 8px -2px rgba(0, 0, 0, 0.4)">ВКЛ</switch-option>
                                           <switch-option key="none">ВЫКЛ</switch-option>
                                       </switch>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
                       </ul>
                   </accordion-group>
               </accordion>

               <accordion>
                   <accordion-group is-open="false">
                       <accordion-heading>
                           <div class="accordion-bar bar-level-1">Мобильное Меню</div>
                       </accordion-heading>
                       <ul class="module-create-options">
                           <li>
                               <span class="module-create-title">Активировать на</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="settings.mobile_menu_on">
                                       <switch-option key="phone">Телефонах</switch-option>
                                       <switch-option key="tablet">Планшетах</switch-option>
                                   </switch>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.main_menu_mobile_bg_color"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Плюса</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.mobile_plus_color"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Цвет Фона Плюса</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.mobile_plus_bg"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Иконка</span>
                                   <span class="module-create-option">
                                       <j-opt-icon data-ng-model="settings.mobile_menu_icon"></j-opt-icon>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Текст "Меню"</span>
                                   <span class="module-create-option">
                                       <j-opt-text-lang data-ng-model="settings.mobile_menu_text"></j-opt-text-lang>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Шрифт Текста</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.mobile_text_font"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                       </ul>
                   </accordion-group>
               </accordion>
               <!-- Dropdown Menu -->
                   <accordion>
                       <accordion-group is-open="false">
                           <accordion-heading>
                               <div class="accordion-bar bar-level-1">Выпадающий Список</div>
                           </accordion-heading>
                           <ul class="module-create-options">
                                
                               <li>
                                   <span class="module-create-title">Шрифт</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.dropdown_font"></j-opt-font>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>

                               <li>
                                   <span class="module-create-title">Цвет Шрифта <br />при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.dropdown_font_hover"></j-opt-color>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>

                               <li>
                                   <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.dropdown_bg"></j-opt-color>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>

                               <li>
                                   <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.dropdown_bg_hover"></j-opt-color>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>
                               <li>
                                   <span class="module-create-title">Иконка Ссылки</span>
                                   <span class="module-create-option">
                                       <j-opt-icon data-ng-model="settings.dropdown_link_icon"></j-opt-icon>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>
                               <li>
                                   <span class="module-create-title">Иконка Подкатегории</span>
                                   <span class="module-create-option">
                                       <j-opt-icon data-ng-model="settings.dropdown_icon"></j-opt-icon>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>
                               <li>
                                   <span class="module-create-title">Цвет Иконки Подкатегории при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.dropdown_icon_hover"></j-opt-color>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>

                               <li>
                                   <span class="module-create-title">Цвет Делителя</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.dropdown_divider"></j-opt-color>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>
                               <li>
                                   <span class="module-create-title">Тип Делителя</span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="settings.dropdown_divider_type">
                                           <switch-option key="solid">Сплошной</switch-option>
                                           <switch-option key="dashed">Пунктир</switch-option>
                                           <switch-option key="dotted">Точки</switch-option>
                                       </switch>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>
                               <li>
                                   <span class="module-create-title">Тень</span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="settings.dropdown_shadow">
                                           <switch-option key="0 1px 8px -3px rgba(0, 0, 0, 0.5)">ВКЛ</switch-option>
                                           <switch-option key="none">ВЫКЛ</switch-option>
                                       </switch>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>

                           </ul>
                       </accordion-group>
                   </accordion>
 
               <!-- Mega Menu Categories-->
                   <accordion>
                       <accordion-group is-open="false">
                           <accordion-heading>
                               <div class="accordion-bar bar-level-1">Категории</div>
                           </accordion-heading>
                           <ul class="module-create-options">

                               <li>
                                   <span class="module-create-title">Цвет Фона Элемента</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.menu_categories_bg"></j-opt-color>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>
                               <li>
                                   <span class="module-create-title">Настройка Границ Элемента</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.menu_categories_border"></j-opt-border>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>
                               <li>
                                   <span class="module-create-title">Поля Элемента</span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.menu_categories_padding" class="journal-number-field"></j-opt-text>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>
                               <li>
                                   <span class="module-create-title">Шрифт Ссылок</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.menu_categories_link_font"></j-opt-font>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>
                               <li>
                                   <span class="module-create-title">Цвет Ссылок при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.menu_categories_link_font_hover"></j-opt-color>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>
                               <li>
                                   <span class="module-create-title">Иконка Ссылки</span>
                                   <span class="module-create-option">
                                       <j-opt-icon data-ng-model="settings.menu_categories_link_icon"></j-opt-icon>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>
                               <li>
                                   <span class="module-create-title">Отступ Ссылки Слева</span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.menu_categories_link_padding" class="journal-number-field"></j-opt-text>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>
                               <li>
                                   <span class="module-create-title">Отступ Ссылки Снизу</span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.menu_categories_link_bottom_margin" class="journal-number-field"></j-opt-text>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>

                               <li>
                                   <span class="module-create-title">Настройка Границ Изображения</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.menu_categories_image_border"></j-opt-border>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>
                               <li>
                                   <span class="module-create-title">Текст "Смотреть Ещё"</span>
                                   <span class="module-create-option">
                                       <j-opt-text-lang data-ng-model="settings.view_more_text"></j-opt-text-lang>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>
                               <li>
                                   <span class="module-create-title">Шрифт</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.view_more_font"></j-opt-font>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>
                               <li>
                                   <span class="module-create-title">Цвет Шрифта при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.view_more_font_hover"></j-opt-color>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>

                               <accordion>
                               <accordion-group is-open="false">
                                   <accordion-heading>
                                       <div class="accordion-bar bar-level-2">Заголовок</div>
                                   </accordion-heading>
                                   <ul class="module-create-options">

                                       <li>
                                           <span class="module-create-title">Шрифт</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.menu_categories_title_font"></j-opt-font>
                                   </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>
                                       <li>
                                           <span class="module-create-title">Цвет Шрифта при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.menu_categories_title_font_hover"></j-opt-color>
                                   </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>
                                       <li>
                                           <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.menu_categories_title_bg"></j-opt-color>
                                   </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>

                                       <li>
                                           <span class="module-create-title">Цвет Фона при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.menu_categories_title_bg_hover"></j-opt-color>
                                   </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>
                                       <li>
                                           <span class="module-create-title">Настройка Границ</span>
                                           <span class="module-create-option">
                                               <j-opt-border data-ng-model="settings.menu_categories_title_border"></j-opt-border>
                                           </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>
                                       <li>
                                           <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                                           <span class="module-create-option">
                                               <j-opt-color data-ng-model="settings.menu_categories_title_border_hover"></j-opt-color>
                                           </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>
                                       <li>
                                           <span class="module-create-title">Поля<small>Верх-Право-Низ-Лево</small></span>
                                           <span class="module-create-option">
                                               <j-opt-text data-ng-model="settings.menu_categories_title_padding_top" class="journal-sort"></j-opt-text> -
                                               <j-opt-text data-ng-model="settings.menu_categories_title_padding_right" class="journal-sort"></j-opt-text> -
                                               <j-opt-text data-ng-model="settings.menu_categories_title_padding_bottom" class="journal-sort"></j-opt-text> -
                                               <j-opt-text data-ng-model="settings.menu_categories_title_padding_left" class="journal-sort"></j-opt-text>
                                           </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>
                                       <li>
                                           <span class="module-create-title">Выравнивание</span>
                                       <span class="module-create-option">
                                           <switch data-ng-model="settings.menu_categories_title_align">
                                               <switch-option key="left">Слева</switch-option>
                                               <switch-option key="center">По Центру</switch-option>
                                               <switch-option key="right">Справа</switch-option>
                                           </switch>
                                       </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>

                                   </ul>
                               </accordion-group>
                                   </accordion>

                           </ul>
                       </accordion-group>
                   </accordion>

               <!-- Mega Menu Products-->
               <accordion>
               <accordion-group is-open="false">
               <accordion-heading>
                   <div class="accordion-bar bar-level-1">Продукты</div>
               </accordion-heading>
               <ul class="module-create-options">

                   <li>
                       <span class="module-create-title">Цвет Фона</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.menu_product_grid_item_bg"></j-opt-color>
                   </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.menu_product_grid_details_bg_hover"></j-opt-color>
                   </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Поля</span>
                       <span class="module-create-option">
                             <j-opt-text data-ng-model="settings.menu_product_grid_item_padding" class="journal-number-field"></j-opt-text>
                       </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

                   <li>
                       <span class="module-create-title">Настройка Границ</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.menu_product_grid_item_border"></j-opt-border>
                       </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.menu_product_grid_hover_border"></j-opt-color>
                       </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

                   <li>
                       <span class="module-create-title">Шрифт Названия Продукта</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.menu_product_grid_name_font"></j-opt-font>
                       </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>


                   <li>
                       <span class="module-create-title">Цвет Названия Продукта <br />при Наведении</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.menu_product_grid_name_font_hover"></j-opt-color>
                       </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

                   <li>
                       <span class="module-create-title">Шрифт Цены</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.menu_product_grid_price_font"></j-opt-font>
                       </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Настройка Границ Цены</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.menu_product_grid_price_border"></j-opt-border>
                       </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>



           <accordion>
               <accordion-group is-open="false">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-2">Кнопка "Купить"</div>
                   </accordion-heading>
                   <ul class="module-create-options">

                   <li>
                       <span class="module-create-title">Шрифт</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.menu_product_grid_button_font"></j-opt-font>
                   </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Цвет Шрифта<br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.menu_product_grid_button_font_hover"></j-opt-color>
                   </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>


                   <li>
                       <span class="module-create-title">Цвет Фона</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.menu_product_grid_button_bg"></j-opt-color>
                           </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>


                   <li>
                       <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.menu_product_grid_button_bg_hover"></j-opt-color>
                           </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

                   <li>
                       <span class="module-create-title">Настройка Границ</span>
                           <span class="module-create-option">
                               <j-opt-border data-ng-model="settings.menu_product_grid_button_border"></j-opt-border>
                           </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

                   <li>
                       <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.menu_product_grid_button_border_hover"></j-opt-color>
                           </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                       </ul>
                   </accordion-group>
               </accordion>

               </ul>
               </accordion-group>
               </accordion>




               <!-- Mega Menu Brands-->
                   <accordion>
                       <accordion-group is-open="false">
                           <accordion-heading>
                               <div class="accordion-bar bar-level-1">Бренды</div>
                           </accordion-heading>
                           <ul class="module-create-options">
                               <li>
                                   <span class="module-create-title">Цвет Фона Элемента</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.menu_brands_bg"></j-opt-color>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>
                               <li>
                                   <span class="module-create-title">Настройка Границ Элемента</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.menu_brands_border"></j-opt-border>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>
                               <li>
                                   <span class="module-create-title">Поля Элемента</span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.menu_brands_padding" class="journal-number-field"></j-opt-text>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>

                               <li>
                                   <span class="module-create-title">Настройка Границ Изображения</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.menu_brands_image_border"></j-opt-border>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>
                               <!--<li>-->
                                   <!--<span class="module-create-title">Image Top Spacing<small>Distance from Title</small></span>-->
                                   <!--<span class="module-create-option">-->
                                       <!--<j-opt-text data-ng-model="settings.menu_brands_image_top_spacing" class="journal-number-field"></j-opt-text>-->
                                   <!--</span>-->
                                   <!--<a href="#" target="_blank" class="journal-tip"></a>-->
                               <!--</li>-->

                               <accordion>
                                   <accordion-group is-open="false">
                                       <accordion-heading>
                                           <div class="accordion-bar bar-level-2">Заголовок</div>
                                       </accordion-heading>
                                       <ul class="module-create-options">

                                           <li>
                                               <span class="module-create-title">Шрифт</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.menu_brands_title_font"></j-opt-font>
                                   </span>
                                               <a href="#" target="_blank" class="journal-tip"></a>
                                           </li>
                                           <li>
                                               <span class="module-create-title">Цвет Шрифта при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.menu_brands_title_font_hover"></j-opt-color>
                                   </span>
                                               <a href="#" target="_blank" class="journal-tip"></a>
                                           </li>
                                           <li>
                                               <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.menu_brands_title_bg"></j-opt-color>
                                   </span>
                                               <a href="#" target="_blank" class="journal-tip"></a>
                                           </li>

                                           <li>
                                               <span class="module-create-title">Цвет Фона при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.menu_brands_title_bg_hover"></j-opt-color>
                                   </span>
                                               <a href="#" target="_blank" class="journal-tip"></a>
                                           </li>
                                           <li>
                                               <span class="module-create-title">Настройка Границ</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.menu_brands_title_border"></j-opt-border>
                                   </span>
                                               <a href="#" target="_blank" class="journal-tip"></a>
                                           </li>
                                           <li>
                                               <span class="module-create-title">Цвет Границ при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.menu_brands_title_border_hover"></j-opt-color>
                                   </span>
                                               <a href="#" target="_blank" class="journal-tip"></a>
                                           </li>
                                           <li>
                                               <span class="module-create-title">Поля<small>Верх-Право-Низ-Лево</small></span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.menu_brands_title_padding_top" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.menu_brands_title_padding_right" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.menu_brands_title_padding_bottom" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.menu_brands_title_padding_left" class="journal-sort"></j-opt-text>
                                   </span>
                                               <a href="#" target="_blank" class="journal-tip"></a>
                                           </li>
                                           <li>
                                               <span class="module-create-title">Выравнивание</span>
                                       <span class="module-create-option">
                                           <switch data-ng-model="settings.menu_brands_title_align">
                                               <switch-option key="left">Слева</switch-option>
                                               <switch-option key="center">По Центру</switch-option>
                                               <switch-option key="right">Справа</switch-option>
                                           </switch>
                                       </span>
                                               <a href="#" target="_blank" class="journal-tip"></a>
                                           </li>

                                       </ul>
                                   </accordion-group>
                               </accordion>

                           </ul>
                       </accordion-group>
                   </accordion>


                   <!-- Mega Menu HTML-->
                   <accordion>
                       <accordion-group is-open="false">
                           <accordion-heading>
                               <div class="accordion-bar bar-level-1">HTML</div>
                           </accordion-heading>
                           <ul class="module-create-options">

                               <li>
                                   <span class="module-create-title">Шрифт</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.menu_html_font"></j-opt-font>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>

                               <li>
                                   <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.menu_html_bg"></j-opt-color>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>

                                <li>
                                   <span class="module-create-title">Настройка Границ</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.menu_html_border"></j-opt-border>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>

                               <li>
                                   <span class="module-create-title">Поля</span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.menu_html_padding_top" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.menu_html_padding_right" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.menu_html_padding_bottom" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.menu_html_padding_left" class="journal-sort"></j-opt-text>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>

                               <accordion>
                                   <accordion-group is-open="false">
                                       <accordion-heading>
                                           <div class="accordion-bar bar-level-2">Заголовок</div>
                                       </accordion-heading>
                                       <ul class="module-create-options">

                                           <li>
                                               <span class="module-create-title">Шрифт</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.menu_html_title_font"></j-opt-font>
                                   </span>
                                               <a href="#" target="_blank" class="journal-tip"></a>
                                           </li>
                                           <li>
                                               <span class="module-create-title">Цвет Шрифта при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.menu_html_title_font_hover"></j-opt-color>
                                   </span>
                                               <a href="#" target="_blank" class="journal-tip"></a>
                                           </li>
                                           <li>
                                               <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.menu_html_title_bg"></j-opt-color>
                                   </span>
                                               <a href="#" target="_blank" class="journal-tip"></a>
                                           </li>

                                           <li>
                                               <span class="module-create-title">Цвет Фона при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.menu_html_title_bg_hover"></j-opt-color>
                                   </span>
                                               <a href="#" target="_blank" class="journal-tip"></a>
                                           </li>
                                           <li>
                                               <span class="module-create-title">Настройка Границ</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.menu_html_title_border"></j-opt-border>
                                   </span>
                                               <a href="#" target="_blank" class="journal-tip"></a>
                                           </li>
                                           <li>
                                               <span class="module-create-title">Цвет Границ при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.menu_html_title_border_hover"></j-opt-color>
                                   </span>
                                               <a href="#" target="_blank" class="journal-tip"></a>
                                           </li>
                                           <li>
                                               <span class="module-create-title">Поля<small>Верх-Право-Низ-Лево</small></span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.menu_html_title_padding_top" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.menu_html_title_padding_right" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.menu_html_title_padding_bottom" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.menu_html_title_padding_left" class="journal-sort"></j-opt-text>
                                   </span>
                                               <a href="#" target="_blank" class="journal-tip"></a>
                                           </li>
                                           <li>
                                               <span class="module-create-title">Выравнивание</span>
                                       <span class="module-create-option">
                                           <switch data-ng-model="settings.menu_html_title_align">
                                               <switch-option key="left">Слева</switch-option>
                                               <switch-option key="center">По Центру</switch-option>
                                               <switch-option key="right">Справа</switch-option>
                                           </switch>
                                       </span>
                                               <a href="#" target="_blank" class="journal-tip"></a>
                                           </li>

                                       </ul>
                                   </accordion-group>
                               </accordion>
                           </ul>
                       </accordion-group>
                   </accordion>

               <!-- Mega Menu MIXED-->
               <accordion>
                   <accordion-group is-open="false">
                       <accordion-heading>
                           <div class="accordion-bar bar-level-1">Смесь</div>
                       </accordion-heading>
                       <ul class="module-create-options">

                           <accordion>
                               <accordion-group is-open="true">
                                   <accordion-heading>
                                       <div class="accordion-bar bar-level-2">HTML Blocks</div>
                                   </accordion-heading>
                                   <ul class="module-create-options">

                                       <li>
                                           <span class="module-create-title">Шрифт Заголовков<small>H1 - H3 теги</small></span>
                                               <span class="module-create-option">
                                                   <j-opt-font data-ng-model="settings.mixed_cms_heading_font"></j-opt-font>
                                               </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>

                                       <li>
                                           <span class="module-create-title">Шрифт Текста<small>p тег</small></span>
                                               <span class="module-create-option">
                                                   <j-opt-font data-ng-model="settings.mixed_cms_font"></j-opt-font>
                                               </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>

                                       <li>
                                           <span class="module-create-title">Высота Строки<small>в пикселях</small></span>
                                               <span class="module-create-option">
                                                   <j-opt-text data-ng-model="settings.mixed_cms_block_line_height" class="journal-number-field"></j-opt-text>
                                               </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>

                                       <li>
                                           <span class="module-create-title">Цвет Фона Блока</span>
                                               <span class="module-create-option">
                                                   <j-opt-color data-ng-model="settings.mixed_cms_block_bg"></j-opt-color>
                                               </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>
                                       <li>
                                           <span class="module-create-title">Отступ Заголовка<small>Поле Снизу</small></span>
                                               <span class="module-create-option">
                                                   <j-opt-text data-ng-model="settings.mixed_cms_heading_padding" class="journal-number-field"></j-opt-text>
                                               </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>

                                       <li>
                                           <span class="module-create-title">Поля Содержания<small>Верх-Право-Низ-Лево</small></span>
                                               <span class="module-create-option">
                                                   <j-opt-text data-ng-model="settings.mixed_cms_padding_top" class="journal-sort"></j-opt-text> -
                                                   <j-opt-text data-ng-model="settings.mixed_cms_padding_right" class="journal-sort"></j-opt-text> -
                                                   <j-opt-text data-ng-model="settings.mixed_cms_padding_bottom" class="journal-sort"></j-opt-text> -
                                                   <j-opt-text data-ng-model="settings.mixed_cms_padding_left" class="journal-sort"></j-opt-text>
                                               </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>
                                       </ul>
                                   </accordion-group>
                               </accordion>

                           <accordion>
                               <accordion-group is-open="true">
                                   <accordion-heading>
                                       <div class="accordion-bar bar-level-2">Заголовок</div>
                                   </accordion-heading>
                                   <ul class="module-create-options">
                                       <li>
                                           <span class="module-create-title">Шрифт</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.mixed_cms_title_font"></j-opt-font>
                                   </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>

                                       <li>
                                           <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.mixed_cms_title_bg"></j-opt-color>
                                   </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>


                                       <li>
                                           <span class="module-create-title">Настройка Границ</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.mixed_cms_title_border"></j-opt-border>
                                   </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>

                                       <li>
                                           <span class="module-create-title">Интервал<small>Отступ Снизу</small></span>
                                               <span class="module-create-option">
                                                   <j-opt-text data-ng-model="settings.mixed_cms_margin_bottom" class="journal-number-field"></j-opt-text>
                                               </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>

                                       <li>
                                           <span class="module-create-title">Поля<small>Верх-Право-Низ-Лево</small></span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.mixed_cms_title_padding_top" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.mixed_cms_title_padding_right" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.mixed_cms_title_padding_bottom" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.mixed_cms_title_padding_left" class="journal-sort"></j-opt-text>
                                   </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>


                                   </ul>
                               </accordion-group>
                           </accordion>
                       </ul>
                   </accordion-group>
               </accordion>
       </ul>

       </accordion-group>
   </accordion>
</div>

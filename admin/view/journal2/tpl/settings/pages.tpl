<div class="sticky">
   <div class="module-header">
       <div class='module-name'>Настройки<span>Страницы</span></div>

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

   <!--Information pages-->
   <accordion-group is-open="accordion.accordions[0]">
       <accordion-heading>
           <div class="accordion-bar bar-level-0">Информационные Страницы</div>
       </accordion-heading>
       <ul class="module-create-options">

           <li>
               <span class="module-create-title">Основной Шрифт</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.info_page_p_font"></j-opt-font>
                       </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>
           <li>
               <span class="module-create-title">Высота Строки</span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.info_page_line_height" class="journal-number-field"></j-opt-text>
                       </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>

           <li>
               <span class="module-create-title">Шрифт тега H1</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.info_page_h1_font"></j-opt-font>
                       </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>
           <li>
               <span class="module-create-title">Шрифт тега H2</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.info_page_h2_font"></j-opt-font>
                       </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>
           <li>
               <span class="module-create-title">Шрифт тега H3</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.info_page_h3_font"></j-opt-font>
                       </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>

           <!-- Page Title-->
           <accordion-group is-open="true">
               <accordion-heading>
                   <div class="accordion-bar bar-level-1">Заголовок</div>
               </accordion-heading>
               <ul>

                   <li>
                       <span class="module-create-title">Шрифт</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.info_page_title_font"></j-opt-font>
                                   </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

                   <li>
                       <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.info_page_title_bg"></j-opt-color>
                                   </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

                   <li>
                       <span class="module-create-title">Настройка Границ</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.info_page_title_border"></j-opt-border>
                                   </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

                   <li>
                       <span class="module-create-title">Высота Строки<small>Вертикальное Центрирование</small></span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.info_page_title_line_height" class="journal-number-field"></j-opt-text>
                                   </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Поля<small>Лево-Право</small></span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.info_page_title_padding_left" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.info_page_title_padding_right" class="journal-sort"></j-opt-text>
                           </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Выравнивание</span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="settings.info_page_title_align">
                                           <switch-option key="left">Слева</switch-option>
                                           <switch-option key="center">По Центру</switch-option>
                                           <switch-option key="right">Справа</switch-option>
                                       </switch>
                                   </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

               </ul>
           </accordion-group>


       </ul>
   </accordion-group>

   <!--Tables-->
       <accordion-group is-open="accordion.accordions[1]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Таблицы</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Цвет Шрифта</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.shopping_table_color"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.shopping_table_bg_color"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Ссылок</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.shopping_table_link_color"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Ссылок <br />при Наведении</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.shopping_table_link_hover_color"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ Содержания</span>
                                       <span class="module-create-option">
                                           <j-opt-border data-ng-model="settings.shopping_table_border"></j-opt-border>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Шрифта Заголовка</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.shopping_table_header_color"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Заголовка</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.shopping_table_header_bg"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ Изображения</span>
                                       <span class="module-create-option">
                                           <j-opt-border data-ng-model="settings.shopping_image_border"></j-opt-border>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Делителя</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.shopping_divider"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Тип Делителя</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.shopping_divider_style">
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
               <div class="accordion-bar bar-level-0">Аккаунт</div>
           </accordion-heading>
           <ul class="module-create-options">

               <li>
                   <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.login_screen_bg"></j-opt-color>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Текста</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.login_screen_text_font_color"></j-opt-font>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ</span>
                           <span class="module-create-option">
                               <j-opt-border data-ng-model="settings.login_screen_border"></j-opt-border>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Делителя</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.login_screen_divider"></j-opt-color>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля Контейнера</span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.login_screen_padding" class="journal-number-field"></j-opt-text>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Сообщения <br/>"Обязательное Поле"</span>
                           <span class="module-create-option">
                               <j-opt-font data-ng-model="settings.required_field_font"></j-opt-font>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Сообщения <br/>"Обязательное Поле"</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.required_field_bg"></j-opt-color>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


           </ul>
       </accordion-group>
       <!--Shopping Cart Page-->
       <accordion-group is-open="accordion.accordions[3]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Корзина Покупок <span>Поле дополнительных возможностей</span></div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Шрифт Заголовка</span>
                                       <span class="module-create-option">
                                           <j-opt-font data-ng-model="settings.shopping_action_header"></j-opt-font>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Заголовка</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.shopping_action_header_bg"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Шрифта под Заголовком</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.shopping_action_color"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.shopping_action_bg"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ</span>
                                       <span class="module-create-option">
                                           <j-opt-border data-ng-model="settings.shopping_action_border"></j-opt-border>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Отступ Сверху</span>
                                       <span class="module-create-option">
                                           <j-opt-text data-ng-model="settings.shopping_action_margin" class="journal-number-field"></j-opt-text>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Шрифт Вариантов</span>
                                       <span class="module-create-option">
                                           <j-opt-font data-ng-model="settings.shopping_option_font"></j-opt-font>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Шрифта <br />при Наведении</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.shopping_option_hover_color"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона Вариантов</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.shopping_option_bg"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Вариантов при Наведении</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.shopping_option_bg_hover"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Делителя Вариантов</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.shopping_option_divider"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Шрифт Итога</span>
                                       <span class="module-create-option">
                                           <j-opt-font data-ng-model="settings.shopping_total_font"></j-opt-font>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <accordion-group is-open="false">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-1">Кнопки "Обновить" и "Удалить" <span>Только в Opencart 2.x</span></div>
                   </accordion-heading>
                   <ul class="module-create-options">
                   <accordion>
                               <accordion-group is-open="false">
                                   <accordion-heading>
                                       <div class="accordion-bar bar-level-2">Кнопка "Обновить"</div>
                                   </accordion-heading>
                                   <ul class="module-create-options">
                       <li>
                           <span class="module-create-title">Цвет Иконки</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.update_button_icon_color"></j-opt-color>
                               </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цвет Фона</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.update_button_bg_color"></j-opt-color>
                               </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цвет Иконки при Наведении</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.update_button_icon_hover"></j-opt-color>
                               </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цвет Фона при Наведении</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.update_button_bg_hover"></j-opt-color>
                               </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       </ul>
                               </accordion-group>
                                   </accordion>
                        <accordion>
                               <accordion-group is-open="false">
                                   <accordion-heading>
                                       <div class="accordion-bar bar-level-2">Кнопка "Удалить"</div>
                                   </accordion-heading>
                                   <ul class="module-create-options">
                       <li>
                           <span class="module-create-title">Цвет Иконки</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.delete_button_icon_color"></j-opt-color>
                               </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цвет Фона</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.delete_button_bg_color"></j-opt-color>
                               </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цвет Иконки при Наведении</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.delete_button_icon_hover"></j-opt-color>
                               </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цвет Фона при Наведении</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.delete_button_bg_hover"></j-opt-color>
                               </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       </ul>
                               </accordion-group>
                                   </accordion>

                   </ul>
               </accordion-group>

           </ul>
       </accordion-group>
       <!--Checkout Page-->
       <accordion-group is-open="accordion.accordions[4]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Оформление Заказа</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.checkout_bg"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля Содержания</span>
                                       <span class="module-create-option">
                                           <j-opt-text data-ng-model="settings.checkout_padding" class="journal-number-field"></j-opt-text>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>               
               <li>
                   <span class="module-create-title">Радиус Границ Формы</span>
                                       <span class="module-create-option">
                                           <j-opt-border data-ng-model="settings.checkout_border" editor="hide-style"></j-opt-border>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Шрифта Подтверждения Заказа</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.checkout_confirm_color"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Подтверждения Заказа</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.checkout_confirm_bg_color"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Делителя Подтверждения Заказа</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.checkout_confirm_divider_color"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Текста Colorbox<small>Opencart 1.5.x</small></span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.colorbox_text_color"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Ссылок "Изменить" <small>Opencart 1.5.x</small></span>
                                       <span class="module-create-option">
                                           <j-opt-font data-ng-model="settings.checkout_modify_font"></j-opt-font>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Шрифта при Наведении <small>Opencart 1.5.x</small></span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.checkout_modify_font_hover"></j-opt-color>
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
                                           <j-opt-font data-ng-model="settings.checkout_heading_font"></j-opt-font>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Шрифта при Наведении<small>Opencart 2.x</small></span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.checkout_heading_font_hover"></j-opt-color>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.checkout_heading_bg_color"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона при Наведении<small>Opencart 2.x</small></span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.checkout_heading_bg_hover"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Делителя<small>Opencart 1.5.x</small></span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.checkout_heading_divider_color"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Тип Делителя<small>Opencart 1.5.x</small></span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.checkout_heading_divider_type">
                           <switch-option key="solid">Сплошной</switch-option>
                           <switch-option key="dashed">Пунктир</switch-option>
                           <switch-option key="dotted">Точки</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               </ul>
                               </accordion-group>
                                   </accordion>
           </ul>
       </accordion-group>

       <!--Contact Page-->
       <!--<accordion-group is-open="accordion.accordions[4]">-->
           <!--<accordion-heading>-->
               <!--<div class="accordion-bar bar-level-0">Contact Page</div>-->
           <!--</accordion-heading>-->
           <!--<ul class="module-create-options">-->


           <!--</ul>-->
       <!--</accordion-group>-->

       <!--Action Buttons-->
       <accordion-group is-open="accordion.accordions[5]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Кнопка Действия</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.actions_bg_color"></j-opt-color>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ</span>
                           <span class="module-create-option">
                               <j-opt-border data-ng-model="settings.actions_border"></j-opt-border>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля<small>Верх-Низ / Лево-Право</small></span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.actions_padding_tb" class="journal-number-field"></j-opt-text> x
                               <j-opt-text data-ng-model="settings.actions_padding_lr" class="journal-number-field"></j-opt-text>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>

       <!--Site Map-->
       <accordion-group is-open="accordion.accordions[6]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Карта Сайта</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Шрифт Главной Категории</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.site_map_top"></j-opt-font>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Подкатегории</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.site_map_sub"></j-opt-font>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.site_map_bg"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ Фона</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.site_map_border"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля Фона</span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.site_map_padding" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

           </ul>
       </accordion-group>

       <!--ALERTS-->
       <accordion-group is-open="accordion.accordions[7]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Предупреждения</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Шрифт Предупреждения</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.warning_font"></j-opt-font>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Предупреждения</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.warning_bg"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Успеха</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.success_font"></j-opt-font>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Успеха</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.success_bg"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>

       <!--BLOG MANAGER-->
       <accordion-group is-open="accordion.accordions[8]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Расширение Блог Менеджер <small>устанавливается отдельно</small></div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Шрифт Заголовков Статей</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.blog_manager_post_title"></j-opt-font>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title"></span>
                       <span class="module-create-option">
                           Для изменения других стилей модуля внесите правки в blog.css
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
</accordion>
</div>

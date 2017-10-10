<div class="sticky">
<div class="module-header">
   <div class='module-name'>Настройки<span>Подвал</span></div>

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

<div class="module-body footer-options">
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
                   <span class="module-create-title">Подвал в Блоке</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.fullwidth_footer">
                           <switch-option key="boxed-footer">ВКЛ</switch-option>
                           <switch-option key="fullwidth-footer">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.footer_bg_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Фоновое Изображение</span>
                   <span class="module-create-option">
                       <j-opt-background data-ng-model="settings.footer_bg_image"></j-opt-background>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.footer_border"></j-opt-border>
                       </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Отступ Сверху</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.footer_top_margin">
                               <switch-option key="20">ВКЛ</switch-option>
                               <switch-option key="0">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Отступ Снизу</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.footer_bottom_margin">
                               <switch-option key="20">ВКЛ</switch-option>
                               <switch-option key="0">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
               </ul>
           </accordion-group>
       <accordion-group is-open="accordion.accordions[1]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Колонки</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Шрифт Заголовка</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.footer_titles"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Делителя Заголовка</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.footer_titles_divider"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Тип Делителя</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.footer_titles_divider_type">
                           <switch-option key="solid">Сплошной</switch-option>
                           <switch-option key="dashed">Пунктир</switch-option>
                           <switch-option key="dotted">Точки</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Выравнивание</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.footer_titles_align">
                               <switch-option key="left">Слева</switch-option>
                               <switch-option key="center">По Центру</switch-option>
                               <switch-option key="right">Справа</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Шрифт Ссылок</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.footer_links"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Ссылок <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.footer_links_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <accordion-group is-open="true">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-1">HTML Колонка</div>
                   </accordion-heading>
                   <ul class="module-create-options">
                       <li>
                           <span class="module-create-title">Шрифт Заголовка<small>H1 - H3 теги</small></span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.footer_html_heading_font"></j-opt-font>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Шрифт Текста<small>p тег</small></span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.footer_html_p_font"></j-opt-font>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Отступ Заголовка<small>Поле Снизу</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.footer_html_heading_padding" class="journal-number-field"></j-opt-text>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Отступ Параграфа<small>Поле Снизу</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.footer_html_p_padding" class="journal-number-field"></j-opt-text>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <!--<li>-->
                           <!--<span class="module-create-title">HTML Font Color</span>-->
                   <!--<span class="module-create-option">-->
                       <!--<j-opt-color data-ng-model="settings.html_font_color"></j-opt-color>-->
                   <!--</span>-->
                           <!--<a href="#" target="_blank" class="journal-tip"></a>-->
                       <!--</li>-->
                       <li>
                           <span class="module-create-title">Высота строки<small>в пикселях</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.html_line_height" class="journal-number-field"></j-opt-text>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       </ul>
                   </accordion-group>


               <accordion-group is-open="true">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-1">Колонка Продуктов</div>
                   </accordion-heading>
                   <ul class="module-create-options">
                       <li>
                           <span class="module-create-title">Размер Изображения</span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.footer_product_image_width" class="journal-number-field"></j-opt-text> x
                               <j-opt-text data-ng-model="settings.footer_product_image_height" class="journal-number-field"></j-opt-text>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Поля Элемента<small>Интервал между продуктами</small></span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.footer_product_padding" class="journal-number-field"></j-opt-text>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Переполнение Названия Продукта</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.footer_product_name_overflow">
                           <switch-option key="nowrap">ВКЛ</switch-option>
                           <switch-option key="normal">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Шрифт Названия</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.footer_product_name_font"></j-opt-font>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цвет Шрифта <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.footer_product_name_font_hover"></j-opt-color>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Шрифт Цены</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.footer_product_price_font"></j-opt-font>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Шрифт Старой Цены</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.footer_product_old_price_font"></j-opt-font>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Цвет Делителя</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.footer_product_divider"></j-opt-color>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Тип Делителя</span>
                           <span class="module-create-option">
                               <switch data-ng-model="settings.footer_product_divider_type">
                                   <switch-option key="solid">Сплошной</switch-option>
                                   <switch-option key="dashed">Пунктир</switch-option>
                                   <switch-option key="dotted">Точки</switch-option>
                               </switch>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                   </ul>
               </accordion-group>

               <!--Blog Column-->

               <accordion-group is-open="true">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-1">Колонка Статей Блога</div>
                   </accordion-heading>
                   <ul class="module-create-options">
                       <li>
                           <span class="module-create-title">Размер Изображения</span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.footer_post_image_width" class="journal-number-field"></j-opt-text> x
                               <j-opt-text data-ng-model="settings.footer_post_image_height" class="journal-number-field"></j-opt-text>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Поля Элемента<small>Интервал между статьями</small></span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.footer_post_padding" class="journal-number-field"></j-opt-text>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Переполнение Заголовка</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.footer_post_name_overflow">
                           <switch-option key="nowrap">ВКЛ</switch-option>
                           <switch-option key="normal">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Шрифт Заголовка</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.footer_post_name_font"></j-opt-font>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цвет Шрифта <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.footer_post_name_font_hover"></j-opt-color>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Шрифт Даты</span>
                           <span class="module-create-option">
                               <j-opt-font data-ng-model="settings.footer_post_price_date"></j-opt-font>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Цвет Иконки Даты</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.footer_post_date_icon_color"></j-opt-color>
                               </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цвет Иконки Комментариев</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.footer_post_comment_icon_color"></j-opt-color>
                               </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>


                       <li>
                           <span class="module-create-title">Цвет Делителя</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.footer_post_divider"></j-opt-color>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Тип Делителя</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.footer_post_divider_type">
                           <switch-option key="solid">Сплошной</switch-option>
                           <switch-option key="dashed">Пунктир</switch-option>
                           <switch-option key="dotted">Точки</switch-option>
                       </switch>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                   </ul>
               </accordion-group>
                   </ul>
           </accordion-group>
       <accordion-group is-open="accordion.accordions[2]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Панель Контактов</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.contacts_bar_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона Иконки</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.contacts_icon_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Иконки при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.contacts_icon_bg_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Иконки при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.contacts_icon_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ Панели</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.contacts_bar_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Тень Панели</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.contacts_bar_shadow">
                           <switch-option key="none">ВЫКЛ</switch-option>
                           <switch-option key="0 0 7px rgba(0,0,0,.4)">Норма</switch-option>
                           <switch-option key="0 0px 10px 1px rgba(0, 0, 0, 0.05)">Мягкая</switch-option>

                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Иконки по Центру</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.contacts_display">
                           <switch-option key="on">ВКЛ</switch-option>
                           <switch-option key="off">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Шрифт Текста</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.contacts_text_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Ссылок <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.contacts_text_font_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

                <li>
                   <span class="module-create-title">Цвет Шрифта Подсказки</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.footer_tooltip_font"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
                <li>
                   <span class="module-create-title">Цвет Фона Подсказки</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.footer_tooltip_bg_color"></j-opt-color>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

                <li>
                   <span class="module-create-title">Радиус Подсказки</span>
                           <span class="module-create-option">
                               <j-opt-border data-ng-model="settings.footer_tooltip_border" editor="hide-style"></j-opt-border>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
       <accordion-group is-open="accordion.accordions[3]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Нижняя Панель <span>авторские права</span></div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Шрифт</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.copyright_font_settings"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Ссылок</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.copyright_link"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Ссылок <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.copyright_link_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона Панели</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.bottom_bar_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Тень Панели</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.bottom_bar_shadow">
                           <switch-option key="none">ВЫКЛ</switch-option>
                           <switch-option key="0 0 7px rgba(0,0,0,.4)">Норма</switch-option>
                           <switch-option key="0 6px 20px rgba(0,0,0,.2)">Мягкая</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Панель по Всей Ширине</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.boxed_bottom">
                           <switch-option key="fullwidth-bar">ВКЛ</switch-option>
                           <switch-option key="boxed-bar">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ Панели</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.bottom_bar_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
   </accordion>
</div>
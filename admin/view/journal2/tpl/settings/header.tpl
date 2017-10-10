<div class="sticky">
<div class="module-header">
   <div class='module-name'>Шапка<span>Основное</span></div>

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
       <accordion-group is-open="accordion.accordions[0]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Основное</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Шапка в Боксе</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.boxed_header">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li data-ng-hide="settings.boxed_header == '0'">
                   <span class="module-create-title">Отступ Сверху</span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.boxed_top_spacing" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Тип</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.header_type">
                           <switch-option key="default">Классик</switch-option>
                           <switch-option key="extended">Слим</switch-option>
                           <switch-option key="center">По Центру</switch-option>
                           <switch-option key="mega">Мега</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-show="settings.header_type == 'center' || settings.header_type == 'mega'">
                   <span class="module-create-title">Высота Области Логотипа</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.header_height">
                           <switch-option key="normal">100 px</switch-option>
                           <switch-option key="medium">130 px</switch-option>
                           <switch-option key="tall">150 px</switch-option>
                           <switch-option key="taller">170 px</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.header_type == 'mega'">
                   <span class="module-create-title">Выравнивание Логотипа</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.mega_header_align">
                           <switch-option key="left">Слева</switch-option>
                           <switch-option key="center">По Центру</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Липкая Шапка<small>всегда наверху при прокрутке</small></span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.sticky_header">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.top_bar_status == 'off'">
                   <span class="module-create-title">Цвет Фона Верхней Панели</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.top_bar_bg_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.header_type == 'default' || settings.header_type == 'extended'">
                   <span class="module-create-title">Цвет Границ Верхней Панели</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.center_top_menu_border"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li data-ng-hide="settings.header_type == 'default' || settings.header_type == 'extended'">
                   <span class="module-create-title">Тип Границ Верхней Панели</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.top_bar_divider_type">
                           <switch-option key="solid">Сплошной</switch-option>
                           <switch-option key="dashed">Пунктир</switch-option>
                           <switch-option key="dotted">Точки</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>



               <li>
                   <span class="module-create-title">Цвет Фона Шапки</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.header_bg_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Фоновое Изображение Шапки</span>
                   <span class="module-create-option">
                       <j-opt-background data-ng-model="settings.header_bg_image"></j-opt-background>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

              <li>
                   <span class="module-create-title">Тень Верхней Панели</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.top_menu_shadow">
                           <switch-option key="none">ВЫКЛ</switch-option>
                           <switch-option key="0 1px 4px -1px rgba(0, 0, 0, 0.7)">Норма</switch-option>
                           <switch-option key="0 0px 10px 1px rgba(0, 0, 0, 0.05)">Мягкая</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Тень Шапки</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.header_shadow">
                           <switch-option key="none">ВЫКЛ</switch-option>
                           <switch-option key="0 1px 4px -1px rgba(0, 0, 0, 0.7)">Норма</switch-option>
                           <switch-option key="0 0px 10px 1px rgba(0, 0, 0, 0.05)">Мягкая</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Иконки Блоками в Верхнем Меню</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.top_menu_icon_display">
                           <switch-option key="block">ВКЛ</switch-option>
                           <switch-option key="inline">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li data-ng-hide="settings.header_type == 'center' || settings.header_type == 'mega'">
                   <span class="module-create-title">Цвет Фона Логотипа</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.logo_bg_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <!--<li data-ng-show="settings.header_type == 'mega'">-->
                   <!--<span class="module-create-title">Logo Left Padding</span>-->
                   <!--<span class="module-create-option">-->
                       <!--<j-opt-text data-ng-model="settings.logo_left_padding" class="journal-number-field"></j-opt-text>-->
                   <!--</span>-->
                   <!--<a href="#" target="_blank" class="journal-tip"></a>-->
               <!--</li>-->
 
           </ul>
       </accordion-group>
       <!-- Cart Default -->
       <accordion-group is-open="accordion.accordions[1]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Корзина</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Шрифт Заголовка</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.cart_heading_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-hide="settings.header_type == 'center' || settings.header_type == 'mega'">
                   <span class="module-create-title">Цвет Фона Заголовка</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.cart_heading_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.header_type == 'center' || settings.header_type == 'mega'">
                   <span class="module-create-title">Цвет Фона Заголовка</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.cart_heading_bg_center"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.header_type == 'center' || settings.header_type == 'mega'">
                   <span class="module-create-title">Цвет Фона Заголовка при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.cart_heading_bg_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.header_type == 'center' || settings.header_type == 'mega'">
                   <span class="module-create-title">Цвет Фона Заголовка на Мобильных</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.cart_heading_bg_mobile"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.header_type == 'center' || settings.header_type == 'mega'">
                   <span class="module-create-title">Настройка Границ Заголовка</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.cart_heading_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-show="settings.header_type == 'center' || settings.header_type == 'mega'">
                   <span class="module-create-title">Радиус Границ Содержания</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.cart_heading_content_border" editor="hide-style"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Иконка Корзины</span>
                   <span class="module-create-option">
                       <j-opt-icon data-ng-model="settings.cart_heading_icon"></j-opt-icon>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Иконки при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.cart_icon_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Иконки</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.cart_heading_icon_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Делителя Иконки</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.cart_icon_divider"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Тип Делителя Иконки</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.cart_icon_divider_type">
                           <switch-option key="solid">Сплошной</switch-option>
                           <switch-option key="dashed">Пунктир</switch-option>
                           <switch-option key="dotted">Точки</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-show="settings.header_type == 'center' || settings.header_type == 'mega'">
                   <span class="module-create-title">Радиус Границ Иконки</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.cart_heading_icon_border" editor="hide-style"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Содержания</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.cart_content_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона Содержания</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.cart_content_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ Изображения</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.cart_content_image_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Кнопки "Удалить"</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.cart_content_delete_icon_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Кнопки при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.cart_content_delete_icon_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Делителя</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.cart_content_divider_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Тип Делителя</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.cart_content_divider_type">
                           <switch-option key="solid">Сплошной</switch-option>
                           <switch-option key="dashed">Пунктир</switch-option>
                           <switch-option key="dotted">Точки</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">MAX Высота Содержания</span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.cart_content_height" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Итога</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.cart_total_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Итога</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.cart_total_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Тень Заголовка</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.cart_header_shadow">
                           <switch-option key="0 1px 5px -2px rgba(0, 0, 0, 0.6)">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Тень Содержания</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.cart_content_shadow">
                           <switch-option key="0 2px 5px rgba(0, 0, 0, 0.10)">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <accordion-group is-open="false">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-1">Кнопки Корзины</div>
                   </accordion-heading>
                   <ul class="module-create-options">
                       <li>
                           <span class="module-create-title">Цвет</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.cart_button_color"></j-opt-color>
                               </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цвет <br />при Наведении</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.cart_button_color_hover"></j-opt-color>
                               </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цвет Фона</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.cart_button_bg_color"></j-opt-color>
                               </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.cart_button_bg_hover_color"></j-opt-color>
                               </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       </ul>
                   </accordion-group>


           </ul>
       </accordion-group>
       <!-- Search -->
       <accordion-group is-open="accordion.accordions[2]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Поиск</div>
           </accordion-heading>
           <ul class="module-create-options">

               <li>
                   <span class="module-create-title">Шрифт</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.search_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Заполнитель</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="settings.search_placeholder_text"></j-opt-text-lang>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Заполнителя</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.search_placeholder_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.header_type == 'center' || settings.header_type == 'mega'">
                   <span class="module-create-title">Цвет Фона</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.search_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-show="settings.header_type == 'center' || settings.header_type == 'mega'">
                   <span class="module-create-title">Цвет Фона</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.search_bg_center"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.header_type == 'center' || settings.header_type == 'mega'">
                   <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.search_bg_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.header_type == 'center' || settings.header_type == 'mega'">
                   <span class="module-create-title">Цвет Фона на Мобильных</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.search_bg_mobile"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.header_type == 'center' || settings.header_type == 'mega'">
                   <span class="module-create-title">Настройка Границ Поля</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.search_radius"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Иконка Поиска</span>
                   <span class="module-create-option">
                       <j-opt-icon data-ng-model="settings.search_icon"></j-opt-icon>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Иконки <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.search_icon_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Кнопки</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.search_button_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона Кнопки при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.search_button_bg_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.header_type == 'center' || settings.header_type == 'mega'">
                   <span class="module-create-title">Радиус Границ</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.search_button_radius" editor="hide-style"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Делителя</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.search_divider"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Тип Делителя</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.search_divider_type">
                           <switch-option key="solid">Сплошной</switch-option>
                           <switch-option key="dashed">Пунктир</switch-option>
                           <switch-option key="dotted">Точки</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

           <accordion>
               <accordion-group is-open="true">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-1">Автопредложение</div>
                   </accordion-heading>
                   <ul class="module-create-options">
                       <li>
                           <span class="module-create-title">Статус</span>
                           <span class="module-create-option">
                               <switch data-ng-model="settings.search_autocomplete">
                                   <switch-option key="1">ВКЛ</switch-option>
                                   <switch-option key="0">ВЫКЛ</switch-option>
                               </switch>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Поиск в Описании</span>
                           <span class="module-create-option">
                               <switch data-ng-model="settings.search_autocomplete_include_description">
                                   <switch-option key="1">ВКЛ</switch-option>
                                   <switch-option key="0">ВЫКЛ</switch-option>
                               </switch>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Отображать Изображение Продукта</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="settings.autosuggest_product_image">
                                       <switch-option key="block">ВКЛ</switch-option>
                                       <switch-option key="none">ВЫКЛ</switch-option>
                                   </switch>
                               </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li data-ng-show="settings.autosuggest_product_image === 'block'">
                           <span class="module-create-title">Размер Изображения Продукта</span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.autosuggest_product_image_width" class="journal-number-field"></j-opt-text> x
                               <j-opt-text data-ng-model="settings.autosuggest_product_image_height" class="journal-number-field"></j-opt-text>
                               <switch data-ng-model="settings.autosuggest_product_image_type">
                                   <switch-option key="fit">Вписать</switch-option>
                                   <switch-option key="crop">Обрезать</switch-option>
                               </switch>
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Цвет Фона</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.autosuggest_bg"></j-opt-color>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                        <li>
                           <span class="module-create-title">Цвет Элемента при Наведении</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.autosuggest_hover"></j-opt-color>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Шрифт Названия Продукта</span>
                           <span class="module-create-option">
                               <j-opt-font data-ng-model="settings.autosuggest_name_font"></j-opt-font>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Шрифт Цены Продукта</span>
                           <span class="module-create-option">
                               <j-opt-font data-ng-model="settings.autosuggest_price_font"></j-opt-font>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Отображение Цены Продукта</span>
                           <span class="module-create-option">
                                <switch data-ng-model="settings.autosuggest_price_status">
                                    <switch-option key="block">ВКЛ</switch-option>
                                    <switch-option key="none">ВЫКЛ</switch-option>
                                </switch>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Настройка Границ Изображения</span>
                           <span class="module-create-option">
                               <j-opt-border data-ng-model="settings.autosuggest_image_border"></j-opt-border>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li data-ng-show="settings.header_type == 'center' || settings.header_type == 'mega'">
                           <span class="module-create-title">Радиус</span>
                           <span class="module-create-option">
                               <j-opt-border data-ng-model="settings.autosuggest_border" editor="hide-style"></j-opt-border>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>


                       <li>
                           <span class="module-create-title">Тень</span>
                           <span class="module-create-option">
                               <switch data-ng-model="settings.autosuggest_shadow">
                                   <switch-option key="0 1px 8px -3px rgba(0,0,0,.5)">ВКЛ</switch-option>
                                   <switch-option key="none">ВЫКЛ</switch-option>
                               </switch>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цвет Делителя</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.autosuggest_divider"></j-opt-color>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Тип Делителя</span>
                           <span class="module-create-option">
                               <switch data-ng-model="settings.autosuggest_divider_type">
                                   <switch-option key="solid">Сплошной</switch-option>
                                   <switch-option key="dashed">Пунктир</switch-option>
                                   <switch-option key="dotted">Точки</switch-option>
                               </switch>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">MAX Высота Содержания<small>генерируется полоса прокрутки</small></span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.autosuggest_height" class="journal-number-field"></j-opt-text>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Лимит Предложений</span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.autosuggest_limit" class="journal-number-field"></j-opt-text>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Текст "Посмотреть Еще"</span>
                           <span class="module-create-option">
                               <j-opt-text-lang data-ng-model="settings.autosuggest_view_more_text"></j-opt-text-lang>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Шрифт Текста</span>
                           <span class="module-create-option">
                               <j-opt-font data-ng-model="settings.autosuggest_view_more_font"></j-opt-font>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цвет Шрифта <br />при Наведении</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.autosuggest_view_more_font_hover"></j-opt-color>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                   </ul>
               </accordion-group>
           </accordion>
           </ul>
       </accordion-group>
       <accordion-group is-open="accordion.accordions[3]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Язык / Валюта</div>
           </accordion-heading>
           <ul class="module-create-options">

               <li data-ng-show="settings.header_type == 'center' || settings.header_type == 'mega'">
                   <span class="module-create-title">Цвет Фона</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.lang_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Символа Валюты</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.curr_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Валюты</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.curr_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Радиус Валюты</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.curr_radius" editor="hide-style"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Делителя</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.lang_divider"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Тип Делителя</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.lang_divider_type">
                           <switch-option key="solid">Сплошной</switch-option>
                           <switch-option key="dashed">Пунктир</switch-option>
                           <switch-option key="dotted">Точки</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>





               <li>
                   <span class="module-create-title">Цвет Текста Выпадающего Списка</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.lang_drop_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона Списка</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.lang_drop_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Текста Списка при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.lang_drop_color_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Списка при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.lang_drop_bg_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Радиус Списка</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.drop_radius" editor="hide-style"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Делителя Списка</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.drop_lang_divider"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Тип Делителя</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.drop_lang_divider_type">
                           <switch-option key="solid">Сплошной</switch-option>
                           <switch-option key="dashed">Пунктир</switch-option>
                           <switch-option key="dotted">Точки</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Тень Выпадающего Списка</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.lang_shadow">
                           <switch-option key="0 2px 2px rgba(0, 0, 0, 0.15)">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

           </ul>
       </accordion-group>
   </accordion>
</div>

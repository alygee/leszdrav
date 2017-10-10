<div class="sticky">
<div class="module-header">
   <div class='module-name'>Настройки<span>Основное</span></div>

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
               <div class="accordion-bar bar-level-0">Основное</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Основной Цвет Фона</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.body_bg_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Фоновое Изображение</span>
                   <span class="module-create-option">
                       <j-opt-background data-ng-model="settings.body_bg_image"></j-opt-background>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Основной Шрифт</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.body_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Ссылок</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.general_links_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Ссылок <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.general_links_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

           </ul>
        </accordion-group>
       <!--  Layout -->
       <accordion-group is-open="accordion.accordions[1]">
               <accordion-heading>
                   <div class="accordion-bar bar-level-0">Макет</div>
               </accordion-heading>
               <ul class="module-create-options">

                   <li>
                       <span class="module-create-title">Ширина Сайта<small>Контейнер Содержания</small></span>
                               <span class="module-create-option site-width">
                                   <j-opt-slider data-ng-model="settings.site_width" data-range="1024,1920" data-step="2"></j-opt-slider>
                               </span>
                   </li>
                   <li>
                       <span class="module-create-title">Адаптивный Макет</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="settings.responsive_design">
                                       <switch-option key="1">ВКЛ</switch-option>
                                       <switch-option key="0">ВЫКЛ</switch-option>
                                   </switch>
                               </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>


                   <li>
                       <span class="module-create-title">Тип Макета</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="settings.extended_layout">
                                       <switch-option key="0">В Боксе</switch-option>
                                       <switch-option key="1">По Ширине</switch-option>
                                   </switch>
                               </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>


                   <li  data-ng-show="settings.extended_layout === '0'">
                       <span class="module-create-title">Цвет Фона Содержания<small>Макет в Боксе</small></span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.content_bg_color"></j-opt-color>
                   </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li  data-ng-show="settings.extended_layout === '0'">
                       <span class="module-create-title">Фоновое Изображение Содержания<small>Макет в Боксе</small></span>
                   <span class="module-create-option">
                       <j-opt-background data-ng-model="settings.content_bg_image"></j-opt-background>
                   </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li  data-ng-hide="settings.extended_layout === '1'">
                       <span class="module-create-title">Радиус Содержания<small>Home Page</small></span>
                               <span class="module-create-option">
                                   <j-opt-border data-ng-model="settings.container_border" editor="hide-style"></j-opt-border>
                               </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

                   <li  data-ng-show="settings.extended_layout === '1'">
                       <span class="module-create-title">Цвет Фона Содержания<small>Макет по Ширине</small></span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.extended_layout_bg_color"></j-opt-color>
                               </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

                   <li  data-ng-show="settings.extended_layout === '1'">
                       <span class="module-create-title">Фоновое Изображение Содержания<small>Макет по Ширине</small></span>
                               <span class="module-create-option">
                                   <j-opt-background data-ng-model="settings.extended_layout_bg_image"></j-opt-background>
                               </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li  data-ng-show="settings.extended_layout === '1'">
                       <span class="module-create-title">Отступ Сверху</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="settings.extended_layout_top_spacing">
                                       <switch-option key="on">ВКЛ</switch-option>
                                       <switch-option key="off">ВЫКЛ</switch-option>
                                   </switch>
                               </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li  data-ng-show="settings.extended_layout === '1'">
                       <span class="module-create-title">Отступ Модулей по Бокам</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="settings.extended_layout_side_spacing">
                                       <switch-option key="on">ВКЛ</switch-option>
                                       <switch-option key="off">ВЫКЛ</switch-option>
                                   </switch>
                               </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

               </ul>
           </accordion-group>
       <!--Headings-->
       <accordion-group is-open="accordion.accordions[2]">
               <accordion-heading>
                   <div class="accordion-bar bar-level-0">Заголовки</div>
               </accordion-heading>
               <ul class="module-create-options">
                <accordion close-others="false">
                    <accordion-group is-open="false">
                        <accordion-heading>
                            <div class="accordion-bar bar-level-1">Панель Главного Заголовка</div>
                        </accordion-heading>
                        <ul class="module-create-options">
                   <li>
                       <span class="module-create-title">Шрифт</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.main_title_font"></j-opt-font>
                                   </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

                   <li>
                       <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.main_title_bg"></j-opt-color>
                                   </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

                   <li>
                       <span class="module-create-title">Настройка Границ</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.main_title_border"></j-opt-border>
                                   </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

                   <li>
                       <span class="module-create-title">Высота Строки<small>Вертикальное Центрирование</small></span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.main_title_line_height" class="journal-number-field"></j-opt-text>
                                   </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Поля<small>Лево-Право</small></span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.main_title_padding_left" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.main_title_padding_right" class="journal-sort"></j-opt-text>
                           </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Выравнивание</span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="settings.main_title_align">
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
    <accordion close-others="false">
       <accordion-group is-open="false">
           <accordion-heading>
               <div class="accordion-bar bar-level-1">Панель Второго Заголовка</div>
           </accordion-heading>
           <ul class="module-create-options">
                   <li>
                       <span class="module-create-title">Шрифт</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.secondary_title_font"></j-opt-font>
                                   </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.secondary_title_bg"></j-opt-color>
                                   </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Настройка Границ</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.secondary_title_border"></j-opt-border>
                                   </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

                   <li>
                       <span class="module-create-title">Поля<small>Верх-Низ / Лево-Право</small></span>
                               <span class="module-create-option">
                                   <j-opt-text data-ng-model="settings.secondary_title_padding_tb" class="journal-number-field"></j-opt-text> x
                                   <j-opt-text data-ng-model="settings.secondary_title_padding_lr" class="journal-number-field"></j-opt-text>
                               </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Выравнивание</span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="settings.secondary_title_align">
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
       <!--Button Settings-->
       <accordion-group is-open="accordion.accordions[3]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Кнопки</div>
           </accordion-heading>
           <ul class="module-create-options">

               <li>
                   <span class="module-create-title">Шрифт</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.general_button_font"></j-opt-font>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Шрифта <br />при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.general_button_font_hover"></j-opt-color>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.general_button_bg"></j-opt-color>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.general_button_bg_hover"></j-opt-color>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.general_button_border"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.general_button_border_hover"></j-opt-color>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Ширина Кнопки<small>Поля слева / справа</small></span>
                               <span class="module-create-option">
                                   <j-opt-text data-ng-model="settings.general_button_width" class="journal-number-field"></j-opt-text>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Высота Кнопки<small>Высота Строки</small></span>
                               <span class="module-create-option">
                                   <j-opt-text data-ng-model="settings.general_button_height" class="journal-number-field"></j-opt-text>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Внутренняя Тень<small>Эффект Нажатия</small></span>
                               <span class="module-create-option">
                                   <switch data-ng-model="settings.general_button_active_shadow">
                                       <switch-option key="inset 0 1px 10px rgba(0, 0, 0, 0.8)">ВКЛ</switch-option>
                                       <switch-option key="none">ВЫКЛ</switch-option>
                                   </switch>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


           </ul>
       </accordion-group>
       <!--Breadcrumb-->
       <accordion-group is-open="accordion.accordions[4]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Хлебные Крошки</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Статус</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.breadcrumb_status">
                               <switch-option key="block">ВКЛ</switch-option>
                               <switch-option key="none">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.breadcrumb_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Шрифта <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.breadcrumb_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Активной Ссылки</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.breadcrumb_active_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Шрифта Активной Ссылки при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.breadcrumb_active_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.breadcrumb_bg_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона по Ширине</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.breadcrumb_full_bg_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.breadcrumb_border"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля</span>
                               <span class="module-create-option">
                                   <j-opt-text data-ng-model="settings.breadcrumb_padding" class="journal-number-field"></j-opt-text>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Высота Строки<small>Вертикальное Центрирование</small></span>
                               <span class="module-create-option">
                                   <j-opt-text data-ng-model="settings.breadcrumb_line_height" class="journal-number-field"></j-opt-text>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Выравнивание</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.breadcrumb_align">
                           <switch-option key="left">Слева</switch-option>
                           <switch-option key="center">По Центру</switch-option>
                           <switch-option key="right">Справа</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

           </ul>
       </accordion-group>
       <!--Loader-->
       <accordion-group is-open="accordion.accordions[5]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Прелоадер</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Изображение</span>
                   <span class="module-create-option">
                       <j-opt-image data-ng-model="settings.ajax_loader"></j-opt-image>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>

       <!--Scroll to Top-->
       <accordion-group is-open="accordion.accordions[6]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Прокрутка Вверх</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Статус</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="settings.scroll_top">
                                       <switch-option key="1">ВКЛ</switch-option>
                                       <switch-option key="0">ВЫКЛ</switch-option>
                                   </switch>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-show="settings.scroll_top == 1">
                   <span class="module-create-title">Иконка</span>
                               <span class="module-create-option">
                                   <j-opt-icon data-ng-model="settings.scroll_top_icon"></j-opt-icon>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-show="settings.scroll_top == 1">
                   <span class="module-create-title">Цвет Иконки <br />при Наведении</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.scroll_top_icon_hover"></j-opt-color>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
       <!--Leading Element-->
       <accordion-group is-open="false">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Ведущий Элемент</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Изображение<small>Видно под Прозрачным Слайдером</small></span>
                   <span class="module-create-option">
                       <j-opt-image data-ng-model="settings.leading_element"></j-opt-image>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Смещение Позиции<small>Лево-Верх</small></span>
                               <span class="module-create-option">
                                   <j-opt-text data-ng-model="settings.lead_offset_left" class="journal-sort"></j-opt-text> -
                                   <j-opt-text data-ng-model="settings.lead_offset_top" class="journal-sort"></j-opt-text>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
   </accordion>
</div>

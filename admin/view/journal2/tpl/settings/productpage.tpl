<div class="sticky">
   <div class="module-header">
       <div class='module-name'>Настройки<span>Страница Продукта</span></div>

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
       <!--General-->
       <accordion-group is-open="accordion.accordions[0]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Основное</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Соотношение Сторон<small>Левая / Правая Сторона</small></span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.split_ratio">
                               <switch-option key="split-70-30">70/30</switch-option>
                               <switch-option key="split-60-40">60/40</switch-option>
                               <switch-option key="split-50-50">50/50</switch-option>
                               <switch-option key="split-40-60">40/60</switch-option>
                               <switch-option key="split-30-70">30/70</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <!--Product Page Title-->
               <accordion-group is-open="false">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-1">Заголовок</div>
                   </accordion-heading>
                   <ul>
                       <li>
                           <span class="module-create-title">Позиция</span>
                           <span class="module-create-option">
                               <switch data-ng-model="settings.product_page_title_position">
                                   <switch-option key="top">Сверху</switch-option>
                                   <switch-option key="right">Справа</switch-option>
                               </switch>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

               <li>
                   <span class="module-create-title">Шрифт</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_title_font"></j-opt-font>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_title_bg"></j-opt-color>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.product_page_title_border"></j-opt-border>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Высота Строки<small>Вертикальное Центрирование</small></span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.product_page_title_line_height" class="journal-number-field"></j-opt-text>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Поля<small>Лево-Право</small></span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.product_page_title_padding_left" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.product_page_title_padding_right" class="journal-sort"></j-opt-text>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Переполнение<small>Сохраняет длинные заголовки на одной линии</small></span>
                           <span class="module-create-option">
                               <switch data-ng-model="settings.product_page_title_overflow">
                                   <switch-option key="on">ВКЛ</switch-option>
                                   <switch-option key="off">ВЫКЛ</switch-option>
                               </switch>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Выравнивание</span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="settings.product_page_title_align">
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

       <!--Product Image-->
       <accordion-group is-open="accordion.accordions[1]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Изображение Продукта</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Настройка Границ<small>Основное Изображение</small></span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.product_page_image_border"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ<small>Дополнительные Изображения</small></span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.product_page_additional_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Доп. Изображений <br />в Строке</span>
                   <span class="module-create-option">
                       <j-opt-slider data-ng-model="settings.product_page_additional_width" data-range="1,8" data-step="1"></j-opt-slider>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Интервал Между Изображениями</span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.product_page_additional_spacing" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Cloud Zoom</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_page_cloud_zoom">
                               <switch-option key="1">ВКЛ</switch-option>
                               <switch-option key="0">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.product_page_cloud_zoom == '1'">
                   <span class="module-create-title">Внутренний Zoom</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_page_cloud_zoom_inner">
                               <switch-option key="1">ВКЛ</switch-option>
                               <switch-option key="0">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Фотогалерея</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_page_gallery">
                               <switch-option key="1">ВКЛ</switch-option>
                               <switch-option key="0">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-show="settings.product_page_gallery == '1'">
                   <span class="module-create-title">Текст</span>
                       <span class="module-create-option">
                           <j-opt-text-lang data-ng-model="settings.product_page_gallery_text"></j-opt-text-lang>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-show="settings.product_page_gallery == '1'">
                   <span class="module-create-title">Шрифт Текста</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.product_page_gallery_text_font"></j-opt-font>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-show="settings.product_page_gallery == '1'">
                   <span class="module-create-title">Иконка Рядом с Текстом</span>
                       <span class="module-create-option">
                           <j-opt-icon data-ng-model="settings.product_page_gallery_text_icon"></j-opt-icon>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Режим Карусели</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.product_page_gallery_carousel">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-hide="settings.product_page_gallery_carousel == '0'">
                   <span class="module-create-title">Автопрокрутка</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.product_page_gallery_carousel_autoplay">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-hide="settings.product_page_gallery_carousel == '0' || settings.product_page_gallery_carousel_autoplay == '0'">
                   <span class="module-create-title">Пауза при Наведении</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.product_page_gallery_carousel_pause_on_hover">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="settings.product_page_gallery_carousel == '1' && settings.product_page_gallery_carousel_autoplay == '1'">
                   <span class="module-create-title">Задержка Перехода</span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.product_page_gallery_carousel_transition_delay" class="journal-number-field"></j-opt-text>
                   </span>
               </li>
               <li data-ng-show="settings.product_page_gallery_carousel == '1'">
                   <span class="module-create-title">Скорость Перехода</span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.product_page_gallery_carousel_transition_speed" class="journal-number-field"></j-opt-text>
                   </span>
               </li>
               <li data-ng-hide="settings.product_page_gallery_carousel == '0'">
                   <span class="module-create-title">Сенсорное Управление</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.product_page_gallery_carousel_touch_drag">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="settings.product_page_gallery_carousel == '1'">
               <span class="module-create-title">Стрелки</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.product_page_gallery_carousel_arrows">
                           <switch-option key="hover">Наведение</switch-option>
                           <switch-option key="always">Всегда</switch-option>
                           <switch-option key="never">Никогда</switch-option>
                       </switch>
                   </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>

               <li data-ng-show="settings.product_page_gallery_carousel == '1'">
                   <span class="module-create-title">Левая Стрелка</span>
                       <span class="module-create-option">
                           <j-opt-icon data-ng-model="settings.product_page_gallery_carousel_icon_left"></j-opt-icon>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.product_page_gallery_carousel == '1'">
                   <span class="module-create-title">Правая Стрелка</span>
                       <span class="module-create-option">
                           <j-opt-icon data-ng-model="settings.product_page_gallery_carousel_icon_right"></j-opt-icon>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li data-ng-show="settings.product_page_gallery_carousel == '1'">
                   <span class="module-create-title">Цвет Стрелок <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.product_page_gallery_carousel_icon_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.product_page_gallery_carousel == '1'">
                   <span class="module-create-title">Цвет Фона Стрелок</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.product_page_gallery_carousel_icon_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.product_page_gallery_carousel == '1'">
                   <span class="module-create-title">Цвет Фона Стрелок при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.product_page_gallery_carousel_icon_bg_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.product_page_gallery_carousel == '1'">
                   <span class="module-create-title">Настройка Границ Стрелок</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.product_page_gallery_carousel_icon_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.product_page_gallery_carousel == '1'">
                   <span class="module-create-title">Смещение по Вертикали</span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.product_page_gallery_carousel_icon_offset" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.product_page_gallery_carousel == '1'">
                   <span class="module-create-title">Размер Стрелок<small>Ширина х Высота</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.product_page_gallery_carousel_icon_width" class="journal-number-field"></j-opt-text> x
                           <j-opt-text data-ng-model="settings.product_page_gallery_carousel_icon_height" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <!--Product Labels-->

               <accordion close-others="false">
                   <accordion-group is-open="false">
                       <accordion-heading>
                           <div class="accordion-bar bar-level-1">Этикетки Продуктов</div>
                       </accordion-heading>
                       <ul class="module-create-options">
                           <li>
                               <span class="module-create-title">Этикетка "Новинка"</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="settings.product_page_latest_label_status">
                                       <switch-option key="block">ВКЛ</switch-option>
                                       <switch-option key="none">ВЫКЛ</switch-option>
                                   </switch>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Этикетка "Акция"</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="settings.product_page_special_label_status">
                                       <switch-option key="block">ВКЛ</switch-option>
                                       <switch-option key="none">ВЫКЛ</switch-option>
                                   </switch>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Этикетка "Нет в Наличии"</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="settings.product_page_outofstock_label_status">
                                       <switch-option key="block">ВКЛ</switch-option>
                                       <switch-option key="none">ВЫКЛ</switch-option>
                                   </switch>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                       </ul>
                   </accordion-group>
               </accordion>
           </ul>
       </accordion-group>

       <!--Product Options-->
       <accordion-group is-open="accordion.accordions[3]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Детали Продукта</div>
           </accordion-heading>
           <ul class="module-create-options">

           <li>
               <span class="module-create-title">Шрифт Текста</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.product_page_options_font"></j-opt-font>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Ссылок</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.product_page_options_links"></j-opt-font>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Ссылок при Наведении</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.product_page_options_links_hover"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.product_page_options_border"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Элемента</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.product_page_options_item_bg"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ Элемента</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.product_page_options_item_border"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля Элемента<small>Верх-Право-Низ-Лево</small></span>
                               <span class="module-create-option">
                                   <j-opt-text data-ng-model="settings.product_page_options_padding_top" class="journal-sort"></j-opt-text> -
                                   <j-opt-text data-ng-model="settings.product_page_options_padding_right" class="journal-sort"></j-opt-text> -
                                   <j-opt-text data-ng-model="settings.product_page_options_padding_bottom" class="journal-sort"></j-opt-text> -
                                   <j-opt-text data-ng-model="settings.product_page_options_padding_left" class="journal-sort"></j-opt-text>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Интервал<small>Отступ Снизу</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.product_page_options_margin" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <!--Stats-->

               <accordion close-others="false">
                   <accordion-group is-open="false">
                       <accordion-heading>
                           <div class="accordion-bar bar-level-1">Статистика Продукта</div>
                       </accordion-heading>
                       <ul class="module-create-options">
                       <accordion-group is-open="false">
                               <accordion-heading>
                                   <div class="accordion-bar bar-level-2">Счетчик Просмотров</div>
                               </accordion-heading>
                               <ul class="module-create-options">
                           <li>
                               <span class="module-create-title">Статус</span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="settings.product_page_options_views">
                                           <switch-option key="1">ВКЛ</switch-option>
                                           <switch-option key="0">ВЫКЛ</switch-option>
                                       </switch>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li data-ng-show="settings.product_page_options_views == '1'">
                               <span class="module-create-title">Текст</span>
                                   <span class="module-create-option">
                                       <j-opt-text-lang data-ng-model="settings.product_page_options_views_text"></j-opt-text-lang>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Шрифт "В Наличии"</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_options_instock_font"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Шрифт "Нет в Наличии"</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_options_outstock_font"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_stats_bg"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Поля Секции</span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.product_page_stats_padding" class="journal-number-field"></j-opt-text>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           </ul>
                           </accordion-group>
                           <!-- SOLD COUNT -->

                           <accordion-group is-open="false">
                               <accordion-heading>
                                   <div class="accordion-bar bar-level-2">Счетчик Покупок</div>
                               </accordion-heading>
                               <ul class="module-create-options">
                                   <li>
                                       <span class="module-create-title">Статус</span>
                                       <span class="module-create-option">
                                           <switch data-ng-model="settings.product_page_options_sold">
                                               <switch-option key="1">ВКЛ</switch-option>
                                               <switch-option key="0">ВЫКЛ</switch-option>
                                           </switch>
                                       </span>
                                       <a href="#" target="_blank" class="journal-tip"></a>
                                   </li>

                                   <li data-ng-show="settings.product_page_options_sold == '1'">
                                       <span class="module-create-title">Текст До Значения<small>для пробела используйте "неразрывной пробел"</small></span>
                                       <span class="module-create-option">
                                           <j-opt-text-lang data-ng-model="settings.product_page_options_sold_text"></j-opt-text-lang>
                                       </span>
                                       <a href="#" target="_blank" class="journal-tip"></a>
                                   </li>
                                   
                                   <li data-ng-show="settings.product_page_options_sold == '1'">
                                       <span class="module-create-title">Текст После Значения<small>для пробела используйте "неразрывной пробел"</small></span>
                                       <span class="module-create-option">
                                           <j-opt-text-lang data-ng-model="settings.product_page_options_sold_text2"></j-opt-text-lang>
                                       </span>
                                       <a href="#" target="_blank" class="journal-tip"></a>
                                   </li>

                                   <li data-ng-show="settings.product_page_options_sold == '1'">
                                       <span class="module-create-title">Шрифт Текста</span>
                                       <span class="module-create-option">
                                           <j-opt-font data-ng-model="settings.product_page_options_sold_text_font"></j-opt-font>
                                       </span>
                                       <a href="#" target="_blank" class="journal-tip"></a>
                                   </li>
                                   <li data-ng-show="settings.product_page_options_sold == '1'">
                                       <span class="module-create-title">Шрифт Цифр</span>
                                       <span class="module-create-option">
                                           <j-opt-font data-ng-model="settings.product_page_options_sold_count_font"></j-opt-font>
                                       </span>
                                       <a href="#" target="_blank" class="journal-tip"></a>
                                   </li>
<!-- Функция пока не работает -->
                                   <!--<li data-ng-show="settings.product_page_options_sold == '1'">-->
                                       <!--<span class="module-create-title">Позиция Цифр Счетчика<small>Перед или После Текста</small></span>-->
                                       <!--<span class="module-create-option">-->
                                           <!--<switch data-ng-model="settings.product_page_options_sold_count_position">-->
                                               <!--<switch-option key="none">Перед</switch-option>-->
                                               <!--<switch-option key="inline-block">После</switch-option>-->
                                           <!--</switch>-->
                                       <!--</span>-->
                                       <!--<a href="#" target="_blank" class="journal-tip"></a>-->
                                   <!--</li>-->
<!-- /Функция пока не работает -->
                                   <li  data-ng-show="settings.product_page_options_sold == '1'">
                                       <span class="module-create-title">Цвет Фона</span>
                                           <span class="module-create-option">
                                               <j-opt-color data-ng-model="settings.product_page_options_sold_count_bg"></j-opt-color>
                                           </span>
                                       <a href="#" target="_blank" class="journal-tip"></a>
                                   </li>

                                   <li data-ng-show="settings.product_page_options_sold == '1'">
                                       <span class="module-create-title">Поля<small>Верх-Право-Низ-Лево</small></span>
                                       <span class="module-create-option">
                                           <j-opt-text data-ng-model="settings.product_page_options_sold_count_padding_top" class="journal-sort"></j-opt-text> -
                                           <j-opt-text data-ng-model="settings.product_page_options_sold_count_padding_right" class="journal-sort"></j-opt-text> -
                                           <j-opt-text data-ng-model="settings.product_page_options_sold_count_padding_bottom" class="journal-sort"></j-opt-text> -
                                           <j-opt-text data-ng-model="settings.product_page_options_sold_count_padding_left" class="journal-sort"></j-opt-text>
                                       </span>
                                       <a href="#" target="_blank" class="journal-tip"></a>
                                   </li>

                                   <li data-ng-show="settings.product_page_options_sold == '1'">
                                       <span class="module-create-title">MAX Ширина</span>
                                       <span class="module-create-option">
                                           <j-opt-text data-ng-model="settings.product_page_options_sold_count_max_width" class="journal-number-field"></j-opt-text>
                                       </span>
                                       <a href="#" target="_blank" class="journal-tip"></a>
                                   </li>

                               </ul>
                           </accordion-group>

                           <!--Brand Image-->
                           <accordion-group is-open="false">
                               <accordion-heading>
                                   <div class="accordion-bar bar-level-2">Изображение Бренда</div>
                               </accordion-heading>
                               <ul class="module-create-options">
                                   <li>
                                       <span class="module-create-title">Статус</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.manufacturer_image">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                                       <a href="#" target="_blank" class="journal-tip"></a>
                                   </li>
                                   <li data-ng-show="settings.manufacturer_image == '1'">
                                       <span class="module-create-title">Размер Изображения</span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.manufacturer_image_width" class="journal-number-field"></j-opt-text> x
                       <j-opt-text data-ng-model="settings.manufacturer_image_height" class="journal-number-field"></j-opt-text>
                   </span>
                                   </li>
                                   <li data-ng-show="settings.manufacturer_image == '1'">
                                       <span class="module-create-title">Дополнительный Текст</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.manufacturer_image_additional_text">
                           <switch-option key="none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Нет&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                           <switch-option key="brand">Название Бренда</switch-option>
                           <switch-option key="custom">&nbsp;&nbsp;&nbsp;&nbsp;Свой Текст&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                       </switch>
                   </span>
                                       <a href="#" target="_blank" class="journal-tip"></a>
                                   </li>
                                   <li data-ng-show="settings.manufacturer_image == '1' && settings.manufacturer_image_additional_text == 'custom'">
                                       <span class="module-create-title">Текст</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="settings.manufacturer_image_custom_text"></j-opt-text-lang>
                   </span>
                                       <a href="#" target="_blank" class="journal-tip"></a>
                                   </li>

                                   <li data-ng-show="settings.manufacturer_image == '1'">
                                       <span class="module-create-title">Шрифт Текста</span>
                                       <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_options_brand_font"></j-opt-font>
                                   </span>
                                       <a href="#" target="_blank" class="journal-tip"></a>
                                   </li>
                                   <li data-ng-show="settings.manufacturer_image == '1'">
                                       <span class="module-create-title">Цвет Ссылок <br />при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_options_brand_font_hover"></j-opt-color>
                                   </span>
                                       <a href="#" target="_blank" class="journal-tip"></a>
                                   </li>
                                   <li data-ng-show="settings.manufacturer_image == '1'">
                                       <span class="module-create-title">Настройка Границ Изображения</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.product_page_options_brand_image_border"></j-opt-border>
                                   </span>
                                       <a href="#" target="_blank" class="journal-tip"></a>
                                   </li>
                               </ul>
                           </accordion-group>

                       </ul>
                   </accordion-group>
               </accordion>

               <!--Price-->
               <accordion close-others="false">
                   <accordion-group is-open="false">
                       <accordion-heading>
                           <div class="accordion-bar bar-level-1">Цена</div>
                       </accordion-heading>
                       <ul class="module-create-options">
                           <li>
                               <span class="module-create-title">Шрифт Цены</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_options_price_font"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Шрифт Старой Цены</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_options_old_price_font"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Фона Старой Цены</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_options_old_price_bg"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Настройка Границ Старой Цены</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.product_page_options_old_price_border"></j-opt-border>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Шрифт "Без НДС"</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_tax_font"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Шрифт "Бонусные Баллы"</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_rewards_font"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Шрифт "Скидка"</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_discount_font"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_price_bg"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Поля Секции</span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.product_page_price_padding" class="journal-number-field"></j-opt-text>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                       </ul>
                   </accordion-group>
               </accordion>

               <!--Options-->
               <accordion close-others="false">
                   <accordion-group is-open="false">
                       <accordion-heading>
                           <div class="accordion-bar bar-level-1">Варианты Продукта</div>
                       </accordion-heading>
                       <ul class="module-create-options">
                           <li>
                               <span class="module-create-title">Авто Обновление Цены</span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="settings.product_page_auto_update_price">
                                           <switch-option key="1">ВКЛ</switch-option>
                                           <switch-option key="0">ВЫКЛ</switch-option>
                                       </switch>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Статус Заголовка<small>"Доступные Варианты"</small></span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="settings.product_page_title_status">
                                           <switch-option key="1">ВКЛ</switch-option>
                                           <switch-option key="0">ВЫКЛ</switch-option>
                                       </switch>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li data-ng-show="settings.product_page_title_status == '1'">
                               <span class="module-create-title">Шрифт Заголовка</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_options_title"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li data-ng-show="settings.product_page_title_status == '1'">
                               <span class="module-create-title">Цвет Фона Заголовка</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_options_title_bg"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Шрифт Группы Вариантов</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_option_font"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Шрифт Значения Варианта</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_option_label"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Значения Варианта при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_option_label_hover"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_option_bg"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Поля Секции</span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.product_page_option_padding" class="journal-number-field"></j-opt-text>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <!--<li>-->
                               <!--<span class="module-create-title">Options Divider Color</span>-->
                                   <!--<span class="module-create-option">-->
                                       <!--<j-opt-color data-ng-model="settings.product_page_options_divider"></j-opt-color>-->
                                   <!--</span>-->
                               <!--<a href="#" target="_blank" class="journal-tip"></a>-->
                           <!--</li>-->

                           <accordion>
                               <accordion-group is-open="false">
                                   <accordion-heading>
                                       <div class="accordion-bar bar-level-2">Варианты с Эффектом Нажатия <span>как кнопки</span></div>
                                   </accordion-heading>
                                   <ul class="module-create-options">
                                       <li>
                                           <span class="module-create-title">Выбор из Списка</span>
                                           <span class="module-create-option">
                                               <switch data-ng-model="settings.product_page_options_push_select">
                                                   <switch-option key="1">ВКЛ</switch-option>
                                                   <switch-option key="0">ВЫКЛ</switch-option>
                                               </switch>
                                           </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>
                                       <li>
                                           <span class="module-create-title">Изображения</span>
                                           <span class="module-create-option">
                                               <switch data-ng-model="settings.product_page_options_push_image">
                                                   <switch-option key="1">ВКЛ</switch-option>
                                                   <switch-option key="0">ВЫКЛ</switch-option>
                                               </switch>
                                           </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>
                                       <li>
                                           <span class="module-create-title">Флажки</span>
                                           <span class="module-create-option">
                                               <switch data-ng-model="settings.product_page_options_push_checkbox">
                                                   <switch-option key="1">ВКЛ</switch-option>
                                                   <switch-option key="0">ВЫКЛ</switch-option>
                                               </switch>
                                           </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>
                                       <li>
                                           <span class="module-create-title">Радио Кнопки</span>
                                           <span class="module-create-option">
                                               <switch data-ng-model="settings.product_page_options_push_radio">
                                                   <switch-option key="1">ВКЛ</switch-option>
                                                   <switch-option key="0">ВЫКЛ</switch-option>
                                               </switch>
                                           </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>
                                       <li data-ng-show="settings.product_page_options_push_select == '1' || settings.product_page_options_push_image == '1' || settings.product_page_options_push_checkbox == '1' || settings.product_page_options_push_radio == '1'">
                                           <span class="module-create-title">Радиус Элементов</span>
                                               <span class="module-create-option">
                                                   <j-opt-border data-ng-model="settings.product_page_options_push_border" editor="hide-style"></j-opt-border>
                                               </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>
                                       <li data-ng-show="settings.product_page_options_push_select == '1' || settings.product_page_options_push_image == '1' || settings.product_page_options_push_checkbox == '1' || settings.product_page_options_push_radio == '1'">
                                           <span class="module-create-title">Шрифт Кнопок Выбора</span>
                                               <span class="module-create-option">
                                                   <j-opt-font data-ng-model="settings.product_page_options_push_select_font"></j-opt-font>
                                               </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>

                                       <li data-ng-show="settings.product_page_options_push_select == '1' || settings.product_page_options_push_image == '1' || settings.product_page_options_push_checkbox == '1' || settings.product_page_options_push_radio == '1'">
                                           <span class="module-create-title">Цвет Фона</span>
                                               <span class="module-create-option">
                                                   <j-opt-color data-ng-model="settings.product_page_options_push_select_bg"></j-opt-color>
                                               </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>

                                       <li data-ng-show="settings.product_page_options_push_select == '1' || settings.product_page_options_push_image == '1' || settings.product_page_options_push_checkbox == '1' || settings.product_page_options_push_radio == '1'">
                                           <span class="module-create-title">Цвет Шрифта Активной Кнопки</span>
                                               <span class="module-create-option">
                                                   <j-opt-color data-ng-model="settings.product_page_options_push_select_font_active"></j-opt-color>
                                               </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>
                                       <li data-ng-show="settings.product_page_options_push_select == '1' || settings.product_page_options_push_image == '1' || settings.product_page_options_push_checkbox == '1' || settings.product_page_options_push_radio == '1'">
                                           <span class="module-create-title">Цвет Фона Активной Кнопки</span>
                                               <span class="module-create-option">
                                                   <j-opt-color data-ng-model="settings.product_page_options_push_select_bg_active"></j-opt-color>
                                               </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>

                                       <li data-ng-show="settings.product_page_options_push_select == '1' || settings.product_page_options_push_image == '1' || settings.product_page_options_push_checkbox == '1' || settings.product_page_options_push_radio == '1'">
                                           <span class="module-create-title">Внутренняя Тень<small>Эффект Нажатия</small></span>
                                               <span class="module-create-option">
                                                   <switch data-ng-model="settings.product_page_options_push_shadow">
                                                       <switch-option key="inset 0 0 8px rgba(0, 0, 0, 0.7)">ВКЛ</switch-option>
                                                       <switch-option key="none">ВЫКЛ</switch-option>
                                                   </switch>
                                               </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>

                                       <li>
                                           <span class="module-create-title">Настройка Границ Изображений</span>
                                               <span class="module-create-option">
                                                   <j-opt-border data-ng-model="settings.product_page_push_image_border"></j-opt-border>
                                               </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>

                                       <li data-ng-show="settings.product_page_options_push_select == '1' || settings.product_page_options_push_image == '1' || settings.product_page_options_push_checkbox == '1' || settings.product_page_options_push_radio == '1'">
                                           <span class="module-create-title">Границы Изображения при Наведении</span>
                                               <span class="module-create-option">
                                                   <j-opt-color data-ng-model="settings.product_page_options_push_image_border_hover"></j-opt-color>
                                               </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>
                                       <li>
                                           <span class="module-create-title">Размер Изображений</span>
                                               <span class="module-create-option">
                                                   <j-opt-text data-ng-model="settings.product_page_options_push_image_width" class="journal-number-field"></j-opt-text> x<j-opt-text data-ng-model="settings.product_page_options_push_image_height" class="journal-number-field"></j-opt-text>
                                               </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>
                                       </ul>
                                   </accordion-group>
                               </accordion>
                       </ul>
                   </accordion-group>
               </accordion>

               <!--Quantity-->
               <accordion close-others="false">
                   <accordion-group is-open="false">
                       <accordion-heading>
                           <div class="accordion-bar bar-level-1">Кнопки "Количество"</div>
                       </accordion-heading>
                       <ul class="module-create-options">
                           <li>
                               <span class="module-create-title">Статус</span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="settings.product_page_qty_status">
                                           <switch-option key="on">ВКЛ</switch-option>
                                           <switch-option key="off">ВЫКЛ</switch-option>
                                       </switch>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Шрифт Значения Кол-ва</span>
                                       <span class="module-create-option">
                                           <j-opt-font data-ng-model="settings.product_page_qty_font"></j-opt-font>
                                       </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Цвет Фона Поля</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_qty_input_color"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Цвет Кнопок</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_qty_color"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Кнопок <br />при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_qty_hover_color"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_qty_bg_color"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_qty_bg_hover_color"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Настройка Границ</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.product_page_qty_border"></j-opt-border>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                       </ul>
                   </accordion-group>
               </accordion>

               <!--Button Override-->
               <accordion>
                   <accordion-group is-open="false">
                       <accordion-heading>
                           <div class="accordion-bar bar-level-1">Кнопка "Купить"</div>
                       </accordion-heading>
                       <ul class="module-create-options">

                           <li>
                               <span class="module-create-title">Шрифт Текста Кнопки</span>
                               <span class="module-create-option">
                                   <j-opt-font data-ng-model="settings.product_page_button_font"></j-opt-font>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Шрифта <br />при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_button_font_hover"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>


                           <li>
                               <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_button_bg"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>


                           <li>
                               <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_button_bg_hover"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Настройка Границ</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.product_page_button_border"></j-opt-border>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_button_border_hover"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Высота Строки<small>Вертикальное Центрирование</small></span>
                               <span class="module-create-option">
                                   <j-opt-text data-ng-model="settings.product_page_button_line_height" class="journal-number-field"></j-opt-text>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Иконка Кнопки</span>
                               <span class="module-create-option">
                                   <j-opt-icon data-ng-model="settings.product_page_button_icon"></j-opt-icon>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Позиция Иконки</span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="settings.product_page_button_icon_position">
                                           <switch-option key="left">Слева</switch-option>
                                           <switch-option key="right">Справа</switch-option>
                                       </switch>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Внутренняя Тень<small>Эффект Нажатия</small></span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="settings.product_page_button_active_shadow">
                                           <switch-option key="inset 0 1px 10px rgba(0, 0, 0, 0.8)">ВКЛ</switch-option>
                                           <switch-option key="none">ВЫКЛ</switch-option>
                                       </switch>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_cart_bg"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Поля Секции</span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.product_page_cart_padding" class="journal-number-field"></j-opt-text>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                       </ul>
                   </accordion-group>
               </accordion>

               <!--Wishlist/Compare-->
               <accordion close-others="false">
                   <accordion-group is-open="false">
                       <accordion-heading>
                           <div class="accordion-bar bar-level-1">Кнопки "Избранное" / "Сравнение"</div>
                       </accordion-heading>
                       <ul class="module-create-options">
                           <li>
                               <span class="module-create-title">Шрифт</span>
                               <span class="module-create-option">
                                   <j-opt-font data-ng-model="settings.product_page_wishlist_font"></j-opt-font>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Цвет Шрифта <br />при Наведении</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.product_page_wishlist_font_hover"></j-opt-color>
                                       </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Цвет Фона</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.product_page_wishlist_bg"></j-opt-color>
                                       </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Иконка Избранное</span>
                               <span class="module-create-option">
                                   <j-opt-icon data-ng-model="settings.product_page_wishlist_icon"></j-opt-icon>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Иконка Сравнение</span>
                               <span class="module-create-option">
                                   <j-opt-icon data-ng-model="settings.product_page_compare_icon"></j-opt-icon>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                       </ul>
                   </accordion-group>
               </accordion>


           </ul>
       </accordion-group>
       <!--Share Plugin-->
       <accordion-group is-open="accordion.accordions[4]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Кнопки "Поделиться"</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Статус</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.share_buttons_status">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.share_buttons_bg"></j-opt-color>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Отключать на Мобильных</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.share_buttons_disable_on_mobile">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.share_buttons_status == '1'">
                   <span class="module-create-title">Кнопки</span>
                   <span class="module-create-option">
                       <ul class="simple-list">
                           <li data-ng-repeat="button in settings.share_buttons">
                               <img data-ng-src="{{shareThisButtons[button.id].img}}"/>
                               <select ui-select2="shareThisSelect" data-ng-model="button.id">
                                   <option value="{{b.id}}" data-img="{{b.img}}" data-ng-repeat="b in shareThisButtons">{{b.name}}</option>
                               </select>
                               <a class="btn red delete" href="javascript:;" data-ng-click="removeButton($index)">X</a>
                           </li>
                       </ul>
                       <a href="javascript:;" class="btn blue add-product" data-ng-click="addButton()">Добавить</a>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.share_buttons_status == '1'">
                   <span class="module-create-title">Тип</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.share_buttons_style">
                           <switch-option key="_hcount">Список</switch-option>
                           <switch-option key="_large">Большие</switch-option>
                           <switch-option key=" ">Маленькие</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.share_buttons_status == '1'">
                   <span class="module-create-title">Позиция</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.share_buttons_position">
                           <switch-option key="bottom">Снизу</switch-option>
                           <switch-option key="left">Слева</switch-option>
                           <switch-option key="right">Справа</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.share_buttons_status == '1'">
                   <span class="module-create-title">Ключ Аккаунта Share This<small>необязательно</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.share_buttons_account_key"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
       <!--Product Tabs-->
       <accordion-group is-open="accordion.accordions[5]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Вкладки</div>
           </accordion-heading>
           <ul class="module-create-options">

               <!--Tabs-->

               <li>
                   <span class="module-create-title">Позиция<small>Opencart 2.x</small></span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_page_tabs_position">
                               <switch-option key="on">Изображение</switch-option>
                               <switch-option key="off">&nbsp;&nbsp;&nbsp;&nbsp;Снизу&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Шрифт</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.product_page_tabs_font"></j-opt-font>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Шрифта <br />при Наведении / Активации</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.product_page_tabs_font_hover"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.product_page_tabs_bg"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона при Наведении / Активации</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.product_page_tabs_bg_hover"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.product_page_tabs_border"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Тень</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_page_tabs_shadow">
                               <switch-option key="inset 0 -3px 6px -2px rgba(0, 0, 0, 0.5)">ВКЛ</switch-option>
                               <switch-option key="none">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <!--Tabs Content-->

               <accordion close-others="false">
                   <accordion-group is-open="false">
                       <accordion-heading>
                           <div class="accordion-bar bar-level-1">Описание <span>Содержание Вкладки</span></div>
                       </accordion-heading>
                       <ul class="module-create-options">

                           <li>
                               <span class="module-create-title">Шрифт</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.product_page_tabs_content_font"></j-opt-font>
                       </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Шрифт Заголовка</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_tabs_content_h_font"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Шрифт Списков</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.product_page_tabs_content_ul_font"></j-opt-font>
                       </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Цвет Фона</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.product_page_tabs_content_bg"></j-opt-color>
                       </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Настройка Границ</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.product_page_tabs_content_border"></j-opt-border>
                       </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Поля</span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.product_page_tabs_content_padding" class="journal-number-field"></j-opt-text>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Высота Строки</span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.product_page_tabs_line_height" class="journal-number-field"></j-opt-text>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                       </ul>
                   </accordion-group>
               </accordion>

               <!--Specification-->

               <accordion close-others="false">
                   <accordion-group is-open="false">
                       <accordion-heading>
                           <div class="accordion-bar bar-level-1">Характеристики <span>Содержание Вкладки</span></div>
                       </accordion-heading>
                       <ul class="module-create-options">

                           <li>
                               <span class="module-create-title">Шрифт Группы Атрибутов</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_spec_title_font"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Шрифт Заголовка Атрибута</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_spec_font"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Шрифт Значения Атрибута</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_spec_value_font"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Выравнивание Заголовка</span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="settings.product_page_spec_title_align">
                                           <switch-option key="left">Слева</switch-option>
                                           <switch-option key="center">По Центру</switch-option>
                                           <switch-option key="right">Справа</switch-option>
                                       </switch>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Выравнивание Значения</span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="settings.product_page_spec_align">
                                           <switch-option key="left">Слева</switch-option>
                                           <switch-option key="center">По Центру</switch-option>
                                           <switch-option key="right">Справа</switch-option>
                                       </switch>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Цвет Фона Заголовка</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.product_page_spec_title_bg"></j-opt-color>
                       </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Цвет Фона Вкладки</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_spec_content_bg"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Цвет Границ Таблицы</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_spec_border_color"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                       </ul>
                   </accordion-group>
               </accordion>

               <!--Review-->

               <accordion close-others="false">
                   <accordion-group is-open="false">
                       <accordion-heading>
                           <div class="accordion-bar bar-level-1">Отзывы <span>Содержание Вкладки</span></div>
                       </accordion-heading>
                       <ul class="module-create-options">

                           <li>
                               <span class="module-create-title">Шрифт Текста</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_review_font"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Шрифт Автора</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_review_font_author"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Шрифт Даты</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_review_font_date"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Границ<small>Opencart 1.5.x</small></span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_review_border"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Шрифт Заголовка<small>Оставить Отзыв</small></span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_review_font_heading"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Цвет Фона Вкладки</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.product_page_review_bg"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Текста Сообщения<small>Opencart 2.x</small></span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.review_tex_danger_color"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Цвет Фона Сообщения<small>Opencart 2.x</small></span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.review_text_danger_color_bg"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                       </ul>
                   </accordion-group>
               </accordion>

               <!--Tabs Content Image-->

               <accordion close-others="false">
                   <accordion-group is-open="false">
                       <accordion-heading>
                           <div class="accordion-bar bar-level-1">Настраиваемые Блоки <span>Позиция "Изображение"</span></div>
                       </accordion-heading>
                       <ul class="module-create-options">

                           <li>
                               <span class="module-create-title">Шрифт Заголовка</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_tabs_content_image_title_font"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Шрифт Содержания</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_tabs_content_image_font"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>


                           <li>
                               <span class="module-create-title">Цвет Фона Содержания</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.product_page_tabs_content_image_bg"></j-opt-color>
                       </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Настройка Границ Содержания</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.product_page_tabs_content_image_border"></j-opt-border>
                       </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Поля Содержания<small>Верх-Право-Низ-Лево</small></span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.product_page_tabs_content_image_padding_top" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.product_page_tabs_content_image_padding_right" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.product_page_tabs_content_image_padding_bottom" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.product_page_tabs_content_image_padding_left" class="journal-sort"></j-opt-text>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Высота Строки</span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.product_page_tab_image_line_height" class="journal-number-field"></j-opt-text>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                       </ul>
                   </accordion-group>
               </accordion>

               <!--Tabs Content Options-->

               <accordion close-others="false">
                   <accordion-group is-open="false">
                       <accordion-heading>
                           <div class="accordion-bar bar-level-1">Настраиваемые Блоки <span>Позиция "Варианты"</span></div>
                       </accordion-heading>
                       <ul class="module-create-options">

                           <li>
                               <span class="module-create-title">Шрифт Заголовка</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.product_page_tabs_content_option_title_font"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Шрифт Содержания</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.product_page_tabs_content_option_font"></j-opt-font>
                       </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Цвет Фона Содержания</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.product_page_tabs_content_option_bg"></j-opt-color>
                       </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Настройка Границ Содержания</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.product_page_tabs_content_option_border"></j-opt-border>
                       </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Поля Содержания<small>Верх-Право-Низ-Лево</small></span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.product_page_tabs_content_option_padding_top" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.product_page_tabs_content_option_padding_right" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.product_page_tabs_content_option_padding_bottom" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.product_page_tabs_content_option_padding_left" class="journal-sort"></j-opt-text>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Высота Строки</span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.product_page_tab_options_line_height" class="journal-number-field"></j-opt-text>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                       </ul>
                   </accordion-group>
               </accordion>
           </ul>
       </accordion-group>

       <!--Product Tags-->
       <accordion-group is-open="accordion.accordions[6]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Метки</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
               <span class="module-create-title">Шрифт Заголовка</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.tags_title_font"></j-opt-font>
                       </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>

               <li>
                   <span class="module-create-title">Цвет Фона Заголовка</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.tags_title_bg"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Меток</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.tags_font"></j-opt-font>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона Меток</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.tags_bg"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Меток <br />при Наведении</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.tags_hover_font"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона Меток <br />при Наведении</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.tags_hover_bg"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.tags_border"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Выравнивание</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.tags_align">
                           <switch-option key="left">Слева</switch-option>
                           <switch-option key="center">По Центру</switch-option>
                           <switch-option key="right">Справа</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>

       <!--Related Products-->
       <accordion-group is-open="accordion.accordions[7]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Связанные Продукты</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Статус</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.related_products_status">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-hide="settings.related_products_status == '0'">
                   <span class="module-create-title">Продуктов в Строке</span>
                   <span class="module-create-option">
                       <j-opt-items-per-row data-range="1,8" data-step="1" data-ng-model="settings.related_products_items_per_row"></j-opt-items-per-row>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-hide="settings.related_products_status == '0'">
                   <span class="module-create-title">Режим Карусели</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.related_products_carousel">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-hide="settings.related_products_carousel == '0' || settings.related_products_status == '0'">
                   <span class="module-create-title">Стрелки</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.related_products_carousel_arrows">
                           <switch-option key="none">Нет</switch-option>
                           <switch-option key="top">Сверху</switch-option>
                           <switch-option key="side">Сбоку</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-hide="settings.related_products_carousel == '0' || settings.related_products_status == '0'">
                   <span class="module-create-title">Индикаторы</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.related_products_carousel_bullets">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-hide="settings.related_products_carousel == '0' || settings.related_products_status == '0'">
                   <span class="module-create-title">Автопрокрутка</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.related_products_carousel_autoplay">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-hide="settings.related_products_carousel == '0' || settings.related_products_status == '0' || settings.related_products_carousel_autoplay == '0'">
                   <span class="module-create-title">Пауза при Наведении</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.related_products_carousel_pause_on_hover">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="settings.related_products_carousel == '1' && settings.related_products_status == '1' && settings.related_products_carousel_autoplay == '1'">
                   <span class="module-create-title">Задержка Перехода</span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.related_products_carousel_transition_delay" class="journal-number-field"></j-opt-text>
                   </span>
               </li>
               <li data-ng-show="settings.related_products_carousel == '1' && settings.related_products_status == '1'">
                   <span class="module-create-title">Скорость Перехода</span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.related_products_carousel_transition_speed" class="journal-number-field"></j-opt-text>
                   </span>
               </li>
               <li data-ng-show="settings.related_products_carousel == '1' && settings.related_products_status == '1'">
                   <span class="module-create-title">Сенсорное Управление</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.related_products_carousel_touch_drag">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
           </ul>
       </accordion-group>
   </accordion>
</div>

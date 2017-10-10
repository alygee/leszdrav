<div class="sticky">
<div class="module-header">
   <div class='module-name'>Настройки<span>Страница Категории</span></div>

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
<div class="module-body category">
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
                   <span class="module-create-title">Отображение по Умолчанию</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.product_view">
                           <switch-option key="grid">Сетка</switch-option>
                           <switch-option key="list">Список</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Изображение Категории</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.hide_category_image">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.hide_category_image == '1'">
                   <span class="module-create-title">Настройка Границ Изображения</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.main_category_image_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Описания</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.category_description_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Высота Строки</span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.category_description_line_height" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Продуктов в Строке</span>
                   <span class="module-create-option">
                       <j-opt-items-per-row data-range="1,10" data-step="1" data-ng-model="settings.category_page_products_per_row"></j-opt-items-per-row>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <!--Product Page Title-->
               <accordion-group is-open="false">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-1">Заголовок Страницы</div>
                   </accordion-heading>
                   <ul>

                       <li>
                           <span class="module-create-title">Шрифт Заголовка</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.category_page_title_font"></j-opt-font>
                                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Цвет Фона Заголовка</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.category_page_title_bg"></j-opt-color>
                                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Настройка Границ</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.category_page_title_border"></j-opt-border>
                                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Высота Строки<small>Вертикальное Центрирование</small></span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.category_page_title_line_height" class="journal-number-field"></j-opt-text>
                                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Поля<small>Лево-Право</small></span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.category_page_title_padding_left" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.category_page_title_padding_right" class="journal-sort"></j-opt-text>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Переполнение Заголовка<small>Сохраняет длинные заголовки на одной линии</small></span>
                           <span class="module-create-option">
                               <switch data-ng-model="settings.category_page_title_overflow">
                                   <switch-option key="on">ВКЛ</switch-option>
                                   <switch-option key="off">ВЫКЛ</switch-option>
                               </switch>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Выравнивание</span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="settings.category_page_title_align">
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
       <accordion-group is-open="accordion.accordions[1]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Подкатегории</div>
           </accordion-heading>
           <ul class="module-create-options">

               <li>
                   <span class="module-create-title">Тип</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.refine_category">
                           <switch-option key="text">Текст</switch-option>
                           <switch-option key="grid">Сетка</switch-option>
                           <switch-option key="carousel">Карусель</switch-option>
                           <switch-option key="none">Нет</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Размер Изображений</span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.refine_image_width" class="journal-number-field"></j-opt-text> x
                       <j-opt-text data-ng-model="settings.refine_image_height" class="journal-number-field"></j-opt-text>
                       <switch data-ng-model="settings.refine_image_type">
                           <switch-option key="fit">Вписать</switch-option>
                           <switch-option key="crop">Обрезать</switch-option>
                       </switch>
                   </span>
               </li>

               <li data-ng-show="settings.refine_category === 'carousel'">
                   <span class="module-create-title">Автопрокрутка</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.refine_carousel_autoplay">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.refine_category === 'carousel' && settings.refine_carousel_autoplay === '1'">
                   <span class="module-create-title">Пауза при Наведении</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.refine_carousel_pause_on_hover">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.refine_category === 'carousel' && settings.refine_carousel_autoplay === '1'">
                   <span class="module-create-title">Сенсорное Управление</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.refine_carousel_touchdrag">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-hide="settings.refine_category == 'none'">
                   <span class="module-create-title">Шрифт</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.refine_image_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.refine_category == 'none'">
                   <span class="module-create-title">Цвет Шрифта <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.refine_image_font_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-show="settings.refine_category == 'text'">
                   <span class="module-create-title">Делитель Ссылок<small>Любой символ</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.refine_link_divider" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-show="settings.refine_category == 'text'">
                   <span class="module-create-title">Цвет Делителя</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.refine_link_divider_color"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-show="settings.refine_category == 'text'">
                   <span class="module-create-title">Цвет Фона</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.refine_bar_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-show="settings.refine_category == 'text'">
                   <span class="module-create-title">Радиус</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.refine_bar_radius" data-editor="hide-style"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-show="settings.refine_category == 'grid' || settings.refine_category == 'carousel'">
                   <span class="module-create-title">Цвет Фона Элемента</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.refine_image_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-show="settings.refine_category == 'grid' || settings.refine_category == 'carousel'">
                   <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.refine_image_bg_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-show="settings.refine_category == 'grid' || settings.refine_category == 'carousel'">
                   <span class="module-create-title">Настройка Границ Элемента</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.refine_image_border_radius"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li data-ng-show="settings.refine_category == 'grid' || settings.refine_category == 'carousel'">
                   <span class="module-create-title">Настройка Границ Изображения</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.refine_image_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li data-ng-show="settings.refine_category == 'grid' || settings.refine_category == 'carousel'">
                   <span class="module-create-title">Поля Элемента</span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.refine_image_padding" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li data-ng-show="settings.refine_category == 'grid' || settings.refine_category == 'carousel'">
                   <span class="module-create-title">Элементов в Строке</span>
                   <span class="module-create-option">
                       <j-opt-items-per-row data-range="1,10" data-step="1" data-ng-model="settings.refine_category_images_per_row"></j-opt-items-per-row>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

           </ul>
       </accordion-group>
       <accordion-group is-open="accordion.accordions[2]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Панель Сетка / Список</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Иконка Сетки</span>
                   <span class="module-create-option">
                       <j-opt-icon data-ng-model="settings.category_grid_view_icon"></j-opt-icon>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Иконка Списка</span>
                   <span class="module-create-option">
                       <j-opt-icon data-ng-model="settings.category_list_view_icon"></j-opt-icon>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Иконки при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.category_view_icon_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.product_filter_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ Панели</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.product_filter_radius"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Шрифт</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.product_filter_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Ссылка "Сравнение Продуктов"</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.product_compare_link_status">
                           <switch-option key="on">ВКЛ</switch-option>
                           <switch-option key="off">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Ссылки при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.product_compare_hover_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
       <!--Pagination-->
       <accordion-group is-open="accordion.accordions[3]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Пагинация <span>нумерация страниц</span></div>
           </accordion-heading>
           <ul class="module-create-options">

               <li>
                   <span class="module-create-title">Шрифт Ссылок</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.pagination_link_font_new"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Ссылок</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.pagination_link_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Ссылок при Наведении <small>цвет активной ссылки</small></span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.pagination_link_hover_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона при Наведении <small>цвет активной ссылки</small></span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.pagination_link_hover_bg_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Радиус</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.pagination_radius" editor="hide-style"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Результатов</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.pagination_text_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Панели</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.pagination_bar_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ Панели</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.pagination_bar_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Тень</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.pagination_soft_shadow">
                               <switch-option key="1px 1px 0px rgba(0,0,0,.04)">ВКЛ</switch-option>
                               <switch-option key="none">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
   </accordion>
</div>

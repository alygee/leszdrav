<div class="sticky">
<div class="module-header">
   <div class='module-name'>Настройки<span>Сетка Продуктов</span></div>

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
       <!-- general -->
       <accordion-group is-open="accordion.accordions[0]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Основное</div>
           </accordion-heading>
           <ul class="module-create-options">
               <!-- Product Grid General-->
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.product_grid_item_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.product_grid_details_bg_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля</span>
                       <span class="module-create-option">
                             <j-opt-text data-ng-model="settings.product_grid_item_padding" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.product_grid_item_border"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.product_grid_hover_border"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Мягкая Тень</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_grid_soft_shadow">
                               <switch-option key="1px 1px 0px rgba(0,0,0,.04)">ВКЛ</switch-option>
                               <switch-option key="none">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Тень</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_grid_shadow">
                               <switch-option key="hover">Наведение</switch-option>
                               <switch-option key="always">Всегда</switch-option>
                               <switch-option key="never">Никогда</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
       <!--Product Image-->
       <accordion-group is-open="accordion.accordions[1]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Изображение Продукта</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Второе Изображение при Наведении</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_grid_second_image">
                               <switch-option key="1">ВКЛ</switch-option>
                               <switch-option key="0">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.product_grid_image_border"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Наложения при Наведении</span>
                       <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.product_grid_image_overlay"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Прозрачность Наложения</span>
                       <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.product_grid_image_overlay_opacity" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Звезды Рейтинга</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_grid_show_ratings">
                               <switch-option key="block">ВКЛ</switch-option>
                               <switch-option key="none">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Смещение Звезд Рейтинга<small>Гор. / Вер.</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.rating_offset_x" class="journal-sort"></j-opt-text> x
                       <j-opt-text data-ng-model="settings.rating_offset_y" class="journal-sort"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Звезд Рейтинга<small>Opencart 2.x</small></span>
                       <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.rating_stars_color" class="journal-number-field"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Контура Звезд Рейтинга<small>Opencart 2.x</small></span>
                       <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.rating_stars_outline_color" class="journal-number-field"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
       <!--Product Labels-->
       <accordion-group is-open="accordion.accordions[2]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Этикетки Продуктов</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Этикетка "Новинка"</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.product_grid_latest_label_status">
                           <switch-option key="block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Этикетка "Акция"</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.product_grid_special_label_status">
                           <switch-option key="block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Этикетка "Нет в Наличии"</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.product_grid_outofstock_label_status">
                           <switch-option key="block">ВКЛ</switch-option>
                           <switch-option key="none">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

           </ul>
       </accordion-group>

       <!--Product Details-->
       <accordion-group is-open="accordion.accordions[4]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Детали Продукта</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.product_grid_details_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Настройка Границ</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.product_grid_details_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Отступ Сверху</span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.product_grid_details_margin" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Отступ Снизу</span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.product_grid_details_padding" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Шрифт Названия Продукта</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.product_grid_name_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Переполнение Названия Продукта<small>Название на одной линии</small></span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_grid_name_overflow">
                               <switch-option key="nowrap">ВКЛ</switch-option>
                               <switch-option key="normal">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Цвет Названия Продукта <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.product_grid_name_font_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Шрифт Цены</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.product_grid_price_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Шрифт Старой Цены</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.product_grid_old_price_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона Цены</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.product_grid_price_background"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ Цены</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.product_grid_price_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Ширина Цены</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_grid_price_full">
                               <switch-option key="block">По Ширине</switch-option>
                               <switch-option key="inline-block">Нормально</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Поля Цены<small>Верх-Право-Низ-Лево</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.product_grid_price_pt" class="journal-sort"></j-opt-text> -
                       <j-opt-text data-ng-model="settings.product_grid_price_pr" class="journal-sort"></j-opt-text> -
                       <j-opt-text data-ng-model="settings.product_grid_price_pb" class="journal-sort"></j-opt-text> -
                       <j-opt-text data-ng-model="settings.product_grid_price_pl" class="journal-sort"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Треугольник</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_grid_details_tip">
                               <switch-option key="hover">Наведение</switch-option>
                               <switch-option key="always">Всегда</switch-option>
                               <switch-option key="never">Никогда</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_details_tip == 'never'">
                   <span class="module-create-title">Цвет Треугольника</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.product_grid_details_tip_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_details_tip == 'never'">
                   <span class="module-create-title">Размер Треугольника</span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.product_grid_details_tip_size" class="journal-sort"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_details_tip == 'never'">
                   <span class="module-create-title">Смещение Треугольника<small>Гор. / Вер. от Центра</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.product_grid_details_tip_offset_x" class="journal-sort"></j-opt-text> x
                       <j-opt-text data-ng-model="settings.product_grid_details_tip_offset_y" class="journal-sort"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Скрыть Описание</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_grid_description">
                               <switch-option key="none">ВКЛ</switch-option>
                               <switch-option key="block">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
       <!--Quickview Button-->
       <accordion-group is-open="accordion.accordions[5]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Кнопка "Быстрый Просмотр"</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Тип Отображения</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_grid_quickview_status">
                               <switch-option key="hover">Наведение</switch-option>
                               <switch-option key="always">Всегда</switch-option>
                               <switch-option key="never">Никогда</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-hide="settings.product_grid_quickview_status == 'never'">
                   <span class="module-create-title">Смещение<small>Гор. / Вер.</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.product_grid_quickview_offset_x" class="journal-number-field"></j-opt-text> x
                           <j-opt-text data-ng-model="settings.product_grid_quickview_offset_y" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_quickview_status == 'never'">
                   <span class="module-create-title">Шрифт Текста Кнопки</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.product_grid_quickview_button_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_quickview_status == 'never'">
                   <span class="module-create-title">Цвет Шрифта <br />при Наведении</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.product_grid_quickview_button_font_hover"></j-opt-color>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li data-ng-hide="settings.product_grid_quickview_status == 'never'">
                   <span class="module-create-title">Цвет Фона</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.product_grid_quickview_button_bg"></j-opt-color>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li data-ng-hide="settings.product_grid_quickview_status == 'never'">
                   <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.product_grid_quickview_button_bg_hover"></j-opt-color>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_quickview_status == 'never'">
                   <span class="module-create-title">Настройка Границ</span>
                           <span class="module-create-option">
                               <j-opt-border data-ng-model="settings.product_grid_quickview_button_border"></j-opt-border>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_quickview_status == 'never'">
                   <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.product_grid_quickview_button_border_hover"></j-opt-color>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.product_grid_quickview_button_icon_display == 'icon'">
                   <span class="module-create-title">Ширина Кнопки<small>в пикселях</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.product_grid_quickview_button_width_px" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.product_grid_quickview_button_icon_display == 'icon'">
                   <span class="module-create-title">Высота Кнопки<small>в пикселях</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.product_grid_quickview_button_height_px" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_quickview_status == 'never' || settings.product_grid_quickview_button_icon_display == 'icon'">
                   <span class="module-create-title">Ширина Кнопки<small>Поля Слева / Справа</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.product_grid_quickview_button_width" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_quickview_status == 'never' || settings.product_grid_quickview_button_icon_display == 'icon'">
                   <span class="module-create-title">Высота Кнопки<small>Высота Строки</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.product_grid_quickview_button_height" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_quickview_status == 'never'">
                   <span class="module-create-title">Внутренняя Тень<small>Эффект Нажатия</small></span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_grid_quickview_button_active_shadow">
                               <switch-option key="inset 0 1px 10px rgba(0, 0, 0, 0.8)">ВКЛ</switch-option>
                               <switch-option key="none">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-hide="settings.product_grid_quickview_status == 'never'">
                   <span class="module-create-title">Отображать</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_grid_quickview_button_icon_display">
                               <switch-option key="text">Только Текст</switch-option>
                               <switch-option key="both">Иконка + Текст</switch-option>
                               <switch-option key="icon">Только Иконка</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_quickview_status == 'never' || settings.product_grid_quickview_button_icon_display == 'text'">
                   <span class="module-create-title">Иконка Кнопки</span>
                   <span class="module-create-option">
                       <j-opt-icon data-ng-model="settings.product_grid_quickview_button_icon"></j-opt-icon>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-hide="settings.product_grid_quickview_button_icon_display == 'text'">
                   <span class="module-create-title">Цвет Иконки <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.quickview_button_icon_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_quickview_status == 'never' || settings.product_grid_quickview_button_icon_display == 'text'">
                   <span class="module-create-title">Позиция Иконки</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_grid_quickview_button_icon_position">
                               <switch-option key="left">Слева</switch-option>
                               <switch-option key="right">Справа</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_quickview_status == 'never' || settings.product_grid_quickview_button_icon_display == 'text' || settings.product_grid_quickview_button_icon_display == 'both'">
                   <span class="module-create-title">Цвет Шрифта Подсказки</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.product_grid_quickview_button_tooltip_font"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-hide="settings.product_grid_quickview_status == 'never' || settings.product_grid_quickview_button_icon_display == 'text' || settings.product_grid_quickview_button_icon_display == 'both'">
                   <span class="module-create-title">Цвет Фона Подсказки</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.product_grid_quickview_button_tooltip_bg_color"></j-opt-color>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_quickview_status == 'never' || settings.product_grid_quickview_button_icon_display == 'text' || settings.product_grid_quickview_button_icon_display == 'both'">
                   <span class="module-create-title">Радиус Подсказки</span>
                           <span class="module-create-option">
                               <j-opt-border data-ng-model="settings.product_grid_quickview_button_tooltip_border" editor="hide-style"></j-opt-border>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

           </ul>
       </accordion-group>
       <!--Button Override-->
       <accordion-group is-open="accordion.accordions[6]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Кнопка "Купить"</div>
           </accordion-heading>
           <ul class="module-create-options">

               <li>
                   <span class="module-create-title">Шрифт Текста Кнопки</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.product_grid_button_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Шрифта <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.product_grid_button_font_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Цвет Фона</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.product_grid_button_bg"></j-opt-color>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.product_grid_button_bg_hover"></j-opt-color>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ</span>
                           <span class="module-create-option">
                               <j-opt-border data-ng-model="settings.product_grid_button_border"></j-opt-border>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.product_grid_button_border_hover"></j-opt-color>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.product_grid_button_icon_display == 'icon'">
                   <span class="module-create-title">Ширина Кнопки<small>в пикселях</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.product_grid_button_width_px" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="settings.product_grid_button_icon_display == 'icon'">
                   <span class="module-create-title">Высота Кнопки<small>в пикселях</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.product_grid_button_height_px" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-hide="settings.product_grid_button_icon_display == 'icon'">
                   <span class="module-create-title">Ширина Кнопки<small>Поля Слева / Справа</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.product_grid_button_width" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_button_icon_display == 'icon'">
                   <span class="module-create-title">Высота Кнопки<small>Высота Строки</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.product_grid_button_height" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Внутренняя Тень<small>Эффект Нажатия</small></span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_grid_button_active_shadow">
                               <switch-option key="inset 0 1px 10px rgba(0, 0, 0, 0.8)">ВКЛ</switch-option>
                               <switch-option key="none">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Кнопка Внутри</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_grid_button_block_button">
                               <switch-option key="inline-button">ВКЛ</switch-option>
                               <switch-option key="block-button">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Отображать</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_grid_button_icon_display">
                               <switch-option key="text">Только Текст</switch-option>
                               <switch-option key="both">Иконка + Текст</switch-option>
                               <switch-option key="icon">Только Иконка</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_button_icon_display == 'text'">
                   <span class="module-create-title">Иконка Кнопки</span>
                   <span class="module-create-option">
                       <j-opt-icon data-ng-model="settings.product_grid_button_icon"></j-opt-icon>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-hide="settings.product_grid_button_icon_display == 'text'">
                   <span class="module-create-title">Цвет Иконки <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.product_grid_button_icon_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_button_icon_display == 'text'">
                   <span class="module-create-title">Позиция Иконки</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_grid_button_icon_position">
                               <switch-option key="left">Слева</switch-option>
                               <switch-option key="right">Справа</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_button_icon_display == 'text' || settings.product_grid_button_icon_display == 'both'">
                   <span class="module-create-title">Цвет Шрифта Подсказки</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.product_grid_button_tooltip_font"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-hide="settings.product_grid_button_icon_display == 'text' || settings.product_grid_button_icon_display == 'both'">
                   <span class="module-create-title">Цвет Фона Подсказки</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.product_grid_button_tooltip_bg_color"></j-opt-color>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_button_icon_display == 'text' || settings.product_grid_button_icon_display == 'both'">
                   <span class="module-create-title">Радиус Подсказки</span>
                           <span class="module-create-option">
                               <j-opt-border data-ng-model="settings.product_grid_button_tooltip_border" editor="hide-style"></j-opt-border>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Отступ Снизу<small>Расстояние до Избранное/Сравнение</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.product_grid_button_bottom_margin" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>

       <!--Wishlist / Compare-->
       <accordion-group is-open="accordion.accordions[7]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Кнопки "Избранное" / "Сравнение"</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Шрифт</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.product_grid_wishlist_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Шрифта <br />при Наведении</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.product_grid_wishlist_font_hover"></j-opt-color>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Отображать</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_grid_wishlist_icon_display">
                               <switch-option key="text">Только Текст</switch-option>
                               <switch-option key="both">Иконка + Текст</switch-option>
                               <switch-option key="icon">Только Иконка</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_wishlist_icon_display == 'text'">
                   <span class="module-create-title">Иконка Избранное</span>
                   <span class="module-create-option">
                       <j-opt-icon data-ng-model="settings.product_grid_wishlist_icon"></j-opt-icon>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_wishlist_icon_display == 'text'">
                   <span class="module-create-title">Иконка Сравнение</span>
                   <span class="module-create-option">
                       <j-opt-icon data-ng-model="settings.product_grid_compare_icon"></j-opt-icon>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_wishlist_icon_display == 'text'">
                   <span class="module-create-title">Цвет Иконки <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.wish_button_icon_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_wishlist_icon_display == 'text' || settings.product_grid_wishlist_icon_display == 'both'">
                   <span class="module-create-title">Позиция Иконок</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_grid_wishlist_icon_position">
                               <switch-option key="button">В Самом Низу</switch-option>
                               <switch-option key="image">На Изображении</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_wishlist_icon_display == 'text' || settings.product_grid_wishlist_icon_display == 'both' || settings.product_grid_wishlist_icon_position == 'button'">
                   <span class="module-create-title">Показывать при Наведении</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.product_grid_wishlist_icon_on_hover">
                               <switch-option key="on">ВКЛ</switch-option>
                               <switch-option key="off">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_wishlist_icon_display == 'text' || settings.product_grid_wishlist_icon_display == 'both'">
                   <span class="module-create-title">Настройка Границ</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.product_grid_wishlist_icon_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_wishlist_icon_display == 'text' || settings.product_grid_wishlist_icon_display == 'both'">
                   <span class="module-create-title">Цвет Фона</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.product_grid_wishlist_icon_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_wishlist_icon_display == 'text' || settings.product_grid_wishlist_icon_display == 'both'">
                   <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.product_grid_wishlist_icon_bg_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li data-ng-hide="settings.product_grid_wishlist_icon_display == 'text' || settings.product_grid_wishlist_icon_display == 'both'">
                   <span class="module-create-title">Ширина Кнопки<small>в пикселях</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.product_grid_wishlist_icon_bg_width" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_wishlist_icon_display == 'text' || settings.product_grid_wishlist_icon_display == 'both'">
                   <span class="module-create-title">Высота Кнопки<small>в пикселях</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.product_grid_wishlist_icon_bg_height" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>



               <li data-ng-hide="settings.product_grid_wishlist_icon_display == 'text' || settings.product_grid_wishlist_icon_display == 'both'">
                   <span class="module-create-title">Цвет Шрифта Подсказки</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.product_grid_wishlist_icon_tip_font"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-hide="settings.product_grid_wishlist_icon_display == 'text' || settings.product_grid_wishlist_icon_display == 'both'">
                   <span class="module-create-title">Цвет Фона Подсказки</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.product_grid_wishlist_icon_tip_bg"></j-opt-color>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li data-ng-hide="settings.product_grid_wishlist_icon_display == 'text' || settings.product_grid_wishlist_icon_display == 'both'">
                   <span class="module-create-title">Радиус Подсказки</span>
                           <span class="module-create-option">
                               <j-opt-border data-ng-model="settings.product_grid_wishlist_icon_tip_border" editor="hide-style"></j-opt-border>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
   </accordion>
</div>

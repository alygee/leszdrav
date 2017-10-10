<div class="sticky">
<div class="module-header">
   <div class='module-name'>Модули<span>Карусель</span></div>

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
       <accordion-group is-open="accordion.accordions[0]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Основное</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Шрифт Заголовка</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.carousel_title_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
                <li>
                   <span class="module-create-title">Цвет Фона Заголовка</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.carousel_title_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ Заголовка</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.carousel_title_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Шрифта <br />Активной Вкладки</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.carousel_title_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона <br />Активной Вкладки</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.carousel_title_bg_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Высота Строки Заголовка<small>Вертикальное Центрирование</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.carousel_title_line_height" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Делителя<small>Вкладки карусели</small></span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.carousel_title_divider"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Тип Делителя<small>Вкладки карусели</small></span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.carousel_title_divider_type">
                           <switch-option key="solid">Сплошной</switch-option>
                           <switch-option key="dashed">Пунктир</switch-option>
                           <switch-option key="dotted">Точки</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
       <accordion-group is-open="accordion.accordions[1]">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-0">Стрелки Сверху</div>
                   </accordion-heading>
                   <ul class="module-create-options">
                       <li>
                           <span class="module-create-title">Левая</span>
                   <span class="module-create-option">
                       <j-opt-icon data-ng-model="settings.carousel_left_icon"></j-opt-icon>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Правая</span>
                   <span class="module-create-option">
                       <j-opt-icon data-ng-model="settings.carousel_right_icon"></j-opt-icon>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цвет<br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.carousel_icon_hover"></j-opt-color>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цвет Фона</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.carousel_icon_bg"></j-opt-color>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цвет Фона<br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.carousel_icon_bg_hover"></j-opt-color>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Настройка Границ</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.carousel_icon_border"></j-opt-border>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Размер<small>Ширина х Высота</small></span>
                               <span class="module-create-option">
                                   <j-opt-text data-ng-model="settings.carousel_icon_width" class="journal-number-field"></j-opt-text> x
                                   <j-opt-text data-ng-model="settings.carousel_icon_height" class="journal-number-field"></j-opt-text>
                               </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Смещение по Вертикали</span>
                               <span class="module-create-option">
                                   <j-opt-text data-ng-model="settings.carousel_icon_offset_top" class="journal-number-field"></j-opt-text>
                               </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Смещение по Горизонтали<small>Левая-Правая</small></span>
                               <span class="module-create-option">
                                   <j-opt-text data-ng-model="settings.carousel_icon_offset_left" class="journal-number-field"></j-opt-text> -
                                   <j-opt-text data-ng-model="settings.carousel_icon_offset_right" class="journal-number-field"></j-opt-text>
                               </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                   </ul>
               </accordion-group>



       <accordion-group is-open="accordion.accordions[2]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Стрелки Сбоку</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Левая</span>
                   <span class="module-create-option">
                       <j-opt-icon data-ng-model="settings.carousel_side_left_icon"></j-opt-icon>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Правая</span>
                   <span class="module-create-option">
                       <j-opt-icon data-ng-model="settings.carousel_side_right_icon"></j-opt-icon>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет<br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.carousel_side_icon_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.carousel_side_icon_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.carousel_side_icon_bg_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.carousel_side_icon_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Размер<small>Ширина х Высота</small></span>
                               <span class="module-create-option">
                                   <j-opt-text data-ng-model="settings.carousel_side_icon_width" class="journal-number-field"></j-opt-text> x
                                   <j-opt-text data-ng-model="settings.carousel_side_icon_height" class="journal-number-field"></j-opt-text>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Смещение по Вертикали<small>Продукты</small></span>
                               <span class="module-create-option">
                                   <j-opt-text data-ng-model="settings.carousel_side_icon_offset_top" class="journal-number-field"></j-opt-text>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Смещение по Вертикали<small>Бренды</small></span>
                               <span class="module-create-option">
                                   <j-opt-text data-ng-model="settings.carousel_side_icon_brands_offset_top" class="journal-number-field"></j-opt-text>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Смещение по Горизонтали<small>Левая-Правая</small></span>
                               <span class="module-create-option">
                                   <j-opt-text data-ng-model="settings.carousel_side_icon_offset_left" class="journal-number-field"></j-opt-text> -
                                   <j-opt-text data-ng-model="settings.carousel_side_icon_offset_right" class="journal-number-field"></j-opt-text>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
       <accordion-group is-open="accordion.accordions[3]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Индикаторы</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Цвет</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.carousel_bullet_color"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.carousel_bullet_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.carousel_bullet_border"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.carousel_bullet_border_hover"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Отступ</span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.carousel_bullet_margin" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-hide="settings.product_grid_quickview_status == 'never'">
                   <span class="module-create-title">Размер<small>Ширина х Высота</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.carousel_bullet_width" class="journal-number-field"></j-opt-text> x
                           <j-opt-text data-ng-model="settings.carousel_bullet_height" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Масштаб<small>при Наведении / Активная</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.carousel_bullet_scale" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
       <accordion-group is-open="accordion.accordions[4]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Переопределение Сетки Продуктов</div>
           </accordion-heading>
           <ul class="module-create-options">
               <!-- Product Grid General-->
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.carousel_product_grid_item_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.carousel_product_grid_details_bg_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля</span>
                       <span class="module-create-option">
                             <j-opt-text data-ng-model="settings.carousel_product_grid_item_padding" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.carousel_product_grid_item_border"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.carousel_product_grid_hover_border"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Мягкая Тень</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.carousel_product_grid_soft_shadow">
                               <switch-option key="1px 1px 0px rgba(0,0,0,.04)">ВКЛ</switch-option>
                               <switch-option key="none">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Тень</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.carousel_product_grid_shadow">
                               <switch-option key="hover">Наведение</switch-option>
                               <switch-option key="always">Всегда</switch-option>
                               <switch-option key="never">Никогда</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Регулировка Маски<small>Если включена тень</small></span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.carousel_product_shadow_mask">
                               <switch-option key="on">ВКЛ</switch-option>
                               <switch-option key="off">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
       <accordion-group is-open="accordion.accordions[5]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Переопределение Сетки Продуктов - Бренды</div>
           </accordion-heading>
           <ul class="module-create-options">
               <!-- Product Grid General-->
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.carousel_brand_product_grid_item_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.carousel_brand_product_grid_details_bg_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля</span>
                       <span class="module-create-option">
                             <j-opt-text data-ng-model="settings.carousel_brand_product_grid_item_padding" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.carousel_brand_product_grid_item_border"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.carousel_brand_product_grid_hover_border"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Мягкая Тень</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.carousel_brand_product_grid_soft_shadow">
                               <switch-option key="1px 1px 0px rgba(0,0,0,.04)">ВКЛ</switch-option>
                               <switch-option key="none">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Тень</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.carousel_brand_product_grid_shadow">
                               <switch-option key="hover">Наведение</switch-option>
                               <switch-option key="always">Всегда</switch-option>
                               <switch-option key="never">Никогда</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Регулировка Маски<small>Если включена тень</small></span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.carousel_brand_shadow_mask">
                               <switch-option key="on">ВКЛ</switch-option>
                               <switch-option key="off">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
   </accordion>
</div>

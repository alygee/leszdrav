<div class="sticky">
<div class="module-header">
   <div class='module-name'>Настройки<span>Боковые Колонки</span></div>

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
                       <j-opt-font data-ng-model="settings.side_title_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Заголовка</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.side_title_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ Заголовка</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.side_title_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля Заголовка<small>Лево-Право</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.side_title_padding_left" class="journal-sort"></j-opt-text> -
                           <j-opt-text data-ng-model="settings.side_title_padding_right" class="journal-sort"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Модуля</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.side_module_bg"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.side_module_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
             <!--<li>-->
                   <!--<span class="module-create-title">Module Font Color</span>-->
                   <!--<span class="module-create-option">-->
                       <!--<j-opt-color data-ng-model="settings.side_module_font_color"></j-opt-color>-->
                   <!--</span>-->
                   <!--<a href="#" target="_blank" class="journal-tip"></a>-->
               <!--</li>-->




               <li>
                   <span class="module-create-title">Цвет Делителя</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.side_module_divider"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Тип Делителя</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.side_module_divider_type">
                           <switch-option key="solid">Сплошной</switch-option>
                           <switch-option key="dashed">Пунктир</switch-option>
                           <switch-option key="dotted">Точки</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Интервал Модулей<small>Расстояние Между Модулями</small></span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.side_modules_margin">
                           <switch-option key="on">ВКЛ</switch-option>
                           <switch-option key="off">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

           </ul>
       </accordion-group>


       <accordion-group is-open="accordion.accordions[1]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Колонка Категорий</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Шрифт Категорий</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.side_module_link_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Ссылок <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.side_module_link_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона <br />при Наведении / Активации</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.side_module_link_bg_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Иконка Главной Категории</span>
                   <span class="module-create-option">
                       <j-opt-icon data-ng-model="settings.side_module_link_icon"></j-opt-icon>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Иконка Подкатегории</span>
                   <span class="module-create-option">
                       <j-opt-icon data-ng-model="settings.side_module_sub_link_icon"></j-opt-icon>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Смещение Подкатегории<small>Отступ Слева</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.side_category_sub_left_padding" class="journal-number-field"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля Ссылок</span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.side_category_link_padding_top" class="journal-sort"></j-opt-text> -
                       <j-opt-text data-ng-model="settings.side_category_link_padding_right" class="journal-sort"></j-opt-text> -
                       <j-opt-text data-ng-model="settings.side_category_link_padding_bottom" class="journal-sort"></j-opt-text> -
                       <j-opt-text data-ng-model="settings.side_category_link_padding_left" class="journal-sort"></j-opt-text>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <accordion-group is-open="false">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-1">Кнопка Мульти уровня</div>
                   </accordion-heading>
                   <ul class="module-create-options">

                       <li>
                           <span class="module-create-title">Шрифт + / -</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.category_plus_font"></j-opt-font>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Цвет Фона</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.category_plus_bg"></j-opt-color>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цвет <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.category_plus_hover"></j-opt-color>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                   <span class="module-create-option">
                    <j-opt-color data-ng-model="settings.category_plus_bg_hover"></j-opt-color>

                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Радиус</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.category_plus_border"></j-opt-border>
                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Размер<small>Ширина х Высота</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.side_category_link_plus_width" class="journal-number-field"></j-opt-text> x
                       <j-opt-text data-ng-model="settings.side_category_link_plus_height" class="journal-number-field"></j-opt-text>

                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>

                       <li>
                           <span class="module-create-title">Смещение<small>Верх-Право</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.side_category_link_plus" class="journal-number-field"></j-opt-text> x
                       <j-opt-text data-ng-model="settings.side_category_link_plus_right" class="journal-number-field"></j-opt-text>

                   </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                   </ul>
               </accordion-group>
           </ul>
      </accordion-group>


       <accordion-group is-open="accordion.accordions[2]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Колонка Продуктов</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Размер Изображения<small>Ширина х Высота</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.side_product_image_width" class="journal-number-field"></j-opt-text> x
                           <j-opt-text data-ng-model="settings.side_product_image_height" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Переполнение Названия Продукта</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.side_product_name_overflow">
                           <switch-option key="nowrap">ВКЛ</switch-option>
                           <switch-option key="normal">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Названия</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.side_product_name_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Шрифта <br />при Наведении</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.side_product_name_font_hover"></j-opt-color>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Шрифт Цены</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.side_product_price_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Старой Цены</span>
                   <span class="module-create-option">
                       <j-opt-font data-ng-model="settings.side_product_old_price_font"></j-opt-font>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
               <li>
                   <span class="module-create-title">Настройка Границ Изображения</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.side_module_image_border"></j-opt-border>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля Продуктов</span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.side_category_product_padding_top" class="journal-sort"></j-opt-text> -
                       <j-opt-text data-ng-model="settings.side_category_product_padding_right" class="journal-sort"></j-opt-text> -
                       <j-opt-text data-ng-model="settings.side_category_product_padding_bottom" class="journal-sort"></j-opt-text> -
                       <j-opt-text data-ng-model="settings.side_category_product_padding_left" class="journal-sort"></j-opt-text>

                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>




   </accordion>
</div>

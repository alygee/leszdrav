<div class="sticky">
   <div class="module-header">
       <div class='module-name'>Настройки<span>Модули Блога</span></div>

       <skin-manager data-url="settings/general"></skin-manager>

       <div class="module-buttons">
           <?php if (defined('J2ENV')): ?>
           <a class="btn blue" data-ng-show="skin_id< 100" data-ng-click="saveDefault($event)">Экспорт</a>
           <?php endif; ?>
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
   <!--BLOG MODULES-->
   <accordion-group is-open="accordion.accordions[3]">
   <accordion-heading>
       <div class="accordion-bar bar-level-0">Модуль Статей</div>
   </accordion-heading>
   <ul class="module-create-options">

   <li>
       <span class="module-create-title">Цвет Фона</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.posts_grid_bg"></j-opt-color>
                               </span>
       <a href="#" target="_blank" class="journal-tip"></a>
   </li>
   <li>
       <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.posts_grid_bg_hover"></j-opt-color>
                               </span>
       <a href="#" target="_blank" class="journal-tip"></a>
   </li>
   <li>
       <span class="module-create-title">Поля</span>
                               <span class="module-create-option">
                                     <j-opt-text data-ng-model="settings.posts_grid_padding" class="journal-number-field"></j-opt-text>
                               </span>
       <a href="#" target="_blank" class="journal-tip"></a>
   </li>

   <li>
       <span class="module-create-title">Настройка Границ Статьи</span>
                               <span class="module-create-option">
                                   <j-opt-border data-ng-model="settings.posts_grid_border"></j-opt-border>
                               </span>
       <a href="#" target="_blank" class="journal-tip"></a>
   </li>

   <li>
       <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.posts_grid_hover_border"></j-opt-color>
                               </span>
       <a href="#" target="_blank" class="journal-tip"></a>
   </li>

   <li>
       <span class="module-create-title">Настройка Границ Изображения Статьи</span>
                               <span class="module-create-option">
                                   <j-opt-border data-ng-model="settings.posts_grid_image_border"></j-opt-border>
                               </span>
       <a href="#" target="_blank" class="journal-tip"></a>
   </li>

   <li>
       <span class="module-create-title">Тень</span>
                           <span class="module-create-option">
                               <switch data-ng-model="settings.posts_grid_shadow">
                                   <switch-option key="hover">Наведение</switch-option>
                                   <switch-option key="always">Всегда</switch-option>
                                   <switch-option key="never">Никогда</switch-option>
                               </switch>
                           </span>
       <a href="#" target="_blank" class="journal-tip"></a>
   </li>

   <!--MODULE TITLE-->

   <accordion close-others="false">
       <accordion-group is-open="false">
       <accordion-heading>
           <div class="accordion-bar bar-level-1">Заголовок</div>
       </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Шрифт</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.posts_module_title_font"></j-opt-font>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона Заголовка</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.posts_module_title_bg"></j-opt-color>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ Заголовка</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.posts_module_title_border"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Выравнивание</span>
                           <span class="module-create-option">
                               <switch data-ng-model="settings.posts_module_title_align">
                                   <switch-option key="left">Слева</switch-option>
                                   <switch-option key="center">По Центру</switch-option>
                                   <switch-option key="right">Справа</switch-option>
                               </switch>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Переполнение Заголовка<small>Сохраняет длинные заголовки на одной линии</small></span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.module_title_overflow">
                               <switch-option key="on">ВКЛ</switch-option>
                               <switch-option key="off">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
   </accordion>

   <!--POST DETAILS-->
   <accordion close-others="false">
       <accordion-group is-open="false">
           <accordion-heading>
               <div class="accordion-bar bar-level-1">Детали Статьи</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Шрифт Заголовка</span>
                                       <span class="module-create-option">
                                           <j-opt-font data-ng-model="settings.posts_grid_title_font"></j-opt-font>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Заголовка <br />при Наведении</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.posts_grid_title_font_hover"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Переполнение Заголовка<small>Сохраняет длинные заголовки на одной линии</small></span>
                                       <span class="module-create-option">
                                           <switch data-ng-model="settings.posts_grid_title_overflow">
                                               <switch-option key="nowrap">ВКЛ</switch-option>
                                               <switch-option key="normal">ВЫКЛ</switch-option>
                                           </switch>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Содержания</span>
                                       <span class="module-create-option">
                                           <j-opt-font data-ng-model="settings.posts_grid_desc_font"></j-opt-font>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля<small>Верх-Право-Низ-Лево</small></span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.posts_grid_details_padding_top" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.posts_grid_details_padding_right" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.posts_grid_details_padding_bottom" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.posts_grid_details_padding_left" class="journal-sort"></j-opt-text>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

           </ul>
       </accordion-group>
   </accordion>

   <!--POST STATS-->
   <accordion close-others="false">
       <accordion-group is-open="false">
           <accordion-heading>
               <div class="accordion-bar bar-level-1">Статистика Статьи</div>
           </accordion-heading>
           <ul class="module-create-options">

               <li>
                   <span class="module-create-title">Шрифт</span>
                                       <span class="module-create-option">
                                           <j-opt-font data-ng-model="settings.posts_grid_author_date_font"></j-opt-font>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Поля</span>
                                       <span class="module-create-option">
                                             <j-opt-text data-ng-model="settings.posts_grid_author_date_padding" class="journal-number-field"></j-opt-text>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ</span>
                                       <span class="module-create-option">
                                           <j-opt-border data-ng-model="settings.posts_grid_author_date_border"></j-opt-border>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.posts_grid_author_date_bg"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Иконка Автора</span>
                                       <span class="module-create-option">
                                           <j-opt-icon data-ng-model="settings.posts_grid_author_icon"></j-opt-icon>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Иконка Даты</span>
                                       <span class="module-create-option">
                                           <j-opt-icon data-ng-model="settings.posts_grid_date_icon"></j-opt-icon>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Иконка Комментариев</span>
                                       <span class="module-create-option">
                                           <j-opt-icon data-ng-model="settings.posts_grid_comments_icon"></j-opt-icon>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

           </ul>
       </accordion-group>
   </accordion>

   <!--READ MORE BUTTON-->
   <accordion>
       <accordion-group is-open="false">
           <accordion-heading>
               <div class="accordion-bar bar-level-1">Кнопка "Читать Далее"</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Шрифт Текста Кнопки</span>
                                       <span class="module-create-option">
                                           <j-opt-font data-ng-model="settings.posts_grid_button_font"></j-opt-font>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Шрифта <br />при Наведении</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.posts_grid_button_font_hover"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.posts_grid_button_bg"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.posts_grid_button_bg_hover"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ</span>
                                       <span class="module-create-option">
                                           <j-opt-border data-ng-model="settings.posts_grid_button_border"></j-opt-border>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                                       <span class="module-create-option">
                                           <j-opt-color data-ng-model="settings.posts_grid_button_border_hover"></j-opt-color>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Иконка Кнопки</span>
                                       <span class="module-create-option">
                                           <j-opt-icon data-ng-model="settings.posts_grid_button_icon"></j-opt-icon>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Позиция Иконки</span>
                                       <span class="module-create-option">
                                           <switch data-ng-model="settings.posts_grid_button_icon_position">
                                               <switch-option key="left">Слева</switch-option>
                                               <switch-option key="right">Справа</switch-option>
                                           </switch>
                                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Поля Кнопки<small>Верх-Право-Низ-Лево</small></span>
                                           <span class="module-create-option">
                                               <j-opt-text data-ng-model="settings.posts_grid_button_padding_top" class="journal-sort"></j-opt-text> -
                                               <j-opt-text data-ng-model="settings.posts_grid_button_padding_right" class="journal-sort"></j-opt-text> -
                                               <j-opt-text data-ng-model="settings.posts_grid_button_padding_bottom" class="journal-sort"></j-opt-text> -
                                               <j-opt-text data-ng-model="settings.posts_grid_button_padding_left" class="journal-sort"></j-opt-text>
                                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
   </accordion>
   </ul>
   </accordion-group>

   <!--Side Modules-->
   <accordion-group is-open="accordion.accordions[4]">
       <accordion-heading>
           <div class="accordion-bar bar-level-0">Боковая Колонка</div>
       </accordion-heading>
       <ul class="module-create-options">
           <li>
               <span class="module-create-title">Размер Изображения Статьи</span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.side_post_image_width" class="journal-number-field"></j-opt-text> x
                               <j-opt-text data-ng-model="settings.side_post_image_height" class="journal-number-field"></j-opt-text>
                           </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>
           <li>
               <span class="module-create-title">Цвет Фона Модуля</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.side_posts_grid_bg"></j-opt-color>
                       </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>
           <li>
               <span class="module-create-title">Поля<small>Верх-Право-Низ-Лево</small></span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.side_posts_grid_button_padding_top" class="journal-sort"></j-opt-text> -
                       <j-opt-text data-ng-model="settings.side_posts_grid_button_padding_right" class="journal-sort"></j-opt-text> -
                       <j-opt-text data-ng-model="settings.side_posts_grid_button_padding_bottom" class="journal-sort"></j-opt-text> -
                       <j-opt-text data-ng-model="settings.side_posts_grid_button_padding_left" class="journal-sort"></j-opt-text>
                   </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>

           <li>
               <span class="module-create-title">Отступ Модуля Снизу</span>
                       <span class="module-create-option">
                             <j-opt-text data-ng-model="settings.side_posts_grid_spacing" class="journal-sort"></j-opt-text>
                       </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>

           <li>
               <span class="module-create-title">Настройка Границ</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.side_posts_grid_button_border"></j-opt-border>
                   </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>
           <li>
               <span class="module-create-title">Отступ Элементов Снизу</span>
                   <span class="module-create-option">
                       <j-opt-text data-ng-model="settings.side_posts_grid_item_spacing_bottom" class="journal-sort"></j-opt-text>
                   </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>

           <li>
               <span class="module-create-title">Цвет Делителя Элементов</span>
                   <span class="module-create-option">
                       <j-opt-color data-ng-model="settings.side_posts_divider"></j-opt-color>
                   </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>

           <li>
               <span class="module-create-title">Тип Делителя</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.side_posts_divider_type">
                           <switch-option key="solid">Сплошной</switch-option>
                           <switch-option key="dashed">Пунктир</switch-option>
                           <switch-option key="dotted">Точки</switch-option>
                       </switch>
                   </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>
           <li>
               <span class="module-create-title">Шрифт Заголовка</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.side_posts_grid_title_font"></j-opt-font>
                       </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>

           <li>
               <span class="module-create-title">Цвет Заголовка <br />при Наведении</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.side_posts_grid_title_font_hover"></j-opt-color>
                       </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>
           <li>
               <span class="module-create-title">Шрифт Автора / Даты</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.side_posts_grid_author_date_font"></j-opt-font>
                       </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>
           <li>
               <span class="module-create-title">Цвет Иконки Даты</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.side_posts_date_icon_color"></j-opt-color>
                       </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>
           <li>
               <span class="module-create-title">Цвет Иконки Комментариев</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.side_posts_comments_icon_color"></j-opt-color>
                       </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>
           <li>
               <span class="module-create-title">Цвет Иконки Автора</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.side_posts_user_icon_color"></j-opt-color>
                       </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>
           <li>
               <span class="module-create-title">Настройка Границ Изображения</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="settings.side_posts_grid_image_border"></j-opt-border>
                   </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>

       </ul>
   </accordion-group>

   </accordion>
</div>

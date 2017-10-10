<div class="sticky">
   <div class="module-header">
       <div class='module-name'>Настройки<span>Блог</span></div>

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

       <!--POST GRID-->
       <accordion-group is-open="accordion.accordions[0]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Сетка Статей</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Выравнивание Содержания</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.post_grid_align">
                           <switch-option key="left">Слева</switch-option>
                           <switch-option key="center">По Центру</switch-option>
                           <switch-option key="right">Справа</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.post_grid_bg"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.post_grid_bg_hover"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля</span>
                       <span class="module-create-option">
                             <j-opt-text data-ng-model="settings.post_grid_padding" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ Статьи</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.post_grid_border"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.post_grid_hover_border"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ Изображения Статьи</span>
                       <span class="module-create-option">
                           <j-opt-border data-ng-model="settings.post_grid_image_border"></j-opt-border>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Тень</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.post_grid_shadow">
                           <switch-option key="hover">Наведение</switch-option>
                           <switch-option key="always">Всегда</switch-option>
                           <switch-option key="never">Никогда</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


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
                                   <j-opt-font data-ng-model="settings.post_grid_title_font"></j-opt-font>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Цвет Заголовка <br />при Наведении</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.post_grid_title_font_hover"></j-opt-color>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Переполнение Заголовка<small>Сохраняет длинные заголовки на одной линии</small></span>
                               <span class="module-create-option">
                                   <switch data-ng-model="settings.post_grid_title_overflow">
                                       <switch-option key="nowrap">ВКЛ</switch-option>
                                       <switch-option key="normal">ВЫКЛ</switch-option>
                                   </switch>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Шрифт Содержания</span>
                               <span class="module-create-option">
                                   <j-opt-font data-ng-model="settings.post_grid_desc_font"></j-opt-font>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Поля<small>Верх-Право-Низ-Лево</small></span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.post_grid_details_padding_top" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.post_grid_details_padding_right" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.post_grid_details_padding_bottom" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.post_grid_details_padding_left" class="journal-sort"></j-opt-text>
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
                                   <j-opt-font data-ng-model="settings.post_grid_author_date_font"></j-opt-font>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Поля</span>
                               <span class="module-create-option">
                                     <j-opt-text data-ng-model="settings.post_grid_author_date_padding" class="journal-number-field"></j-opt-text>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Настройка Границ</span>
                               <span class="module-create-option">
                                   <j-opt-border data-ng-model="settings.post_grid_author_date_border"></j-opt-border>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Фона</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.post_grid_author_date_bg"></j-opt-color>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Иконка Автора</span>
                               <span class="module-create-option">
                                   <j-opt-icon data-ng-model="settings.post_grid_author_icon"></j-opt-icon>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Иконка Даты</span>
                               <span class="module-create-option">
                                   <j-opt-icon data-ng-model="settings.post_grid_date_icon"></j-opt-icon>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Иконка Комментариев</span>
                               <span class="module-create-option">
                                   <j-opt-icon data-ng-model="settings.post_grid_comments_icon"></j-opt-icon>
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
                               <span class="module-create-title">Шрифт</span>
                               <span class="module-create-option">
                                   <j-opt-font data-ng-model="settings.post_grid_button_font"></j-opt-font>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Шрифта <br />при Наведении</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.post_grid_button_font_hover"></j-opt-color>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Фона</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.post_grid_button_bg"></j-opt-color>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.post_grid_button_bg_hover"></j-opt-color>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Настройка Границ</span>
                               <span class="module-create-option">
                                   <j-opt-border data-ng-model="settings.post_grid_button_border"></j-opt-border>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.post_grid_button_border_hover"></j-opt-color>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Иконка Кнопки</span>
                               <span class="module-create-option">
                                   <j-opt-icon data-ng-model="settings.post_grid_button_icon"></j-opt-icon>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Иконки <br />при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.post_grid_icon_hover"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Позиция Иконки</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="settings.post_grid_button_icon_position">
                                       <switch-option key="left">Слева</switch-option>
                                       <switch-option key="right">Справа</switch-option>
                                   </switch>
                               </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Поля Кнопки<small>Верх-Право-Низ-Лево</small></span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.post_grid_button_padding_top" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.post_grid_button_padding_right" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.post_grid_button_padding_bottom" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.post_grid_button_padding_left" class="journal-sort"></j-opt-text>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                       </ul>
                   </accordion-group>
               </accordion>
           </ul>
       </accordion-group>


       <!--POST LIST-->
       <accordion-group is-open="accordion.accordions[1]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Список Статей</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.post_list_bg"></j-opt-color>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.post_list_bg_hover"></j-opt-color>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля</span>
                           <span class="module-create-option">
                                 <j-opt-text data-ng-model="settings.post_list_padding" class="journal-number-field"></j-opt-text>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ Статьи</span>
                           <span class="module-create-option">
                               <j-opt-border data-ng-model="settings.post_list_border"></j-opt-border>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                           <span class="module-create-option">
                               <j-opt-color data-ng-model="settings.post_list_hover_border"></j-opt-color>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ Изображения Статьи</span>
                           <span class="module-create-option">
                               <j-opt-border data-ng-model="settings.post_list_image_border"></j-opt-border>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">MAX Ширина Изображения Статьи<small>В процентах от общей ширины</small></span>
                           <span class="module-create-option">
                                 <j-opt-text data-ng-model="settings.post_list_image_width" class="journal-number-field"></j-opt-text>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Тень</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.post_list_shadow">
                               <switch-option key="hover">Наведение</switch-option>
                               <switch-option key="always">Всегда</switch-option>
                               <switch-option key="never">Никогда</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <!--POST DETAILS-->
               <accordion>
                   <accordion-group is-open="false">
                       <accordion-heading>
                           <div class="accordion-bar bar-level-1">Детали Статьи</div>
                       </accordion-heading>
                       <ul class="module-create-options">
                           <li>
                               <span class="module-create-title">Шрифт Заголовка</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.post_list_title_font"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Цвет Заголовка <br />при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.post_list_title_font_hover"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Цвет Делителя Заголовка</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.post_list_title_border_color"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Тип Делителя Заголовка</span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="settings.post_list_title_divider_type">
                                           <switch-option key="solid">Сплошной</switch-option>
                                           <switch-option key="dashed">Пунктир</switch-option>
                                           <switch-option key="dotted">Точки</switch-option>
                                       </switch>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Переполнение Заголовка<small>Сохраняет длинные заголовки на одной линии</small></span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="settings.post_list_title_overflow">
                                           <switch-option key="nowrap">ВКЛ</switch-option>
                                           <switch-option key="normal">ВЫКЛ</switch-option>
                                       </switch>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Шрифт Содержания</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.post_list_desc_font"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Поля<small>Верх-Право-Низ-Лево</small></span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.post_list_details_padding_top" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.post_list_details_padding_right" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.post_list_details_padding_bottom" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.post_list_details_padding_left" class="journal-sort"></j-opt-text>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                       </ul>
                   </accordion-group>
               </accordion>

               <!--POST DETAILS-->
               <accordion>
                   <accordion-group is-open="false">
                       <accordion-heading>
                           <div class="accordion-bar bar-level-1">Статистика Статьи</div>
                       </accordion-heading>
                       <ul class="module-create-options">

                           <li>
                               <span class="module-create-title">Шрифт</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.post_list_author_date_font"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Поля</span>
                                   <span class="module-create-option">
                                         <j-opt-text data-ng-model="settings.post_list_author_date_padding" class="journal-number-field"></j-opt-text>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Настройка Границ</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.post_list_author_date_border"></j-opt-border>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.post_list_author_date_bg"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Иконка Автора</span>
                                   <span class="module-create-option">
                                       <j-opt-icon data-ng-model="settings.post_list_author_icon"></j-opt-icon>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Иконка Даты</span>
                                   <span class="module-create-option">
                                       <j-opt-icon data-ng-model="settings.post_list_date_icon"></j-opt-icon>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Иконка Комментариев</span>
                                   <span class="module-create-option">
                                       <j-opt-icon data-ng-model="settings.post_list_comments_icon"></j-opt-icon>
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
                                       <j-opt-font data-ng-model="settings.post_list_button_font"></j-opt-font>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Шрифта <br />при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.post_list_button_font_hover"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.post_list_button_bg"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.post_list_button_bg_hover"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Настройка Границ</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.post_list_button_border"></j-opt-border>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.post_list_button_border_hover"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>

                           <li>
                               <span class="module-create-title">Иконка Кнопки</span>
                                   <span class="module-create-option">
                                       <j-opt-icon data-ng-model="settings.post_list_button_icon"></j-opt-icon>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Иконки <br />при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.post_list_icon_hover"></j-opt-color>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>


                           <li>
                               <span class="module-create-title">Позиция Иконки</span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="settings.post_list_button_icon_position">
                                           <switch-option key="left">Слева</switch-option>
                                           <switch-option key="right">Справа</switch-option>
                                       </switch>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>


                           <li>
                               <span class="module-create-title">Поля Кнопки<small>Верх-Право-Низ-Лево</small></span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.post_list_button_padding_top" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.post_list_button_padding_right" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.post_list_button_padding_bottom" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.post_list_button_padding_left" class="journal-sort"></j-opt-text>
                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                       </ul>
                   </accordion-group>
               </accordion>
           </ul>
       </accordion-group>

       <!--RSS Feed-->
       <accordion-group is-open="accordion.accordions[2]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">RSS Лента</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Иконка</span>
                       <span class="module-create-option">
                           <j-opt-icon data-ng-model="settings.feed_icon"></j-opt-icon>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Текст</span>
                       <span class="module-create-option">
                           <j-opt-text-lang data-ng-model="settings.feed_text"></j-opt-text-lang>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Шрифт</span>
                       <span class="module-create-option">
                           <j-opt-font data-ng-model="settings.feed_text_font"></j-opt-font>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Текста <br />при Наведении</span>
                       <span class="module-create-option">
                           <j-opt-color data-ng-model="settings.feed_text_font_hover"></j-opt-color>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Смещение Позиции<small>Верх-Право</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.feed_text_offset_top" class="journal-number-field"></j-opt-text> x
                           <j-opt-text data-ng-model="settings.feed_text_offset_right" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Размер Изображения Ленты<small>Ширина х Высота</small></span>
                       <span class="module-create-option">
                           <j-opt-text data-ng-model="settings.feed_image_width" class="journal-number-field"></j-opt-text> x
                           <j-opt-text data-ng-model="settings.feed_image_height" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


           </ul>
           </accordion-group>
   </accordion>
</div>

<div class="sticky">
   <div class="module-header">
       <div class='module-name'>Настройки<span>Страница Статьи</span></div>

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

   <!--GENERAL-->
       <accordion-group is-open="accordion.accordions[0]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Основное</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Цвет Фона Содержания</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.post_page_bg"></j-opt-color>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля Содержания</span>
                                   <span class="module-create-option">
                                         <j-opt-text data-ng-model="settings.post_page_padding" class="journal-number-field"></j-opt-text>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Цвет Делителя Кнопок "Поделиться"</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.post_page_share_border_color"></j-opt-color>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Тип Делителя</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.post_page_share_border_type">
                           <switch-option key="solid">Сплошной</switch-option>
                           <switch-option key="dashed">Пунктир</switch-option>
                           <switch-option key="dotted">Точки</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Выравнивание Кнопок "Поделиться"</span>
                       <span class="module-create-option">
                           <switch data-ng-model="settings.post_page_share_align">
                               <switch-option key="left">Слева</switch-option>
                               <switch-option key="center">По Центру</switch-option>
                               <switch-option key="right">Справа</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
   </accordion-group>

       <!--PAGE TITLE-->
       <accordion-group is-open="accordion.accordions[1]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Заголовок Статьи</div>
           </accordion-heading>
           <ul class="module-create-options">

               <li>
                   <span class="module-create-title">Шрифт</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.post_page_title_font"></j-opt-font>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.post_page_title_bg"></j-opt-color>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Настройка Границ</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.post_page_title_border"></j-opt-border>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Высота Строки<small>Вертикальное Центрирование</small></span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.post_page_title_line_height" class="journal-number-field"></j-opt-text>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля<small>Лево-Право</small></span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.post_page_title_padding_left" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.post_page_title_padding_right" class="journal-sort"></j-opt-text>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Выравнивание</span>
                                   <span class="module-create-option">
                                       <switch data-ng-model="settings.post_page_title_align">
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
                           <switch data-ng-model="settings.post_title_overflow">
                               <switch-option key="on">ВКЛ</switch-option>
                               <switch-option key="off">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>

   <!--Post Stats-->
   <accordion-group is-open="accordion.accordions[2]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Статистика Статьи</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Шрифт</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.post_page_author_date_font"></j-opt-font>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Поля<small>Верх-Право-Низ-Лево</small></span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.post_page_stats_padding_top" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.post_page_stats_padding_right" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.post_page_stats_padding_bottom" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.post_page_stats_padding_left" class="journal-sort"></j-opt-text>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Отступ<small>Верх-Низ</small></span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.post_page_stats_margin_left" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.post_page_stats_margin_right" class="journal-sort"></j-opt-text>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Настройка Границ</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.post_page_author_date_border" editor="hide-radius"></j-opt-border>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Фона</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.post_page_author_date_bg"></j-opt-color>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Иконка Автора</span>
                                   <span class="module-create-option">
                                       <j-opt-icon data-ng-model="settings.post_page_author_icon"></j-opt-icon>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Иконка Даты</span>
                                   <span class="module-create-option">
                                       <j-opt-icon data-ng-model="settings.post_page_date_icon"></j-opt-icon>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Иконка Комментариев</span>
                                   <span class="module-create-option">
                                       <j-opt-icon data-ng-model="settings.post_page_comments_icon"></j-opt-icon>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Иконка Категории</span>
                                   <span class="module-create-option">
                                       <j-opt-icon data-ng-model="settings.post_page_category_icon"></j-opt-icon>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Шрифта Категории</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.post_page_category_font"></j-opt-color>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Шрифта Категории при Наведении</span>
                                   <span class="module-create-option">
                                       <j-opt-color data-ng-model="settings.post_page_category_font_hover"></j-opt-color>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>

   <!--Description-->
   <accordion-group is-open="accordion.accordions[3]">
       <accordion-heading>
           <div class="accordion-bar bar-level-0">Шрифты Содержания</div>
       </accordion-heading>
       <ul class="module-create-options">
           <li>
               <span class="module-create-title">Шрифт тега H1</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.post_page_h1_font"></j-opt-font>
                                   </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>
           <li>
               <span class="module-create-title">Шрифт тега H2</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.post_page_h2_font"></j-opt-font>
                                   </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>
           <li>
               <span class="module-create-title">Шрифт тега H3</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.post_page_h3_font"></j-opt-font>
                                   </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>
           <li>
               <span class="module-create-title">Шрифт Описания</span>
                                   <span class="module-create-option">
                                       <j-opt-font data-ng-model="settings.post_page_desc_font"></j-opt-font>
                                   </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>

           <li>
               <span class="module-create-title">Высота Строки</span>
                       <span class="module-create-option">
                             <j-opt-text data-ng-model="settings.post_page_line_height" class="journal-number-field"></j-opt-text>
                       </span>
               <a href="#" target="_blank" class="journal-tip"></a>
           </li>
       </ul>
   </accordion-group>

       <!--Blockquote-->
   <accordion-group is-open="accordion.accordions[4]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Стили Цитаты</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Шрифт</span>
                               <span class="module-create-option">
                                   <j-opt-font data-ng-model="settings.post_page_q_font"></j-opt-font>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Высота Строки</span>
                       <span class="module-create-option">
                             <j-opt-text data-ng-model="settings.post_page_q_line_height" class="journal-number-field"></j-opt-text>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>


               <li>
                   <span class="module-create-title">Настройка Границ</span>
                               <span class="module-create-option">
                                   <j-opt-border data-ng-model="settings.post_page_q_border" editor="hide-radius"></j-opt-border>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.post_page_q_bg"></j-opt-color>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Поля<small>Верх-Право-Низ-Лево</small></span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.post_page_q_padding_top" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.post_page_q_padding_right" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.post_page_q_padding_bottom" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.post_page_q_padding_left" class="journal-sort"></j-opt-text>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Отступы<small>Верх-Право-Низ-Лево</small></span>
                                   <span class="module-create-option">
                                       <j-opt-text data-ng-model="settings.post_page_q_margin_top" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.post_page_q_margin_right" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.post_page_q_margin_bottom" class="journal-sort"></j-opt-text> -
                                       <j-opt-text data-ng-model="settings.post_page_q_margin_left" class="journal-sort"></j-opt-text>
                                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>

       <!--Tags-->
   <accordion-group is-open="accordion.accordions[5]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Метки</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Шрифт Заголовка</span>
                               <span class="module-create-option">
                                   <j-opt-font data-ng-model="settings.post_tags_title_font"></j-opt-font>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона Заголовка</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.post_tags_title_bg"></j-opt-color>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Шрифт Меток</span>
                               <span class="module-create-option">
                                   <j-opt-font data-ng-model="settings.post_tags_font"></j-opt-font>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона Меток</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.post_tags_bg"></j-opt-color>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Цвет Меток <br />при Наведении</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.post_tags_hover_font"></j-opt-color>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Цвет Фона Меток <br />при Наведении</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.post_tags_hover_bg"></j-opt-color>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Радиус</span>
                               <span class="module-create-option">
                                   <j-opt-border data-ng-model="settings.post_tags_border" editor="hide-style"></j-opt-border>
                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Выравнивание</span>
                           <span class="module-create-option">
                               <switch data-ng-model="settings.post_tags_align">
                                   <switch-option key="left">Слева</switch-option>
                                   <switch-option key="center">По Центру</switch-option>
                                   <switch-option key="right">Справа</switch-option>
                               </switch>
                           </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               </ul>
           </accordion-group>

           <!--Comments-->
           <accordion-group is-open="accordion.accordions[6]">
               <accordion-heading>
                   <div class="accordion-bar bar-level-0">Комментарии</div>
               </accordion-heading>
               <ul class="module-create-options">
                   <li>
                       <span class="module-create-title">Шрифт Заголовка</span>
                           <span class="module-create-option">
                               <j-opt-font data-ng-model="settings.post_comment_title_font"></j-opt-font>
                           </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Цвет Фона Заголовка</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.post_comment_title_bg"></j-opt-color>
                               </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

                   <li>
                       <span class="module-create-title">Поля Заголовка<small>Верх-Право-Низ-Лево</small></span>
                           <span class="module-create-option">
                               <j-opt-text data-ng-model="settings.post_comment_title_padding_top" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.post_comment_title_padding_right" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.post_comment_title_padding_bottom" class="journal-sort"></j-opt-text> -
                               <j-opt-text data-ng-model="settings.post_comment_title_padding_left" class="journal-sort"></j-opt-text>
                           </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Отступы Заголовка<small>Верх-Низ</small></span>
                                                   <span class="module-create-option">
                                                       <j-opt-text data-ng-model="settings.post_comment_title_top_margin" class="journal-sort"></j-opt-text> -
                                                       <j-opt-text data-ng-model="settings.post_comment_title_bottom_margin" class="journal-sort"></j-opt-text>
                                                   </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

                   <li>
                       <span class="module-create-title">Настройка Границ Заголовка</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.post_comment_title_border"></j-opt-border>
                                   </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Выравнивание</span>
                           <span class="module-create-option">
                               <switch data-ng-model="settings.post_comment_title_align">
                                   <switch-option key="left">Слева</switch-option>
                                   <switch-option key="center">По Центру</switch-option>
                                   <switch-option key="right">Справа</switch-option>
                               </switch>
                           </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

                   <li>
                       <span class="module-create-title">Цвет Бокса Комментария (Четный)</span>
                                               <span class="module-create-option">
                                                   <j-opt-color data-ng-model="settings.post_comment_bg_even"></j-opt-color>
                                               </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Цвет Бокса Комментария (Нечетный)</span>
                                               <span class="module-create-option">
                                                   <j-opt-color data-ng-model="settings.post_comment_bg_odd"></j-opt-color>
                                               </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Настройка Границ Бокса</span>
                                               <span class="module-create-option">
                                                   <j-opt-border data-ng-model="settings.post_comment_border"></j-opt-border>
                                               </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Поля Бокса</span>
                                                   <span class="module-create-option">
                                                       <j-opt-text data-ng-model="settings.post_comment_padding" class="journal-number-field"></j-opt-text>
                                                   </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Настройка Границ Аватара</span>
                                               <span class="module-create-option">
                                                   <j-opt-border data-ng-model="settings.post_comment_avatar_border"></j-opt-border>
                                               </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Шрифт Автора</span>
                                               <span class="module-create-option">
                                                   <j-opt-font data-ng-model="settings.post_comment_author_font"></j-opt-font>
                                               </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Шрифт Дата/Время</span>
                                               <span class="module-create-option">
                                                   <j-opt-font data-ng-model="settings.post_comment_date_font"></j-opt-font>
                                               </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                   <span class="module-create-title">Шрифт "Сайт"</span>
                                               <span class="module-create-option">
                                                   <j-opt-font data-ng-model="settings.post_comment_user_site_font"></j-opt-font>
                                               </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
                   <li>
                       <span class="module-create-title">Шрифт "Сайт" при Наведении</span>
                                               <span class="module-create-option">
                                                   <j-opt-color data-ng-model="settings.post_comment_user_site_hover"></j-opt-color>
                                               </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Шрифт Комментария</span>
                                               <span class="module-create-option">
                                                   <j-opt-font data-ng-model="settings.post_comment_font"></j-opt-font>
                                               </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

                   <!--REPLY BOX-->
                   <accordion>
                   <accordion-group is-open="false">
                       <accordion-heading>
                           <div class="accordion-bar bar-level-1">Бокс Ответа</div>
                       </accordion-heading>
                       <ul class="module-create-options">
                           <li>
                               <span class="module-create-title">Цвет Бокса Ответа (Четный)</span>
                                                       <span class="module-create-option">
                                                           <j-opt-color data-ng-model="settings.post_reply_bg_even"></j-opt-color>
                                                       </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Цвет Бокса Ответа (Нечетный)</span>
                                                       <span class="module-create-option">
                                                           <j-opt-color data-ng-model="settings.post_reply_bg_odd"></j-opt-color>
                                                       </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Настройка Границ Бокса</span>
                                                       <span class="module-create-option">
                                                           <j-opt-border data-ng-model="settings.post_reply_border"></j-opt-border>
                                                       </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Поля Бокса</span>
                                                   <span class="module-create-option">
                                                       <j-opt-text data-ng-model="settings.post_reply_padding" class="journal-number-field"></j-opt-text>
                                                   </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Настройка Границ Аватара</span>
                                                       <span class="module-create-option">
                                                           <j-opt-border data-ng-model="settings.post_reply_avatar_border"></j-opt-border>
                                                       </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Шрифт Автора</span>
                                                       <span class="module-create-option">
                                                           <j-opt-font data-ng-model="settings.post_reply_author_font"></j-opt-font>
                                                       </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Шрифт Дата/Время</span>
                                                       <span class="module-create-option">
                                                           <j-opt-font data-ng-model="settings.post_reply_date_font"></j-opt-font>
                                                       </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <li>
                               <span class="module-create-title">Шрифт Комментария</span>
                                                       <span class="module-create-option">
                                                           <j-opt-font data-ng-model="settings.post_reply_comment_font"></j-opt-font>
                                                       </span>
                               <a href="#" target="_blank" class="journal-tip"></a>
                           </li>
                           <!--REPLY FORM-->
                           <accordion>
                               <accordion-group is-open="false">
                                   <accordion-heading>
                                       <div class="accordion-bar bar-level-2">Форма Ответа</div>
                                   </accordion-heading>
                                   <ul class="module-create-options">
                                       <li>
                                           <span class="module-create-title">Шрифт Заголовка</span>
                                                               <span class="module-create-option">
                                                                   <j-opt-font data-ng-model="settings.post_form_reply_title_font"></j-opt-font>
                                                               </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>

                                       <li>
                                           <span class="module-create-title">Цвет Фона Заголовка</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.post_form_reply_title_bg"></j-opt-color>
                               </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>


                                       <li>
                                           <span class="module-create-title">Поля Заголовка<small>Верх-Право-Низ-Лево</small></span>
                                               <span class="module-create-option">
                                                   <j-opt-text data-ng-model="settings.post_form_reply_title_padding_top" class="journal-sort"></j-opt-text> -
                                                   <j-opt-text data-ng-model="settings.post_form_reply_title_padding_right" class="journal-sort"></j-opt-text> -
                                                   <j-opt-text data-ng-model="settings.post_form_reply_title_padding_bottom" class="journal-sort"></j-opt-text> -
                                                   <j-opt-text data-ng-model="settings.post_form_reply_title_padding_left" class="journal-sort"></j-opt-text>
                                               </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>


                                       <li>
                                           <span class="module-create-title">Отступы Заголовка<small>Верх-Низ</small></span>
                                                   <span class="module-create-option">
                                                       <j-opt-text data-ng-model="settings.post_form_reply_title_top_margin" class="journal-sort"></j-opt-text> -
                                                       <j-opt-text data-ng-model="settings.post_form_reply_title_bottom_margin" class="journal-sort"></j-opt-text>
                                                   </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>

                                       <li>
                                           <span class="module-create-title">Настройка Границ Заголовка</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.post_form_reply_title_border"></j-opt-border>
                                   </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>

                                       <li>
                                           <span class="module-create-title">Выравнивание</span>
                                                   <span class="module-create-option">
                                                       <switch data-ng-model="settings.post_form_reply_title_align">
                                                           <switch-option key="left">Слева</switch-option>
                                                           <switch-option key="center">По Центру</switch-option>
                                                           <switch-option key="right">Справа</switch-option>
                                                       </switch>
                                                   </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>



                                       <li>
                                           <span class="module-create-title">Цвет Фона Формы</span>
                                                       <span class="module-create-option">
                                                           <j-opt-color data-ng-model="settings.post_form_reply_bg"></j-opt-color>
                                                       </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>
                                       <li>
                                           <span class="module-create-title">Настройка Границ Формы</span>
                                                       <span class="module-create-option">
                                                           <j-opt-border data-ng-model="settings.post_form_reply_border"></j-opt-border>
                                                       </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>
                                       <li>
                                           <span class="module-create-title">Поля Формы</span>
                                                       <span class="module-create-option">
                                                           <j-opt-text data-ng-model="settings.post_form_reply_padding" class="journal-sort"></j-opt-text> -
                                                       </span>
                                           <a href="#" target="_blank" class="journal-tip"></a>
                                       </li>

                                   </ul>
                               </accordion-group>
                           </accordion>
                       </ul>
                   </accordion-group>
               </accordion>


               <!--COMMENT FORM-->
               <accordion>
                   <accordion-group is-open="false">
                       <accordion-heading>
                           <div class="accordion-bar bar-level-1">Форма Комментария</div>
                       </accordion-heading>
                           <ul class="module-create-options">
                               <li>
                                   <span class="module-create-title">Шрифт Заголовка</span>
                                           <span class="module-create-option">
                                               <j-opt-font data-ng-model="settings.post_form_title_font"></j-opt-font>
                                           </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>
                               <li>
                                   <span class="module-create-title">Цвет Фона Заголовка</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="settings.post_form_title_bg"></j-opt-color>
                               </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>


                               <li>
                                   <span class="module-create-title">Поля Заголовка<small>Верх-Право-Низ-Лево</small></span>
                                               <span class="module-create-option">
                                                   <j-opt-text data-ng-model="settings.post_form_title_padding_top" class="journal-sort"></j-opt-text> -
                                                   <j-opt-text data-ng-model="settings.post_form_title_padding_right" class="journal-sort"></j-opt-text> -
                                                   <j-opt-text data-ng-model="settings.post_form_title_padding_bottom" class="journal-sort"></j-opt-text> -
                                                   <j-opt-text data-ng-model="settings.post_form_title_padding_left" class="journal-sort"></j-opt-text>
                                               </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>


                               <li>
                                   <span class="module-create-title">Отступы Заголовка<small>Верх-Низ</small></span>
                                                   <span class="module-create-option">
                                                       <j-opt-text data-ng-model="settings.post_form_title_top_margin" class="journal-sort"></j-opt-text> -
                                                       <j-opt-text data-ng-model="settings.post_form_title_bottom_margin" class="journal-sort"></j-opt-text>
                                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>


                               <li>
                                   <span class="module-create-title">Настройка Границ Заголовка</span>
                                   <span class="module-create-option">
                                       <j-opt-border data-ng-model="settings.post_form_title_border"></j-opt-border>
                                   </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>

                               <li>
                                   <span class="module-create-title">Выравнивание</span>
                                           <span class="module-create-option">
                                               <switch data-ng-model="settings.post_form_title_align">
                                                   <switch-option key="left">Слева</switch-option>
                                                   <switch-option key="center">По Центру</switch-option>
                                                   <switch-option key="right">Справа</switch-option>
                                               </switch>
                                           </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>


                               <li>
                                   <span class="module-create-title">Цвет Фона Формы</span>
                                                           <span class="module-create-option">
                                                               <j-opt-color data-ng-model="settings.post_form_bg"></j-opt-color>
                                                           </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>
                               <li>
                                   <span class="module-create-title">Настройка Границ Формы</span>
                                                           <span class="module-create-option">
                                                               <j-opt-border data-ng-model="settings.post_form_border"></j-opt-border>
                                                           </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>
                               <li>
                                   <span class="module-create-title">Поля Формы</span>
                                                           <span class="module-create-option">
                                                               <j-opt-text data-ng-model="settings.post_form_padding" class="journal-number-field"></j-opt-text> -
                                                           </span>
                                   <a href="#" target="_blank" class="journal-tip"></a>
                               </li>

                           </ul>
                       </accordion-group>
                   </accordion>
               </ul>
           </accordion-group>

       <!--COMMENT BUTTONS-->
       <accordion-group is-open="accordion.accordions[7]">
               <accordion-heading>
                   <div class="accordion-bar bar-level-0">Кнопки <span>(Ответ / Отправить)</span></div>
               </accordion-heading>
               <ul class="module-create-options">
                   <li>
                       <span class="module-create-title">Шрифт Текста</span>
                                           <span class="module-create-option">
                                               <j-opt-font data-ng-model="settings.post_comment_button_font"></j-opt-font>
                                           </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Цвет Шрифта <br />при Наведении</span>
                                           <span class="module-create-option">
                                               <j-opt-color data-ng-model="settings.post_comment_button_font_hover"></j-opt-color>
                                           </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Цвет Фона</span>
                                           <span class="module-create-option">
                                               <j-opt-color data-ng-model="settings.post_comment_button_bg"></j-opt-color>
                                           </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
                   <li>
                       <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                                           <span class="module-create-option">
                                               <j-opt-color data-ng-model="settings.post_comment_button_bg_hover"></j-opt-color>
                                           </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

                   <li>
                       <span class="module-create-title">Настройка Границ</span>
                                           <span class="module-create-option">
                                               <j-opt-border data-ng-model="settings.post_comment_button_border"></j-opt-border>
                                           </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

                   <li>
                       <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                                           <span class="module-create-option">
                                               <j-opt-color data-ng-model="settings.post_comment_button_border_hover"></j-opt-color>
                                           </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>

                   <li>
                       <span class="module-create-title">Поля Кнопки<small>Верх-Право-Низ-Лево</small></span>
                               <span class="module-create-option">
                                   <j-opt-text data-ng-model="settings.post_comment_button_padding_top" class="journal-sort"></j-opt-text> -
                                   <j-opt-text data-ng-model="settings.post_comment_button_padding_right" class="journal-sort"></j-opt-text> -
                                   <j-opt-text data-ng-model="settings.post_comment_button_padding_bottom" class="journal-sort"></j-opt-text> -
                                   <j-opt-text data-ng-model="settings.post_comment_button_padding_left" class="journal-sort"></j-opt-text>
                               </span>
                       <a href="#" target="_blank" class="journal-tip"></a>
                   </li>
               </ul>
           </accordion-group>
   </accordion>
</div>
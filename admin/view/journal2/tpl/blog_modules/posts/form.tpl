<div class="sticky">
<div class="module-header">
   <div class='module-name'>Статьи<span data-ng-show="module_id == null">Создание Модуля</span><span data-ng-show="module_id != null">Изменение Модуля</span></div>
   <div class="module-buttons">
       <a href="<?php echo $base_href;?>#/module/{{module_type}}/all/{{module_id}}" data-ng-show="module_id != null" class="btn blue">Добавить в Макет</a>
       <a data-ng-click="save($event)" class="btn green">Сохранить</a>
       <a href="<?php echo $base_href;?>#/module/{{module_type}}/all" data-ng-show="module_id == null" class="btn red">Отмена</a>
       <a data-ng-click="delete($event)" data-ng-show="module_id != null" class="btn red">Удалить</a>
   </div>
</div>
</div>
<div class="module-body module-form">
   <div class="accordion-bar bar-level-0 bar-expand" >
       <a data-ng-click="toggleAccordion(true)" class="hint--top" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(false)" class="hint--top" data-hint="Свернуть"><i class="collapse-icon"></i></a>
       <label class="close-others hint--top" data-hint="Закрыть Разделы"><input type="checkbox" data-ng-model="module_data.close_others" /></label>
   </div>
   <accordion close-others="module_data.close_others">
       <accordion-group is-open="module_data.general_is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Основное</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Название Модуля</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-name-field" data-ng-model="module_data.module_name" required />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Заголовок</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="module_data.title"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Тип Модуля<small data-ng-show="module_data.module_type == 'related'">Для страницы продукта</small></span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.module_type">
                           <switch-option key="newest">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Последние&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                           <switch-option key="comments">Комментируемые</switch-option>
                           <switch-option key="views">Просматриваемые</switch-option>
                           <switch-option key="related">&nbsp;&nbsp;&nbsp;&nbsp;Связанные&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                           <switch-option key="custom">&nbsp;&nbsp;&nbsp;&nbsp;Своё&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="module_data.module_type === 'custom'">
                   <span class="module-create-title">Статьи</span>
                   <span class="module-create-option">
                       <ul class="simple-list">
                           <li data-ng-repeat="post in module_data.posts">
                               <blog-post-search model="post.data"></blog-post-search>
                               <a class="btn red delete" href="javascript:;" data-ng-click="removePost($index)">X</a>
                           </li>
                       </ul>
                       <a href="javascript:;" data-ng-click="addPost()" class="btn blue add-product">Добавить</a>
                   </span>
               </li>
               <li data-ng-show="module_data.module_type !== 'custom'">
                   <span class="module-create-title">Лимит Статей</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-sort" data-ng-model="module_data.limit" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Размер Изображения</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-number-field" data-ng-model="module_data.image_width" placeholder="Ширина" /> x<input type="text" class="journal-number-field" data-ng-model="module_data.image_height" placeholder="Высота" />
                       <switch data-ng-model="module_data.image_type">
                           <switch-option key="fit">Вписать</switch-option>
                           <switch-option key="crop">Обрезать</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Тип Отображения</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.display">
                           <switch-option key="grid">Сетка</switch-option>
                           <switch-option key="list">Список</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="module_data.display === 'grid'">
                   <span class="module-create-title">Элементов в Строке</span>
                   <span class="module-create-option">
                       <j-opt-items-per-row data-ng-model="module_data.items_per_row"></j-opt-items-per-row>
                   </span>
               </li>
               <li data-ng-show="module_data.display === 'grid'">
                   <span class="module-create-title">Выравнивание Содержания</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.content_align">
                           <switch-option key="left">Слева</switch-option>
                           <switch-option key="center">По Центру</switch-option>
                           <switch-option key="right">Справа</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Описание Статьи</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.description">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Лимит Символов в Описании</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-number-field" data-ng-model="module_data.description_limit" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Режим Карусели</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.carousel">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <!--<li data-ng-show="module_data.carousel == '0'">-->
                   <!--<span class="module-create-title">Лимит Превью</span>-->
                   <!--<span class="module-create-option">-->
                       <!--<input type="text" class="journal-input journal-sort" data-ng-model="module_data.thumbs_limit" />-->
                   <!--</span>-->
               <!--</li>-->
               <li data-ng-show="module_data.carousel == '1'">
                   <span class="module-create-title">Стрелки</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.carousel_arrows">
                           <switch-option key="none">Нет</switch-option>
                           <switch-option key="top">Сверху</switch-option>
                           <switch-option key="side">Сбоку</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="module_data.carousel == '1'">
                   <span class="module-create-title">Индикаторы</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.carousel_bullets">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="module_data.carousel == '1'">
                   <span class="module-create-title">Автопрокрутка</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.autoplay">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="module_data.carousel == '1' && module_data.autoplay == '1'">
                   <span class="module-create-title">Пауза при Наведении</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.pause_on_hover">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="module_data.carousel == '1' && module_data.autoplay == '1'">
                   <span class="module-create-title">Задержка Перехода</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-number-field" data-ng-model="module_data.transition_delay" />
                   </span>
               </li>
               <li data-ng-show="module_data.carousel == '1'">
                   <span class="module-create-title">Скорость Перехода</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-number-field" data-ng-model="module_data.transition_speed" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Отключать на Мобильных</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.disable_mobile">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="module_data.disable_mobile == '0' && module_data.carousel == '1'">
                   <span class="module-create-title">Сенсорное Управление</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.touch_drag">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
           </ul>
       </accordion-group>
       <accordion-group is-open="module_data.top_bottom_is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Настройка Позиции и Фона</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Фон</span>
                       <span class="module-create-option">
                           <j-opt-background data-ng-model="module_data.background" data-bgcolor="true"></j-opt-background>
                       </span>
               </li>
               <li>
                   <span class="module-create-title">По Всей Ширине</span>
                       <span class="module-create-option">
                           <switch data-ng-model="module_data.fullwidth">
                               <switch-option key="1">ВКЛ</switch-option>
                               <switch-option key="0">ВЫКЛ</switch-option>
                           </switch>
                       </span>
               </li>
               <li>
                   <span class="module-create-title">Отступ<small>Верх/Низ</small></span>
                   <span class="module-create-option">
                       <input type="text" class="journal-number-field" data-ng-model="module_data.margin_top" /> x<input type="text" class="journal-number-field" data-ng-model="module_data.margin_bottom" />
                   </span>
               </li>
               <li data-ng-show="module_data.fullwidth == 0">
                   <span class="module-create-title">Фон Модуля</span>
                   <span class="module-create-option">
                       <j-opt-background data-ng-model="module_data.module_background" data-bgcolor="true"></j-opt-background>
                   </span>
               </li>
               <li data-ng-show="module_data.fullwidth == 0">
                   <span class="module-create-title">Желоб<small>Пространство между столбцами</small></span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.module_padding">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
           </ul>
       </accordion-group>
   </accordion>
</div>

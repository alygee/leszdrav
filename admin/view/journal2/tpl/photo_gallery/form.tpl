<div class="sticky">
<div class="module-header">
   <div class='module-name'>Фотогалерея<span data-ng-show="module_id == null">Создание Модуля</span><span data-ng-show="module_id != null">Изменение Модуля</span></div>
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
       <a data-ng-click="toggleAccordion(module_data.images, true)" class="hint--top" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(module_data.images, false)" class="hint--top" data-hint="Свернуть"><i class="collapse-icon"></i></a>
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
                       <input type="text" class="journal-input" data-ng-model="module_data.module_name" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Заголовок</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="module_data.gallery_name"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Элементов в Строке</span>
                   <span class="module-create-option">
                       <j-opt-items-per-row data-ng-model="module_data.items_per_row"></j-opt-items-per-row>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Настройка Границ Изображений</span>
                   <span class="module-create-option">
                       <j-opt-border data-ng-model="module_data.image_border"></j-opt-border>
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
               <li data-ng-show="module_data.carousel == '0'">
                   <span class="module-create-title">Лимит Превью</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-sort" data-ng-model="module_data.thumbs_limit" />
                   </span>
               </li>
               <li data-ng-show="module_data.carousel == '0'">
                   <span class="module-create-title">Размер Превью</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-number-field" data-ng-model="module_data.thumbs_width" /> x<input type="text" class="journal-number-field" data-ng-model="module_data.thumbs_height" />
                       <switch data-ng-model="module_data.thumbs_type">
                           <switch-option key="fit">Вписать</switch-option>
                           <switch-option key="crop">Обрезать</switch-option>
                       </switch>
                   </span>
               </li>
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
           </ul>
       </accordion-group>
       <accordion-group data-ng-repeat="image in module_data.images" is-open="image.is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-1"> {{image.name.value[default_language] || ('Изображение ' + ($index + 1))}}<a href="javascript:;" class="accordion-remove slide-remove" data-ng-click="removeImage($index)"><b ></b>Удалить</a></div>
           </accordion-heading>
           <ul class="module-create-options">

               <li>
                   <span class="module-create-title">Заголовок</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="image.name"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Изображение</span>
                   <span class="module-create-option">
                       <image-select image="image.image"></image-select>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Статус</span>
                   <span class="module-create-option">
                       <switch data-ng-model="image.status">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Порядок</span>
                   <span class="module-create-option">
                       <input type="text" value="" class="journal-input journal-sort" data-ng-model="image.sort_order" />
                   </span>
               </li>
           </ul>
       </accordion-group>
   </accordion>
   <div class="add-level add-level-1" data-ng-click="addImage()">Добавить Изображение +</div>
</div>

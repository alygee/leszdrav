<div class="sticky">
   <div class="module-header">
       <div class='module-name'>Простой Слайдер<span data-ng-show="module_id == null">Создание Модуля</span><span data-ng-show="module_id != null">Изменение Модуля</span></div>
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
       <a data-ng-click="toggleAccordion(module_data.slides, true)" class="hint--top" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(module_data.slides, false)" class="hint--top" data-hint="Свернуть"><i class="collapse-icon"></i></a>
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
                   <span class="module-create-title">Высота Слайдера</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-number-field" data-ng-model="module_data.height" placeholder="Высота" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Тип Перехода</span>
                   <span class="module-create-option">
                       <select ui-select2="" data-ng-model="module_data.transition">
                           <option value="slide">Slide</option>
                           <option value="fade">Fade</option>
                           <option value="backSlide">backSlide</option>
                           <option value="goDown">goDown</option>
                           <option value="fadeUp">fadeUp</option>
                       </select>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Скорость Перехода</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-number-field" data-ng-model="module_data.transition_speed" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Автопрокрутка</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.autoplay">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="module_data.autoplay == '1'">
                   <span class="module-create-title">Пауза при Наведении</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.pause_on_hover">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="module_data.autoplay == '1'">
                   <span class="module-create-title">Задержка Перехода</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-number-field" data-ng-model="module_data.transition_delay" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Отключать на Мобильных</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.hideonmobile">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-hide="module_data.hideonmobile == '1'">
                   <span class="module-create-title">Сенсорное Управление</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.touch_drag">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Предзагрузка Изображений</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.preload_images">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
           </ul>
       </accordion-group>

       <accordion-group is-open="module_data.navigation_is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Настройка Навигации</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Стрелки</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.arrows">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Индикаторы</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.bullets">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Показывать при Наведении</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.show_on_hover">
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
                   <span class="module-create-title">Отступ<small>Верх/Низ</small></span>
                   <span class="module-create-option">
                       <input type="text" class="journal-number-field" data-ng-model="module_data.margin_top" /> x<input type="text" class="journal-number-field" data-ng-model="module_data.margin_bottom" />
                   </span>
               </li>
           </ul>
       </accordion-group>

       <accordion-group data-ng-repeat="slide in module_data.slides" is-open="slide.is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-1">{{slide.slide_name || ('Слайд ' + ($index + 1))}}<a class="accordion-remove slide-remove" data-ng-click="removeSlide($index)"><b ></b>Удалить</a></div>
           </accordion-heading>
           <div class="accordion-content content-level-1">
               <ul class="module-create-options">
                   <li>
                       <span class="module-create-title">Название</span>
                       <span class="module-create-option">
                           <input type="text" class="journal-input" data-ng-model="slide.slide_name" />
                       </span>
                   </li>
                   <li>
                       <span class="module-create-title">Изображение</span>
                       <span class="module-create-option">
                           <image-select-lang image="slide.image"></image-select-lang>
                       </span>
                   </li>
                   <li>
                       <span class="module-create-title">Ссылка</span>
                       <span class="module-create-option">
                           <menu-item data-ng-model="slide.link"></menu-item>
                       </span>
                   </li>
                   <li>
                       <span class="module-create-title">Открыть в Новом Окне</span>
                       <span class="module-create-option">
                           <switch data-ng-model="slide.link_new_window">
                               <switch-option key="1">ВКЛ</switch-option>
                               <switch-option key="0">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   </li>
                   <li>
                       <span class="module-create-title">Статус</span>
                       <span class="module-create-option">
                           <switch data-ng-model="slide.status">
                               <switch-option key="1">ВКЛ</switch-option>
                               <switch-option key="0">ВЫКЛ</switch-option>
                           </switch>
                       </span>
                   </li>
                   <li>
                       <span class="module-create-title">Порядок</span>
                       <span class="module-create-option">
                           <input type="text" class="journal-input journal-sort" data-ng-model="slide.sort_order" />
                       </span>
                   </li>
               </ul>
           </div>
       </accordion-group>
   </accordion>
   <div class="add-level add-level-1" data-ng-click="addSlide()">Добавить Слайд +</div>
</div>
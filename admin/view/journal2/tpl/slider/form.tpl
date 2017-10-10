<div class="sticky">
   <div class="module-header">
       <div class='module-name'>Расширенный Слайдер<span data-ng-show="module_id == null">Создание Модуля</span><span data-ng-show="module_id != null">Изменение Модуля</span></div>
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
                   <span class="module-create-title">Длительность Показа Слайда</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-number-field" data-ng-model="module_data.js_options.delay" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Пауза при Наведении</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.js_options.onHoverStop">
                           <switch-option key="on">ВКЛ</switch-option>
                           <switch-option key="off">ВЫКЛ</switch-option>
                       </switch>
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
               <li data-ng-show="module_data.hideonmobile == '0'">
                   <span class="module-create-title">Отключать Надписи на Мобильных</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.hidecaptionsonmobile">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Таймер</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.timer">
                           <switch-option key="none">Нет</switch-option>
                           <switch-option key="top">Сверху</switch-option>
                           <switch-option key="bottom">Снизу</switch-option>
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
                   <span class="module-create-title">Тип</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.js_options.navigationType">
                           <switch-option key="none">Нет</switch-option>
                           <switch-option key="bullet">Индикаторы</switch-option>
                           <switch-option key="thumb">Изображения</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Показывать при Наведении</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.js_options.hideThumbs">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Расположение Стрелок</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.js_options.navigationArrows">
                           <switch-option key="solo">Сбоку</switch-option>
                           <switch-option key="nexttobullets">Индикаторы</switch-option>
                           <switch-option key="none">Нет</switch-option>
                       </switch>
                   </span>
               </li>

               <li>
                   <span class="module-create-title">Горизонтальное Выравнивание Индикаторов</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.js_options.navigationHAlign">
                           <switch-option key="left">Слева</switch-option>
                           <switch-option key="center">По Центру</switch-option>
                           <switch-option key="right">Справа</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Вертикальное Выравнивание Индикаторов</span>
                   <span class="module-create-option">
                       <switch data-ng-model="module_data.js_options.navigationVAlign">
                           <switch-option key="top">Сверху</switch-option>
                           <switch-option key="center">По Центру</switch-option>
                           <switch-option key="bottom">Снизу</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Горизонтальное <br />Смещение Индикаторов</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-number-field" data-ng-model="module_data.js_options.navigationHOffset" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Вертикальное <br />Смещение Индикаторов</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-number-field" data-ng-model="module_data.js_options.navigationVOffset" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Размер Превью</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-number-field" data-ng-model="module_data.js_options.thumbWidth" placeholder="Ширина" /> x<input type="text" class="journal-number-field" data-ng-model="module_data.js_options.thumbHeight" placeholder="Высота" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Лимит Превью</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-number-field" data-ng-model="module_data.js_options.thumbAmount" />
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
                       <span class="module-create-title">Превью</span>
                       <span class="module-create-option">
                           <image-select-lang image="slide.thumb"></image-select-lang>
                       </span>
                   </li>
                   <li>
                       <span class="module-create-title">Тип Перехода</span>
                       <span class="module-create-option">
                           <select ui-select2="" data-ng-model="slide.transition">
                               <optgroup data-ng-repeat="transition_group in transitions" label="{{transition_group.type}}">
                                   <option data-ng-repeat="tr in transition_group.transitions" value="{{tr.id}}">{{tr.name}}</option>
                               </optgroup>
                           </select>
                       </span>
                   </li>
                   <li>
                       <span class="module-create-title">Плавность</span>
                       <span class="module-create-option">
                           <select ui-select2="" data-ng-model="slide.easing">
                               <option data-ng-repeat="easing in easings" value="{{easing}}">{{easing}}</option>
                           </select>
                       </span>
                   </li>
                   <li>
                       <span class="module-create-title">Лимит Слотов</span>
                       <span class="module-create-option">
                           <input type="text" class="journal-input journal-number-field" data-ng-model="slide.slotamount" />
                       </span>
                   </li>
                   <li>
                       <span class="module-create-title">Скорость Перехода</span>
                       <span class="module-create-option">
                           <input type="text" class="journal-input journal-number-field" data-ng-model="slide.masterspeed" />
                       </span>
                   </li>
                   <li>
                       <span class="module-create-title">Задержка Перехода</span>
                       <span class="module-create-option">
                           <input type="text" class="journal-input journal-number-field" data-ng-model="slide.delay" />
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
           <div class="accordion-bar bar-level-0 bar-expand" >
               <a data-ng-click="toggleAccordion2(slide, true)" class="hint--top hint-fix" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion2(slide, false)" class="hint--top hint-fix" data-hint="Свернуть"><i class="collapse-icon"></i></a>
               <label class="close-others hint--top" data-hint="Закрыть Разделы"><input type="checkbox" data-ng-model="slide.close_others" /></label>
           </div>
           <accordion close-others="slide.close_others">
               <accordion-group data-ng-repeat="caption in slide.captions" is-open="caption.is_open">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-2">{{caption.caption_name || ('Надпись ' + ($index + 1))}}<a class="accordion-remove slide-remove" data-ng-click="removeCaption(slide, $index)"><b ></b>Удалить</a></div>
                   </accordion-heading>
                   <div class="accordion-content content-level-2">
                       <ul class="module-create-options">
                           <li>
                               <span class="module-create-title">Название</span>
                               <span class="module-create-option">
                                   <input type="text" class="journal-input" data-ng-model="caption.caption_name" />
                               </span>
                           </li>
                           <li>
                               <span class="module-create-title">Тип</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="caption.type">
                                       <switch-option key="image">Изображение</switch-option>
                                       <switch-option key="text">Текст</switch-option>
                                       <switch-option key="video">Видео</switch-option>
                                   </switch>
                               </span>
                           </li>
                           <li data-ng-show="caption.type == 'image'">
                               <span class="module-create-title">Изображения</span>
                               <span class="module-create-option">
                                   <image-select-lang image="caption.image"></image-select-lang>
                               </span>
                           </li>
                           <li data-ng-show="caption.type == 'text'">
                               <span class="module-create-title">Текст</span>
                               <span class="module-create-option revo-text">
                                   <j-opt-text-lang data-ng-model="caption.text"></j-opt-text-lang>
                               </span>
                           </li>
                           <li data-ng-show="caption.type == 'video'">
                               <span class="module-create-title">Видео</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="caption.video_type">
                                       <switch-option key="youtube">Youtube</switch-option>
                                       <switch-option key="vimeo">Vimeo</switch-option>
                                       <switch-option key="local">Локальное</switch-option>
                                   </switch>
                               </span>
                           </li>
                           <li data-ng-show="caption.type == 'video' && caption.video_type == 'youtube'">
                               <span class="module-create-title">Youtube Видео ID</span>
                               <span class="module-create-option">
                                   <input type="text" class="journal-input" data-ng-model="caption.video_yt_id" />
                               </span>
                           </li>
                           <li data-ng-show="caption.type == 'video' && caption.video_type == 'vimeo'">
                               <span class="module-create-title">Vimeo Видео ID</span>
                               <span class="module-create-option">
                                   <input type="text" class="journal-input" data-ng-model="caption.video_vm_id" />
                               </span>
                           </li>
                           <li data-ng-show="caption.type == 'video' && caption.video_type == 'local'">
                               <span class="module-create-title">Путь к Видео</span>
                               <span class="module-create-option">
                                   <input type="text" class="journal-input" data-ng-model="caption.video_path" />
                               </span>
                           </li>
                           <li data-ng-show="caption.type == 'video'">
                               <span class="module-create-title">Полноразмерное Видео</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="caption.video_fullwidth">
                                       <switch-option key="1">ВКЛ</switch-option>
                                       <switch-option key="0">ВЫКЛ</switch-option>
                                   </switch>
                               </span>
                           </li>
                           <li data-ng-show="caption.type == 'video' && caption.video_fullwidth == '0'">
                               <span class="module-create-title">Размер Видео</span>
                               <span class="module-create-option">
                                   <input type="text" class="journal-number-field" data-ng-model="caption.video_width" placeholder="Ширина" /> x<input type="text" class="journal-number-field" data-ng-model="caption.video_height" placeholder="Высота" />
                               </span>
                           </li>
                           <li data-ng-show="caption.type == 'video'">
                               <span class="module-create-title">Автозапуск</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="caption.video_autoplay">
                                       <switch-option key="1">ВКЛ</switch-option>
                                       <switch-option key="0">ВЫКЛ</switch-option>
                                   </switch>
                               </span>
                           </li>
                           <li data-ng-show="caption.type == 'video' && caption.video_autoplay == '1'">
                               <span class="module-create-title">Автозапуск Один Раз</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="caption.video_autoplayonlyfirsttime">
                                       <switch-option key="1">ВКЛ</switch-option>
                                       <switch-option key="0">ВЫКЛ</switch-option>
                                   </switch>
                               </span>
                           </li>
                           <li data-ng-show="caption.type == 'video' && caption.video_autoplay == '1'">
                               <span class="module-create-title">Следующий Слайд в Конце Видео</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="caption.video_nextslideatend">
                                       <switch-option key="1">ВКЛ</switch-option>
                                       <switch-option key="0">ВЫКЛ</switch-option>
                                   </switch>
                               </span>
                           </li>
                           <li data-ng-show="caption.type == 'video'">
                               <span class="module-create-title">Без Звука</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="caption.video_volume">
                                       <switch-option key="0">ВКЛ</switch-option>
                                       <switch-option key="1">ВЫКЛ</switch-option>
                                   </switch>
                               </span>
                           </li>
                           <li data-ng-show="caption.type == 'text'">
                               <span class="module-create-title">Шрифт</span>
                               <span class="module-create-option">
                                   <j-opt-font data-ng-model="caption.text_font"></j-opt-font>
                               </span>
                           </li>
                           <li data-ng-show="caption.type == 'text'">
                               <span class="module-create-title">Выравнивание</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="caption.text_align">
                                       <switch-option key="left">Слева</switch-option>
                                       <switch-option key="center">По Центру</switch-option>
                                       <switch-option key="right">Справа</switch-option>
                                   </switch>
                               </span>
                           </li>
                           <li data-ng-show="caption.type == 'text'">
                               <span class="module-create-title">Цвет Фона</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="caption.text_bgcolor"></j-opt-color>
                               </span>
                           </li>
                           <li data-ng-show="caption.type == 'text'">
                               <span class="module-create-title">Цвет Шрифта <br />при Наведении</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="caption.text_hover_color"></j-opt-color>
                               </span>
                           </li>
                           <li data-ng-show="caption.type == 'text'">
                               <span class="module-create-title">Цвет Фона <br />при Наведении</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="caption.text_hover_bg_color"></j-opt-color>
                               </span>
                           </li>
                           <li data-ng-show="caption.type == 'text'">
                               <span class="module-create-title">Настройка Границ Текста</span>
                               <span class="module-create-option">
                                   <j-opt-border data-ng-model="caption.text_border"></j-opt-border>
                               </span>
                           </li>
                           <li data-ng-show="caption.type == 'text'">
                               <span class="module-create-title">Цвет Границ <br />при Наведении</span>
                               <span class="module-create-option">
                                   <j-opt-color data-ng-model="caption.text_hover_border_color"></j-opt-color>
                               </span>
                           </li>
                           <li data-ng-show="caption.type == 'text'">
                               <span class="module-create-title">Поля Текста<small>Верх-Право-Низ-Лево</small></span>
                               <span class="module-create-option">
                                   <input type="text" class="journal-input journal-sort" data-ng-model="caption.text_padding_top" /> -
                                   <input type="text" class="journal-input journal-sort" data-ng-model="caption.text_padding_right" /> -
                                   <input type="text" class="journal-input journal-sort" data-ng-model="caption.text_padding_bottom" /> -
                                   <input type="text" class="journal-input journal-sort" data-ng-model="caption.text_padding_left" />
                               </span>
                           </li>
                           <li data-ng-show="caption.type == 'text'">
                               <span class="module-create-title">Высота Строки</span>
                               <span class="module-create-option">
                                   <input type="text" class="journal-input journal-number-field" data-ng-model="caption.text_line_height" />
                               </span>
                           </li>
                           <li>
                               <span class="module-create-title">Позиция по Горизонтали</span>
                               <span class="module-create-option">
                                   <input type="text" class="journal-input journal-number-field" data-ng-model="caption.x" />
                               </span>
                           </li>
                           <li>
                               <span class="module-create-title">Позиция по Вертикали</span>
                               <span class="module-create-option">
                                   <input type="text" class="journal-input journal-number-field" data-ng-model="caption.y" />
                               </span>
                           </li>

                           <li data-ng-show="caption.type !== 'video'">
                               <span class="module-create-title">Ссылка</span>
                               <span class="module-create-option">
                                   <menu-item data-ng-model="caption.link"></menu-item>
                               </span>
                           </li>
                           <li data-ng-show="caption.type !== 'video'">
                               <span class="module-create-title">Открыть в Новом Окне</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="caption.link_new_window">
                                       <switch-option key="1">ВКЛ</switch-option>
                                       <switch-option key="0">ВЫКЛ</switch-option>
                                   </switch>
                               </span>
                           </li>
                           <li>
                               <span class="module-create-title">Статус</span>
                               <span class="module-create-option">
                                   <switch data-ng-model="caption.status">
                                       <switch-option key="1">ВКЛ</switch-option>
                                       <switch-option key="0">ВЫКЛ</switch-option>
                                   </switch>
                               </span>
                           </li>
                           <li>
                               <span class="module-create-title">Порядок</span>
                               <span class="module-create-option">
                                   <input type="text" class="journal-input journal-sort" data-ng-model="caption.sort_order" />
                               </span>
                           </li>
                       </ul>
                   </div>
                   <accordion>
                       <accordion-group is-open="caption.animations_is_open">
                           <accordion-heading>
                               <div class="accordion-bar bar-level-0">Анимация Надписи</div>
                           </accordion-heading>
                           <ul class="module-create-options">
                               <li>
                                   <span class="module-create-title">Начало Анимации</span>
                               <span class="module-create-option">
                                   <select ui-select2="" data-ng-model="caption.animation_in">
                                       <option data-ng-repeat="a in incoming_caption_animations" value="{{a.id}}">{{a.name}}</option>
                                   </select>
                               </span>
                               </li>
                               <li data-ng-show="caption.animation_in == 'customin'">
                                   <span class="module-create-title">Переход</span>
                               <span class="module-create-option">
                                    X:<input type="text" class="journal-input journal-number-field" data-ng-model="caption.custom_in_transition_x" />
                                    Y:<input type="text" class="journal-input journal-number-field" data-ng-model="caption.custom_in_transition_y" />
                               </span>
                               </li>
                               <li data-ng-show="caption.animation_in == 'customin'">
                                   <span class="module-create-title">Масштаб</span>
                                   <span class="module-create-option">
                                        X:<input type="text" class="journal-input journal-number-field" data-ng-model="caption.custom_in_scale_x" />
                                        Y:<input type="text" class="journal-input journal-number-field" data-ng-model="caption.custom_in_scale_y" />
                                   </span>
                               </li>
                               <li data-ng-show="caption.animation_in == 'customin'">
                                   <span class="module-create-title">Вращение</span>
                               <span class="module-create-option">
                                    X:<input type="text" class="journal-input journal-number-field" data-ng-model="caption.custom_in_rotation_x" />
                                    Y:<input type="text" class="journal-input journal-number-field" data-ng-model="caption.custom_in_rotation_y" />
                                    Z:<input type="text" class="journal-input journal-number-field" data-ng-model="caption.custom_in_rotation_z" />
                               </span>
                               </li>
                               <li data-ng-show="caption.animation_in == 'customin'">
                                   <span class="module-create-title">Горизонтальная Трансформация</span>
                                       <span class="module-create-option">
                                           <switch data-ng-model="caption.transformOriginXin">
                                               <switch-option key="top">Сверху</switch-option>
                                               <switch-option key="center">По Центру</switch-option>
                                               <switch-option key="bottom">Снизу</switch-option>
                                           </switch>
                                       </span>
                               </li>
                               <li data-ng-show="caption.animation_in == 'customin'">
                                   <span class="module-create-title">Вертикальная Трансформация</span>
                                       <span class="module-create-option">
                                           <switch data-ng-model="caption.transformOriginYin">
                                               <switch-option key="left">Слева</switch-option>
                                               <switch-option key="center">По Центру</switch-option>
                                               <switch-option key="right">Справа</switch-option>
                                           </switch>
                                       </span>
                               </li>
                               <li data-ng-show="caption.animation_in == 'customin'">
                                   <span class="module-create-title">Перспектива Трансформации</span>
                                       <span class="module-create-option">
                                           <input type="text" class="journal-input journal-number-field" data-ng-model="caption.custom_in_transform_perspective" />
                                       </span>
                               </li>
                               <li data-ng-show="caption.animation_in == 'customin'">
                                   <span class="module-create-title">Затухание</span>
                                       <span class="module-create-option">
                                           <switch data-ng-model="caption.custom_in_opacity">
                                               <switch-option key="1">ВКЛ</switch-option>
                                               <switch-option key="0">ВЫКЛ</switch-option>
                                           </switch>
                                       </span>
                               </li>
                               <li>
                                   <span class="module-create-title">Плавность в Начале</span>
                                       <span class="module-create-option">
                                           <select ui-select2="" data-ng-model="caption.easing">
                                               <option data-ng-repeat="easing in easings" value="{{easing}}">{{easing}}</option>
                                           </select>
                                       </span>
                               </li>
                               <li>
                                   <span class="module-create-title">Скорость в Начале</span>
                               <span class="module-create-option">
                                   <input type="text" class="journal-input journal-number-field" data-ng-model="caption.speed" />
                               </span>
                               </li>
                               <li>
                                   <span class="module-create-title">Задержка в Начале</span>
                               <span class="module-create-option">
                                   <input type="text" class="journal-input journal-number-field" data-ng-model="caption.start" />
                               </span>
                               </li>
                               <li>
                                   <span class="module-create-title">Конец Анимации</span>
                               <span class="module-create-option">
                                   <select ui-select2="" data-ng-model="caption.animation_out">
                                       <option data-ng-repeat="a in outgoing_caption_animations" value="{{a.id}}">{{a.name}}</option>
                                   </select>
                               </span>
                               </li>
                               <li data-ng-show="caption.animation_out == 'customout'">
                                   <span class="module-create-title">Переход</span>
                               <span class="module-create-option">
                                    X:<input type="text" class="journal-input journal-number-field" data-ng-model="caption.custom_out_transition_x" />
                                    Y:<input type="text" class="journal-input journal-number-field" data-ng-model="caption.custom_out_transition_y" />
                               </span>
                               </li>
                               <li data-ng-show="caption.animation_out == 'customout'">
                                   <span class="module-create-title">Масштаб</span>
                               <span class="module-create-option">
                                    X:<input type="text" class="journal-input journal-number-field" data-ng-model="caption.custom_out_scale_x" />
                                    Y:<input type="text" class="journal-input journal-number-field" data-ng-model="caption.custom_out_scale_y" />
                               </span>
                               </li>
                               <li data-ng-show="caption.animation_out == 'customout'">
                                   <span class="module-create-title">Вращение</span>
                               <span class="module-create-option">
                                    X:<input type="text" class="journal-input journal-number-field" data-ng-model="caption.custom_out_rotation_x" />
                                    Y:<input type="text" class="journal-input journal-number-field" data-ng-model="caption.custom_out_rotation_y" />
                                    Z:<input type="text" class="journal-input journal-number-field" data-ng-model="caption.custom_out_rotation_z" />
                               </span>
                               </li>
                               <li data-ng-show="caption.animation_out == 'customout'">
                                   <span class="module-create-title">Горизонтальная Трансформация</span>
                                       <span class="module-create-option">
                                           <switch data-ng-model="caption.transformOriginXout">
                                               <switch-option key="top">Сверху</switch-option>
                                               <switch-option key="center">По Центру</switch-option>
                                               <switch-option key="bottom">Снизу</switch-option>
                                           </switch>
                                       </span>
                               </li>
                               <li data-ng-show="caption.animation_out == 'customout'">
                                   <span class="module-create-title">Вертикальная Трансформация</span>
                                       <span class="module-create-option">
                                           <switch data-ng-model="caption.transformOriginYout">
                                               <switch-option key="left">Слева</switch-option>
                                               <switch-option key="center">По Центру</switch-option>
                                               <switch-option key="right">Справа</switch-option>
                                           </switch>
                                       </span>
                               </li>
                               <li data-ng-show="caption.animation_out == 'customout'">
                                   <span class="module-create-title">Перспектива Трансформации</span>
                                       <span class="module-create-option">
                                           <input type="text" class="journal-input journal-number-field" data-ng-model="caption.custom_out_transform_perspective" />
                                       </span>
                               </li>
                               <li data-ng-show="caption.animation_out == 'customout'">
                                   <span class="module-create-title">Затухание</span>
                                       <span class="module-create-option">
                                           <switch data-ng-model="caption.custom_out_opacity">
                                               <switch-option key="1">ВКЛ</switch-option>
                                               <switch-option key="0">ВЫКЛ</switch-option>
                                           </switch>
                                       </span>
                               </li>

                               <li>
                                   <span class="module-create-title">Плавность в Конце</span>
                                       <span class="module-create-option">
                                           <select ui-select2="" data-ng-model="caption.endeasing">
                                               <option data-ng-repeat="easing in easings" value="{{easing}}">{{easing}}</option>
                                           </select>
                                       </span>
                               </li>
                               <li>
                                   <span class="module-create-title">Скорость в Конце</span>
                               <span class="module-create-option">
                                   <input type="text" class="journal-input journal-number-field" data-ng-model="caption.endspeed" />
                               </span>
                               </li>
                               <li>
                                   <span class="module-create-title">Задержка в Конце</span>
                               <span class="module-create-option">
                                   <input type="text" class="journal-input journal-number-field" data-ng-model="caption.end" />
                               </span>
                               </li>
                           </ul>
                       </accordion-group>
                   </accordion>
               </accordion-group>
           </accordion>
           <div class="add-level add-level-2" data-ng-click="addCaption(slide)">Добавить Надпись +</div>
       </accordion-group>
   </accordion>
   <div class="add-level add-level-1" data-ng-click="addSlide()">Добавить Слайд +</div>
</div>
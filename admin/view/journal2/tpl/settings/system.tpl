<div class="sticky">
<div class="module-header">
   <div class='module-name'>Настройки<span>Система и Производительность</span></div>

   <div class="module-buttons">
       <a class="btn green" data-ng-click="save($event)">Сохранить</a>
       <a class="btn red" data-ng-click="clearCache($event)">Очистить Кеш</a>
   </div>
</div>
</div>
<div class="module-body">
   <div class="accordion-bar bar-level-0 bar-expand" >
   </div>
   <accordion close-others="false">
       <accordion-group is-open="true">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Основное</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Кеширование Системы</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.developer_mode">
                           <switch-option key="0">ВКЛ</switch-option>
                           <switch-option key="1">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>

       <accordion-group is-open="true" data-ng-show="settings.developer_mode == 0">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Сжатие</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Сжатие HTML</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.minify_html">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Сжатие CSS</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.minify_css">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Сжатие JS</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.minify_js">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>

       <?php if (defined('J2ENV')): ?>
       <accordion-group is-open="true" data-ng-show="settings.developer_mode == 0">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Изображения</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Статус</span>
                   <span class="module-create-option">
                       <span class="progress">
                           <span class="progress-text">{{cachingStatus.optimised}} из {{cachingStatus.total}} изображений оптимизированно ({{cachingStatus.percent}}%)</span>
                           <span class="progress-bar" data-ng-style="{ width: cachingStatus.percent + '%'}"></span>
                       </span>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Действия</span>
                   <span class="module-create-option">
                       <a class="btn blue" data-ng-class="{ disabled: imageOptimisationInProgress }" data-ng-click="startImageOptimisation()">Оптимизация</a>
                       <a class="btn blue" data-ng-class="{ disabled: imageOptimisationInProgress }" data-ng-click="startImageOptimisation(true)">Оптимизировать Все</a>
                       <a class="btn red" data-ng-class="{ disabled: !imageOptimisationInProgress }" data-ng-click="stopImageOptimisation()">Стоп</a>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
       <?php endif; ?>

       <accordion-group is-open="true" data-ng-show="settings.developer_mode == 0">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">
                    Кеширование Модулей
                   <a class="toggle-modules accordion-remove" data-ng-click="toggle_modules($event, 0)">Выключить Все</a>
                   <a class="toggle-modules accordion-remove" data-ng-click="toggle_modules($event, 1)">Включить Все</a>
               </div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Простой Слайдер</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.simple_slider_cache">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Расширенный Слайдер</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.slider_cache">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Баннеры</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.static_banners_cache">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Карусель</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.carousel_cache">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настраиваемые Разделы</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.custom_sections_cache">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">CMS Блоки</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.cms_blocks_cache">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Колонка Категорий</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.side_category_cache">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Ротатор Текстов</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.text_rotator_cache">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Ротатор Заголовков</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.headline_rotator_cache">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Фотогалерея</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.photo_gallery_cache">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Настраиваемые Блоки</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.side_blocks_cache">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Полноэкранный Слайдер</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.fullscreen_slider_cache">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Расширенная Сетка</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.advanced_grid_cache">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Сетка Карусели</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.carousel_grid_cache">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Колонка Продуктов</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.side_products_cache">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>

       <accordion-group is-open="true">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Индексирование Базы Данных</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li data-ng-show="table_columns === null">
                   <span class="module-create-title">Действия</span>
                   <span class="module-create-option">
                       <a class="btn blue" data-ng-click="getDatabaseIndexStatus($event)">Проверить Индексы</a>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="table_columns !== null">
                   <span class="module-create-title">Не Проиндексированные Колонки</span>
                   <span class="module-create-option">
                        {{table_columns.length == 0 ? 'Все Колонки Проиндексированы.' : ''}}
                       <ul>
                           <li data-ng-repeat="column in table_columns" data-ng-class="{indexed: column.index}">{{column.column + (column.status ? ' - ' + column.status : '')}}</li>
                       </ul>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li data-ng-show="table_columns !== null && table_columns.length > 0">
                   <span class="module-create-title">Действия</span>
                   <span class="module-create-option">
                       <a class="btn blue" data-ng-click="addDatabaseIndexes($event)">Проиндексировать</a>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
   </accordion>
</div>

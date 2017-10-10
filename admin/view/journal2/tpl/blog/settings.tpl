<div class="sticky">
   <div class="module-header">
       <div class='module-name'>Блог<span>Настройки</span></div>

       <store-picker data-url="blog/settings"></store-picker>

       <div class="module-buttons">
           <a class="btn green" data-ng-click="save($event)">Сохранить</a>
       </div>
   </div>
</div>
<div class="module-body">
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
                   <span class="module-create-title">Статус Блога</span>
                   <span class="module-create-option">
                       <switch data-ng-model="blog_settings.status">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="blog_settings.status == 1">
                   <span class="module-create-title">Статус Ленты Новостей</span>
                   <span class="module-create-option">
                       <switch data-ng-model="blog_settings.feed">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="blog_settings.status == 1">
                   <span class="module-create-title">Заголовок Страницы Блога</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="blog_settings.title"></j-opt-text-lang>
                   </span>
               </li>
               <li data-ng-show="blog_settings.status == 1">
                   <span class="module-create-title">ЧПУ Ссылка Блога</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="blog_settings.keyword"></j-opt-text-lang>
                   </span>
               </li>
               <li data-ng-show="blog_settings.status == 1">
                   <span class="module-create-title">Имя Автора</span>
                   <span class="module-create-option">
                       <switch data-ng-model="blog_settings.author_name">
                           <switch-option key="username">Пользователь</switch-option>
                           <switch-option key="firstname">Только Имя</switch-option>
                           <switch-option key="full">Имя и Фамилия</switch-option>
                       </switch>
                   </span>
               </li>
           </ul>
       </accordion-group>

       <accordion-group is-open="accordion.accordions[1]" data-ng-show="blog_settings.status == 1">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Отображение Статей</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Тип Отображения</span>
                   <span class="module-create-option">
                       <switch data-ng-model="blog_settings.posts_display">
                           <switch-option key="grid">Сетка</switch-option>
                           <switch-option key="list">Список</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Сортировка Статей</span>
                   <span class="module-create-option">
                       <switch data-ng-model="blog_settings.posts_sort">
                           <switch-option key="newest">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Последние&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                           <switch-option key="comments">Комментируемые</switch-option>
                           <switch-option key="views">Просматриваемые</switch-option>
                           <switch-option key="related">&nbsp;&nbsp;&nbsp;&nbsp;Связанные&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Статей на Страницу</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-number-field" data-ng-model="blog_settings.posts_limit" />
                   </span>
               </li>
               <li data-ng-show="blog_settings.status == 1 && blog_settings.posts_display == 'grid'">
                   <span class="module-create-title">Статей в Строке</span>
                   <span class="module-create-option">
                       <j-opt-items-per-row data-range="1,10" data-step="1" data-ng-model="blog_settings.posts_per_row"></j-opt-items-per-row>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Размер Изображения Статьи</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-number-field" data-ng-model="blog_settings.posts_image_width" placeholder="Ширина" /> x<input type="text" class="journal-number-field" data-ng-model="blog_settings.posts_image_height" placeholder="Высота" />
                       <switch data-ng-model="blog_settings.posts_image_type">
                           <switch-option key="fit">Вписать</switch-option>
                           <switch-option key="crop">Обрезать</switch-option>
                       </switch>
                   </span>
               </li>

               <li>
                   <span class="module-create-title">Лимит Символов в Описании</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input journal-number-field" data-ng-model="blog_settings.description_char_limit" />
                   </span>
               </li>
           </ul>
       </accordion-group>

       <accordion-group is-open="accordion.accordions[2]" data-ng-show="blog_settings.status == 1">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Страница Статьи</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Кнопки Поделиться</span>
                   <span class="module-create-option">
                       <switch data-ng-model="blog_settings.share_this">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Комментарии</span>
                   <span class="module-create-option">
                       <switch data-ng-model="blog_settings.comments">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="blog_settings.status == 1 && blog_settings.comments == 1">
                   <span class="module-create-title">Автоутверждение Комментариев</span>
                   <span class="module-create-option">
                       <switch data-ng-model="blog_settings.auto_approve_comments">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
           </ul>
           <accordion>
               <accordion-group is-open="false">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-1">Связанные Продукты</div>
                   </accordion-heading>
                   <ul class="module-create-options">
                       <li>
                           <span class="module-create-title">Продуктов в Строке</span>
                           <span class="module-create-option">
                               <j-opt-items-per-row data-range="1,10" data-step="1" data-ng-model="blog_settings.related_products_per_row"></j-opt-items-per-row>
                           </span>
                       </li>
                       <li>
                           <span class="module-create-title">Карусель Продуктов</span>
                           <span class="module-create-option">
                               <switch data-ng-model="blog_settings.related_products_carousel">
                                   <switch-option key="1">ВКЛ</switch-option>
                                   <switch-option key="0">ВЫКЛ</switch-option>
                               </switch>
                           </span>
                       </li>
                   </ul>
               </accordion-group>
           </accordion>
       </accordion-group>
       <accordion-group is-open="accordion.accordions[3]" data-ng-show="blog_settings.status == 1">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Мета Данные Блога</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Мета-тег Title</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="blog_settings.meta_title"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Мета-тег Keywords</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="blog_settings.meta_keywords"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Мета-тег Description</span>
                   <span class="module-create-option">
                       <j-opt-textarea-lang data-ng-model="blog_settings.meta_description"></j-opt-textarea-lang>
                   </span>
               </li>
           </ul>
       </accordion-group>
   </accordion>
</div>
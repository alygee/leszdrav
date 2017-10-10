<div class="sticky">
   <div class="module-header">
       <div class='module-name'>Настройки<span>Язык Блога</span></div>

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

       <!--LANGUAGE-->
       <accordion-group is-open="accordion.accordions[4]">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Язык</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Кнопка "Читать Далее"</span>
                       <span class="module-create-option">
                           <j-opt-text-lang data-ng-model="settings.blog_button_read_more"></j-opt-text-lang>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Опубликовал</span>
                       <span class="module-create-option">
                           <j-opt-text-lang data-ng-model="settings.blog_posted_by_text"></j-opt-text-lang>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Комментарий(ев)</span>
                       <span class="module-create-option">
                           <j-opt-text-lang data-ng-model="settings.blog_comment_text"></j-opt-text-lang>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>

               <li>
                   <span class="module-create-title">Кнопка "Ответ"</span>
                       <span class="module-create-option">
                           <j-opt-text-lang data-ng-model="settings.blog_reply_button"></j-opt-text-lang>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Текст <br />"Оставить Ответ"</span>
                       <span class="module-create-option">
                           <j-opt-text-lang data-ng-model="settings.blog_leave_reply_text"></j-opt-text-lang>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Текст <br />"Оставить Комментарий"</span>
                       <span class="module-create-option">
                           <j-opt-text-lang data-ng-model="settings.blog_leave_comment_text"></j-opt-text-lang>
                       </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
           <accordion close-others="accordion.close_others">
               <accordion-group is-open="accordion.accordions[11]">
                   <accordion-heading>
                       <div class="accordion-bar bar-level-1">Форма Комментария</div>
                   </accordion-heading>
                   <ul class="module-create-options">
                       <li>
                           <span class="module-create-title">Имя</span>
                           <span class="module-create-option">
                               <j-opt-text-lang data-ng-model="settings.blog_form_name"></j-opt-text-lang>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Email</span>
                           <span class="module-create-option">
                               <j-opt-text-lang data-ng-model="settings.blog_form_email"></j-opt-text-lang>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Сайт</span>
                           <span class="module-create-option">
                               <j-opt-text-lang data-ng-model="settings.blog_form_website"></j-opt-text-lang>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Комментарий</span>
                           <span class="module-create-option">
                               <j-opt-text-lang data-ng-model="settings.blog_form_comment"></j-opt-text-lang>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Кнопка "Отправить"</span>
                           <span class="module-create-option">
                               <j-opt-text-lang data-ng-model="settings.blog_form_submit"></j-opt-text-lang>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Текст <br />"Отправлено"</span>
                           <span class="module-create-option">
                               <j-opt-text-lang data-ng-model="settings.blog_form_comment_submitted"></j-opt-text-lang>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                       <li>
                           <span class="module-create-title">Текст <br />"Ожидает Модерации"</span>
                           <span class="module-create-option">
                               <j-opt-text-lang data-ng-model="settings.blog_form_comment_awaiting_approval"></j-opt-text-lang>
                           </span>
                           <a href="#" target="_blank" class="journal-tip"></a>
                       </li>
                   </ul>
               </accordion-group>
           </accordion>
       </accordion-group>
   </accordion>
</div>
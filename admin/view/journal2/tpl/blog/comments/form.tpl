<div class="sticky">
<div class="module-header">
   <div class='module-name'>Комментарии<span data-ng-show="comment_id == null">Создание Комментария</span><span data-ng-show="comment_id != null">Изменение Комментария</span></div>
   <div class="module-buttons">
       <a href="<?php echo $base_href;?>#/blog/comments" class="btn blue">Назад</a>
       <a data-ng-click="save($event)" class="btn green">Сохранить</a>
       <a data-ng-click="delete($event)" data-ng-show="comment_id != null" class="btn red">Удалить</a>
   </div>
</div>
</div>
<div class="module-body module-form">
   <div class="accordion-bar bar-level-0 bar-expand" >
       <a data-ng-click="toggleAccordion(true)" class="hint--top" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(false)" class="hint--top" data-hint="Свернуть"><i class="collapse-icon"></i></a>
       <label class="close-others hint--top" data-hint="Закрыть Разделы"><input type="checkbox" data-ng-model="accordion.close_others" /></label>
   </div>
   <accordion id="main-accordion" close-others="accordion.close_others">
       <accordion-group is-open="accordion.general_is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Основное</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Автор</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input" data-ng-model="comment_data.name" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Сайт</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input" data-ng-model="comment_data.website" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Email</span>
                   <span class="module-create-option">
                       <input type="text" class="journal-input" data-ng-model="comment_data.email" />
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Комментарий</span>
                   <span class="module-create-option comment-field">
                       <j-opt-textarea data-ng-model="comment_data.comment"></j-opt-textarea>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Статус</span>
                   <span class="module-create-option">
                       <switch data-ng-model="comment_data.status">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
           </ul>
       </accordion-group>
   </accordion>
</div>
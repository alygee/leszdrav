<div class="sticky">
<div class="module-header">
   <div class='module-name'>Колонка Статей<span data-ng-show="module_id == null">Создание Модуля</span><span data-ng-show="module_id != null">Изменение Модуля</span></div>
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
                           <switch-option key="custom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Своё&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</switch-option>
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
           </ul>
       </accordion-group>
   </accordion>
</div>

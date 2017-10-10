<div class="sticky">
<div class="module-header">
   <div class='module-name'>Шапка<span>Дополнительное Меню</span></div>

   <store-picker data-url="menus/secondary"></store-picker>

   <div class="module-buttons">
       <a class="btn green" data-ng-click="save($event)">Сохранить</a>
       <a class="btn red" data-ng-click="reset()">Сброс</a>
   </div>
</div>
</div>

<div class="module-body" data-ng-hide="isLoading">
   <div class="accordion-bar bar-level-0 bar-expand" >
       <a data-ng-click="toggleAccordion(items, true)" class="hint--top" data-hint="Развернуть"><i class="expand-icon"></i></a> <a data-ng-click="toggleAccordion(items, false)" class="hint--top" data-hint="Свернуть"><i class="collapse-icon"></i></a>
       <label class="close-others hint--top" data-hint="Закрыть Разделы"><input type="checkbox" data-ng-model="close_others" /></label>
   </div>
   <accordion close-others="close_others">
       <accordion-group data-ng-repeat="item in items" is-open="item.is_open">
           <accordion-heading>
               <div class="accordion-bar bar-level-0"> {{getItemName(item)}}<a href="javascript:;" class="accordion-remove slide-remove" data-ng-click="removeItem($index)"><b></b>Удалить</a></div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Иконка</span>
                   <span class="module-create-option">
                       <icon-select data-ng-model="item.icon"></icon-select>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Позиция Иконки</span>
                   <span class="module-create-option">
                       <switch data-ng-model="item.icon_position">
                           <switch-option key="left">Слева</switch-option>
                           <switch-option key="right">Справа</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Отключать на Мобильных</span>
                   <span class="module-create-option">
                       <switch data-ng-model="item.hide_on_mobile">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-hide="item.hide_on_mobile == 1">
                   <span class="module-create-title">Отображение на Мобильных</span>
                   <span class="module-create-option">
                       <switch data-ng-model="item.mobile_view">
                           <switch-option key="text">Текст</switch-option>
                           <switch-option key="icon">Иконка</switch-option>
                           <switch-option key="both">Оба</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Ссылка</span>
                   <span class="module-create-option">
                       <menu-item data-ng-model="item.menu"></menu-item>
                   </span>
               </li>
               <li data-ng-hide="item.menu.menu_type === 'custom'">
                   <span class="module-create-title">Своё Название</span>
                   <span class="module-create-option">
                       <switch data-ng-model="item.name_overwrite">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li data-ng-show="item.name_overwrite === '1' || item.menu.menu_type === 'custom'">
                   <span class="module-create-title">Название</span>
                   <span class="module-create-option">
                       <j-opt-text-lang data-ng-model="item.name"></j-opt-text-lang>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Открыть в Новом Окне</span>
                   <span class="module-create-option">
                       <switch data-ng-model="item.target">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
               </li>
               <li>
                   <span class="module-create-title">Порядок</span>
                   <span class="module-create-option">
                       <input type="text" data-ng-model="item.sort_order" class="journal-input journal-sort" />
                   </span>
               </li>
           </ul>
       </accordion-group>
   </accordion>
   <div class="add-level add-level-1" data-ng-click="addItem()">Добавить Элемент +</div>
</div>

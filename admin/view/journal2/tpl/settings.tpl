<div class="sticky">
<div class="module-header">
   <div class='module-name'>Настройки<span>Шапка</span></div>

   <div class="active-skin">
       <span>Активный Скин:</span>
       <select name="layout" class="journal-select">
           <option value="Account">Аккаунт</option>
           <option value="Contact">Контакт</option>
           <option value="Category">Категория</option>
           <option value="Home">Главная</option>
           <option value="Product">Продукт</option>
       </select>
       <a href="">Менеджер Скинов</a>
   </div>

   <div class="module-buttons">
       <a href="javascript:;" class="btn green" data-ng-click="save()">Сохранить</a>
   </div>
</div>
</div>

<div class="module-body module-form">
   <div class="accordion-bar bar-level-0 bar-expand" >
       <a data-ng-click="toggleAccordion(items, true)">Развернуть</a> /<a data-ng-click="toggleAccordion(items, false)">Свернуть</a>
   </div>
   <accordion close-others="false">
       <accordion-group data-ng-repeat="(k, v) in settings" is-open="true" ng-if="hasSubcategs">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">{{k}}</div>
           </accordion-heading>
           <j-options data-ng-model="v"></j-options>
       </accordion-group>

       <accordion-group is-open="true" ng-if="!hasSubcategs">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Основное</div>
           </accordion-heading>
           <j-options data-ng-model="settings"></j-options>
       </accordion-group>
   </accordion>
</div>
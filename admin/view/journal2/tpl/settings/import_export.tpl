<div class="sticky">
<div class="module-header">
   <div class='module-name'>Настройки<span>Импорт / Экспорт</span></div>

   <div class="module-buttons">

   </div>
</div>
</div>
<div class="module-body">
   <div class="accordion-bar bar-level-0 bar-expand" >
   </div>
   <accordion close-others="false">
       <accordion-group is-open="true">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Экспорт</div>
           </accordion-heading>
           <ul class="module-create-options">
               <li>
                   <span class="module-create-title">Версия OpenCart</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.opencart_version">
                           <switch-option key="1">1.5.x</switch-option>
                           <switch-option key="2">2.x</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Данные Магазина<small>Категории, Продукты, Бренды и т.п.</small></span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.include_store_data">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Макеты Изображений</span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.add_dummy_images">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Данные Блога<small>Категории, Статьи, Комментарии и т.п.</small></span>
                   <span class="module-create-option">
                       <switch data-ng-model="settings.include_blog_data">
                           <switch-option key="1">ВКЛ</switch-option>
                           <switch-option key="0">ВЫКЛ</switch-option>
                       </switch>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
               <li>
                   <span class="module-create-title">Действие</span>
                   <span class="module-create-option">
                       <a class="btn blue" data-ng-click="confirmation($event)" href="<?php echo $export_href;?>">Экспорт</a>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
       <accordion-group is-open="true">
           <accordion-heading>
               <div class="accordion-bar bar-level-0">Импорт</div>
           </accordion-heading>
           <ul class="module-create-options">
               <!--<li>-->
                   <!--<span class="module-create-title">Choose File</span>-->
                   <!--<span class="module-create-option">-->
                       <!--<input type="file" />-->
                   <!--</span>-->
                   <!--<a href="#" target="_blank" class="journal-tip"></a>-->
               <!--</li>-->
               <li>
                   <span class="module-create-title">Действие</span>
                   <span class="module-create-option">
                       <a class="btn blue" href="<?php echo $import_href; ?>">Импорт</a>
                   </span>
                   <a href="#" target="_blank" class="journal-tip"></a>
               </li>
           </ul>
       </accordion-group>
   </accordion>
</div>

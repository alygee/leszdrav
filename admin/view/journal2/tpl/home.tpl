<div class="sticky">
   <div class="module-header">
       <div class='module-name'>Панель Управления<span>Добро пожаловать</span></div>
      
   </div>
</div>
<div class="module-body admin-home">
  
<accordion close-others="false">
    <accordion-group is-open="true">
        <accordion-heading>
            <div class="accordion-bar bar-level-0">Недавно открытые старины</div>
        </accordion-heading>
        <ul>
            <li data-ng-repeat="link in history track by $index"><a href="<?php echo $base_href;?>#{{link}}">{{link|linkName}}</a></li>
        </ul>
    </accordion-group>
</accordion>
</div>
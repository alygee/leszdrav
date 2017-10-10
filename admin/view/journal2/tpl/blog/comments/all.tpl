<div class="module-header">
   <div class='module-name'>Комментарии<span>Список Комментариев</span></div>
   <div class="store-picker">
       <span class="comments-header">
           Статьи:
           <select ui-select2="{minimumResultsForSearch: -1}" data-ng-model="filter_post_id" data-ng-change="filter()">
               <option value="-1">Все</option>
               <option data-ng-repeat="post in posts" value="{{post.post_id}}">{{post.name}}</option>
           </select>
       </span>
        &nbsp;&nbsp;&nbsp;
       <span>
            Статус:
           <select ui-select2="{minimumResultsForSearch: -1}" data-ng-model="filter_status" data-ng-change="filter()">
               <option value="-1">Все</option>
               <option value="1">Утвержденные</option>
               <option value="0">Неутвержденные</option>
           </select>
       </span>
        &nbsp;&nbsp;&nbsp;
       <span>
            Тип:
           <select ui-select2="{minimumResultsForSearch: -1}" data-ng-model="filter_type" data-ng-change="filter()">
               <option value="-1">Все</option>
               <option value="0">Комментарии</option>
               <option value="1">Ответы</option>
           </select>
       </span>
   </div>
</div>
<form>
   <div class="module-body module-all comments-list">
       <div class="accordion-bar bar-level-0 bar-expand" >
           <span>№</span>
           <span>Автор</span>
           <span>Статья</span>
           <span>Статус</span>
           <span>Тип</span>
           <span>Действие</span>
       </div>
       <accordion close-others="false">
           <accordion-group data-ng-repeat="comment in comments" is-open="false">
               <accordion-heading>
                   <div class="accordion-bar bar-level-0 bar-pt" data-ng-class="{comment: comment.parent_id == 0, reply: comment.parent_id > 0}">
                       <span>{{comment.comment_id}}</span>
                       <span>{{comment.author}}</span>
                       <span>{{comment.post_name}}</span>
                       <span data-ng-class="{approved: comment.status == 1, unapproved: comment.status == 0}">{{ comment.status == 1 ? 'Утвержден' : 'Неутвержден' }}</span>
                       <span>
                           <span data-ng-show="comment.parent_id == 0">Комментарий</span>
                           <span class="reply-to" data-ng-show="comment.parent_id > 0">Ответ на комментарий № <a href="<?php echo $base_href;?>#/blog/comments/form/{{comment.parent_id}}" data-ng-click="$event.stopPropagation()">{{comment.parent_id}}</a></span>
                       </span>
                       <span>
                            <a href="<?php echo $base_href;?>#/blog/comments/form/{{comment.comment_id}}" data-ng-click="$event.stopPropagation()" class="accordion-remove edit-module"><b></b>Изменить</a>
                       </span>
                   </div>
               </accordion-heading>
           </accordion-group>
       </accordion>
       <pagination ng-show="paginationTotalItems > paginationItemsPerPage" total-items="paginationTotalItems" page="paginationCurrentPage" max-size="16" items-per-page="paginationItemsPerPage" class="pagination-sm" boundary-links="true"></pagination>
   </div>
</form>
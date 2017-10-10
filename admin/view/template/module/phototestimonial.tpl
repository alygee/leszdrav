<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">

      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <div class="vtabs">
          <?php $module_row = 1; ?>
          <?php foreach ($modules as $module) { ?>
          <a href="#tab-module-<?php echo $module_row; ?>" id="module-<?php echo $module_row; ?>"><?php echo $tab_module . ' ' . $module_row; ?>&nbsp;<img src="view/image/delete.png" alt="" onclick="$('.vtabs a:first').trigger('click'); $('#module-<?php echo $module_row; ?>').remove(); $('#tab-module-<?php echo $module_row; ?>').remove(); return false;" /></a>
          <?php $module_row++; ?>
          <?php } ?>
          <span id="module-add"><?php echo $button_add_module; ?>&nbsp;<img src="view/image/add.png" alt="" onclick="addModule();" /></span> 
	  </div>

<table >

	      <tr>
		   <td width=10></td>
	          <td><?php echo $entry_default_rating; ?></td>
			<td><span><?php echo $entry_bad; ?></span>&nbsp;
        		<input type="radio" name="phototestimonial_default_rating" value="1" style="margin: 0;" <?php if ( $phototestimonial_default_rating == 1 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="phototestimonial_default_rating" value="2" style="margin: 0;" <?php if ( $phototestimonial_default_rating == 2 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="phototestimonial_default_rating" value="3" style="margin: 0;" <?php if ( $phototestimonial_default_rating == 3 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="phototestimonial_default_rating" value="4" style="margin: 0;" <?php if ( $phototestimonial_default_rating == 4 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="phototestimonial_default_rating" value="5" style="margin: 0;" <?php if ( $phototestimonial_default_rating == 5 ) echo 'checked="checked"';?> />
        		&nbsp; <span><?php echo $entry_good; ?></span>
      	    	</td>
	      </tr>

	      <tr>
		   <td width=10></td>
	          <td><?php echo $entry_admin_approved; ?></td>
	          <td>
	          <?php if (isset($phototestimonial_admin_approved)) { ?>
	          <input type="checkbox" name="phototestimonial_admin_approved" value="0" checked="checked" />
	          <?php } else { ?>
	          <input type="checkbox" name="phototestimonial_admin_approved" value="0" />
	          <?php } ?>
	          </td>
	      </tr>

	      <tr>
		   <td width=10></td>
	          <td><?php echo $entry_send_to_admin; ?></td>
	          <td>
	          <?php if (isset($phototestimonial_send_to_admin)) { ?>
	          <input type="checkbox" name="phototestimonial_send_to_admin" value="0" checked="checked" />
	          <?php } else { ?>
	          <input type="checkbox" name="phototestimonial_send_to_admin" value="0" />
	          <?php } ?>
	          </td>
	      </tr>


	      <tr>
		   <td width=10></td>
	          <td><?php echo $entry_load_image_size; ?></td>
            	<td><input type="text" name="phototestimonial_load_image_size" value="<?php echo $phototestimonial_load_image_size; ?>" size="3" />
			</td>
	      </tr>

	      <tr>
		   <td width=10></td>
	          <td><?php echo $entry_load_image_count; ?></td>
            	<td><input type="text" name="phototestimonial_load_image_count" value="<?php echo $phototestimonial_load_image_count; ?>" size="3" />
			</td>
	      </tr>

	      <tr>
		   <td width=10></td>
	          <td><?php echo $entry_all_page_image_size; ?></td>
            	<td><input type="text" name="phototestimonial_all_page_image_width" value="<?php echo $phototestimonial_all_page_image_width; ?>" size="3" />
	              <input type="text" name="phototestimonial_all_page_image_height" value="<?php echo $phototestimonial_all_page_image_height; ?>" size="3" />
			</td>
	      </tr>

	      <tr>
		   <td width=10></td>
	          <td><?php echo $entry_all_page_limit; ?></td>
            	<td><input type="text" name="phototestimonial_all_page_limit" value="<?php echo $phototestimonial_all_page_limit; ?>" size="3" />
			</td>
	      </tr>

	      <tr>
		   <td width=10></td>
	          <td><?php echo $entry_all_page_date_format; ?></td>
            	<td><input type="text" name="phototestimonial_all_page_date_format" value="<?php echo $phototestimonial_all_page_date_format; ?>" size="10" />
			</td>
	      </tr>

	      <tr>
		   <td width=10></td>
	          <td><?php echo $entry_all_page_keyword; ?></td>
            	<td><input type="text" name="phototestimonial_all_page_keyword" value="<?php echo $phototestimonial_all_page_keyword; ?>" size="30" />
			</td>
	      </tr>

	      <tr>
		   <td width=10></td>
	          <td><?php echo $entry_form_keyword; ?></td>
            	<td><input type="text" name="phototestimonial_form_keyword" value="<?php echo $phototestimonial_form_keyword; ?>" size="30" />
			</td>
	      </tr>

	      <tr>
		   <td width=10></td>
	          <td><?php echo $entry_format_items; ?></td>
            	<td>
			<table>
				<tr>
				<td><b><?php echo $entry_format_item_name; ?></b></td>
				<td><b><?php echo $entry_format_item_view; ?></b></td>
				</tr>

				<tr>
				<td><input disabled type="text" name="phototestimonial_format_item_name_avatar" value="<?php echo $phototestimonial_format_item_name_avatar; ?>" size="30" /></td>
				<td>
					<select name="phototestimonial_format_item_view_avatar">
			                  <?php foreach ($phototestimonial_format_views2 as $val=>$phototestimonial_format_view) { ?>
			                  <?php if ($val == $phototestimonial_format_item_view_avatar) { ?>
			                  <option value="<?php echo $val; ?>" selected="selected"><?php echo $phototestimonial_format_view; ?></option>
			                  <?php } else { ?>
			                  <option value="<?php echo $val; ?>"><?php echo $phototestimonial_format_view; ?></option>
			                  <?php } ?>
			                  <?php } ?>
		                  </select>
				</td>
				</tr>
				
				<tr>
				<td><input disabled type="text" name="phototestimonial_format_item_name_title" value="<?php echo $phototestimonial_format_item_name_title; ?>" size="30" /></td>
				<td>
					<select name="phototestimonial_format_item_view_title">
			                  <?php foreach ($phototestimonial_format_views as $val=>$phototestimonial_format_view) { ?>
			                  <?php if ($val == $phototestimonial_format_item_view_title) { ?>
			                  <option value="<?php echo $val; ?>" selected="selected"><?php echo $phototestimonial_format_view; ?></option>
			                  <?php } else { ?>
			                  <option value="<?php echo $val; ?>"><?php echo $phototestimonial_format_view; ?></option>
			                  <?php } ?>
			                  <?php } ?>
		                  </select>
				</td>
				</tr>

				<tr>
				<td><input disabled type="text" name="phototestimonial_format_item_name_description" value="<?php echo $phototestimonial_format_item_name_description; ?>" size="30" /></td>
				<td>
					<select name="phototestimonial_format_item_view_description" disabled>
			                  <?php foreach ($phototestimonial_format_views as $val=>$phototestimonial_format_view) { ?>
			                  <?php if ($val == $phototestimonial_format_item_view_description) { ?>
			                  <option value="<?php echo $val; ?>" selected="selected"><?php echo $phototestimonial_format_view; ?></option>
			                  <?php } else { ?>
			                  <option value="<?php echo $val; ?>"><?php echo $phototestimonial_format_view; ?></option>
			                  <?php } ?>
			                  <?php } ?>
		                  </select>
				</td>
				</tr>

				<tr>
				<td><input disabled type="text" name="phototestimonial_format_item_name_name" value="<?php echo $phototestimonial_format_item_name_name; ?>" size="30" /></td>
				<td>
					<select name="phototestimonial_format_item_view_name">
			                  <?php foreach ($phototestimonial_format_views as $val=>$phototestimonial_format_view) { ?>
			                  <?php if ($val == $phototestimonial_format_item_view_name) { ?>
			                  <option value="<?php echo $val; ?>" selected="selected"><?php echo $phototestimonial_format_view; ?></option>
			                  <?php } else { ?>
			                  <option value="<?php echo $val; ?>"><?php echo $phototestimonial_format_view; ?></option>
			                  <?php } ?>
			                  <?php } ?>
		                  </select>
				</td>
				</tr>

				<tr>
				<td><input disabled type="text" name="phototestimonial_format_item_name_page" value="<?php echo $phototestimonial_format_item_name_page; ?>" size="30" /></td>
				<td>
					<select name="phototestimonial_format_item_view_page">
			                  <?php foreach ($phototestimonial_format_views as $val=>$phototestimonial_format_view) { ?>
			                  <?php if ($val == $phototestimonial_format_item_view_page) { ?>
			                  <option value="<?php echo $val; ?>" selected="selected"><?php echo $phototestimonial_format_view; ?></option>
			                  <?php } else { ?>
			                  <option value="<?php echo $val; ?>"><?php echo $phototestimonial_format_view; ?></option>
			                  <?php } ?>
			                  <?php } ?>
		                  </select>
				</td>
				</tr>

				<tr>
				<td><input disabled type="text" name="phototestimonial_format_item_name_city" value="<?php echo $phototestimonial_format_item_name_city; ?>" size="30" /></td>
				<td>
					<select name="phototestimonial_format_item_view_city">
			                  <?php foreach ($phototestimonial_format_views as $val=>$phototestimonial_format_view) { ?>
			                  <?php if ($val == $phototestimonial_format_item_view_city) { ?>
			                  <option value="<?php echo $val; ?>" selected="selected"><?php echo $phototestimonial_format_view; ?></option>
			                  <?php } else { ?>
			                  <option value="<?php echo $val; ?>"><?php echo $phototestimonial_format_view; ?></option>
			                  <?php } ?>
			                  <?php } ?>
		                  </select>
				</td>
				</tr>

				<tr>
				<td><input disabled type="text" name="phototestimonial_format_item_name_email" value="<?php echo $phototestimonial_format_item_name_email; ?>" size="30" /></td>
				<td>
					<select name="phototestimonial_format_item_view_email">
			                  <?php foreach ($phototestimonial_format_views as $val=>$phototestimonial_format_view) { ?>
			                  <?php if ($val == $phototestimonial_format_item_view_email) { ?>
			                  <option value="<?php echo $val; ?>" selected="selected"><?php echo $phototestimonial_format_view; ?></option>
			                  <?php } else { ?>
			                  <option value="<?php echo $val; ?>"><?php echo $phototestimonial_format_view; ?></option>
			                  <?php } ?>
			                  <?php } ?>
		                  </select>
				</td>
				</tr>

				<tr>
				<td><input disabled type="text" name="phototestimonial_format_item_name_rating" value="<?php echo $phototestimonial_format_item_name_rating; ?>" size="30" /></td>
				<td>
					<select name="phototestimonial_format_item_view_rating">
			                  <?php foreach ($phototestimonial_format_views2 as $val=>$phototestimonial_format_view) { ?>
			                  <?php if ($val == $phototestimonial_format_item_view_rating) { ?>
			                  <option value="<?php echo $val; ?>" selected="selected"><?php echo $phototestimonial_format_view; ?></option>
			                  <?php } else { ?>
			                  <option value="<?php echo $val; ?>"><?php echo $phototestimonial_format_view; ?></option>
			                  <?php } ?>
			                  <?php } ?>
		                  </select>
				</td>
				</tr>

				<tr>
				<td><input disabled type="text" name="phototestimonial_format_item_name_captcha" value="<?php echo $phototestimonial_format_item_name_captcha; ?>" placeholder="<?php echo $phototestimonial_format_item_name_captcha_default; ?>" size="30" /></td>
				<td>
					<select name="phototestimonial_format_item_view_captcha">
			                  <?php foreach ($phototestimonial_format_views2 as $val=>$phototestimonial_format_view) { ?>
			                  <?php if ($val == $phototestimonial_format_item_view_captcha) { ?>
			                  <option value="<?php echo $val; ?>" selected="selected"><?php echo $phototestimonial_format_view; ?></option>
			                  <?php } else { ?>
			                  <option value="<?php echo $val; ?>"><?php echo $phototestimonial_format_view; ?></option>
			                  <?php } ?>
			                  <?php } ?>
		                  </select>
				</td>
				</tr>

			</table>
			</td>
	      </tr>

</table>
<br>

        <?php $module_row = 1; ?>
        <?php foreach ($modules as $module) { ?>
        <div id="tab-module-<?php echo $module_row; ?>" class="vtabs-content">
          <div id="language-<?php echo $module_row; ?>" class="htabs">
            <?php foreach ($languages as $language) { ?>
            <a href="#tab-language-<?php echo $module_row; ?>-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
            <?php } ?>
          </div>
          <?php foreach ($languages as $language) { ?>
          <div id="tab-language-<?php echo $module_row; ?>-<?php echo $language['language_id']; ?>">
            <table class="form">
              <tr>
                <td><?php echo $entry_title; ?></td>
                <td><input type="text" name="phototestimonial_module[<?php echo $module_row; ?>][phototestimonial_title][<?php echo $language['language_id']; ?>]" id="description-<?php echo $module_row; ?>-<?php echo $language['language_id']; ?>"  value="<?php echo isset($module['phototestimonial_title'][$language['language_id']]) ? $module['phototestimonial_title'][$language['language_id']] : ''; ?>" size="30" /></td>
              </tr>
            </table>
          </div>
          <?php } ?>
          <table class="form">
            <tr>
                <td><?php echo $entry_limit; ?></td>
      	    	   <td><input type="text" name="phototestimonial_module[<?php echo $module_row; ?>][phototestimonial_limit]" value="<?php echo $module['phototestimonial_limit']; ?>" size="2" /></td>
            </tr>
            <tr>
                <td><?php echo $entry_show_add_photos; ?></td>
	          <?php if (isset($module['phototestimonial_show_add_photos'])) { ?>
      	    	   <td><input type="checkbox" name="phototestimonial_module[<?php echo $module_row; ?>][phototestimonial_show_add_photos]" value="0" checked="checked"  /></td>
		    <?php } else { ?>
      	    	   <td><input type="checkbox" name="phototestimonial_module[<?php echo $module_row; ?>][phototestimonial_show_add_photos]" value="0"   /></td>
		    <?php } ?>
            </tr>

		<tr>
			<td><?php echo $entry_image_size; ?></td>
            	<td><input type="text" name="phototestimonial_module[<?php echo $module_row; ?>][phototestimonial_image_width]" value="<?php if (isset($module['phototestimonial_image_width'])) echo $module['phototestimonial_image_width']; else echo "60"; ?>" size="3" />
	              <input type="text" name="phototestimonial_module[<?php echo $module_row; ?>][phototestimonial_image_height]" value="<?php if (isset($module['phototestimonial_image_height'])) echo $module['phototestimonial_image_height']; else echo "80"; ?>" size="3" />
			</td>
		</tr>
            <tr>
                <td><?php echo $entry_random; ?></td>
	          <?php if (isset($module['phototestimonial_random'])) { ?>
      	    	   <td><input type="checkbox" name="phototestimonial_module[<?php echo $module_row; ?>][phototestimonial_random]" value="0" checked="checked"  /></td>
		    <?php } else { ?>
      	    	   <td><input type="checkbox" name="phototestimonial_module[<?php echo $module_row; ?>][phototestimonial_random]" value="0"   /></td>
		    <?php } ?>
            </tr>
            <tr>
                <td><?php echo $entry_character_limit; ?></td>
      	    	   <td><input type="text" name="phototestimonial_module[<?php echo $module_row; ?>][phototestimonial_character_limit]" value="<?php if (isset($module['phototestimonial_character_limit'])) echo $module['phototestimonial_character_limit']; else echo ""; ?>" size="2" /></td>
            </tr>
            <tr>
              <td><?php echo $entry_layout; ?></td>
              <td><select name="phototestimonial_module[<?php echo $module_row; ?>][layout_id]">
                  <?php foreach ($layouts as $layout) { ?>
                  <?php if ($layout['layout_id'] == $module['layout_id']) { ?>
                  <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_position; ?></td>
              <td><select name="phototestimonial_module[<?php echo $module_row; ?>][position]">
                  <?php if ($module['position'] == 'content_top') { ?>
                  <option value="content_top" selected="selected"><?php echo $text_content_top; ?></option>
                  <?php } else { ?>
                  <option value="content_top"><?php echo $text_content_top; ?></option>
                  <?php } ?>
                  <?php if ($module['position'] == 'content_bottom') { ?>
                  <option value="content_bottom" selected="selected"><?php echo $text_content_bottom; ?></option>
                  <?php } else { ?>
                  <option value="content_bottom"><?php echo $text_content_bottom; ?></option>
                  <?php } ?>
                  <?php if ($module['position'] == 'column_left') { ?>
                  <option value="column_left" selected="selected"><?php echo $text_column_left; ?></option>
                  <?php } else { ?>
                  <option value="column_left"><?php echo $text_column_left; ?></option>
                  <?php } ?>
                  <?php if ($module['position'] == 'column_right') { ?>
                  <option value="column_right" selected="selected"><?php echo $text_column_right; ?></option>
                  <?php } else { ?>
                  <option value="column_right"><?php echo $text_column_right; ?></option>
                  <?php } ?>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_status; ?></td>
              <td><select name="phototestimonial_module[<?php echo $module_row; ?>][status]">
                  <?php if ($module['status']) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select></td>
            </tr>
            <tr>
              <td><?php echo $entry_sort_order; ?></td>
              <td><input type="text" name="phototestimonial_module[<?php echo $module_row; ?>][sort_order]" value="<?php echo $module['sort_order']; ?>" size="3" /></td>
            </tr>
          </table>
        </div>
        <?php $module_row++; ?>
        <?php } ?>
      </form>

<div class="buttons" style="float: right;"><a href="<?php echo $edit_phototestimonials_path; ?>" class="button"><?php echo $text_edit_phototestimonials; ?> [<?php echo $phototestimonial_total; ?>] </a></div>

    </div>
  </div>
		<br>
		<div style="text-align:center; color:#555555;">Photo Testimonials v<?php echo $phototestimonial_version; ?></div>

</div>


<script type="text/javascript"><!--
var module_row = <?php echo $module_row; ?>;

function addModule() {	
	html  = '<div id="tab-module-' + module_row + '" class="vtabs-content">';
	html += '  <div id="language-' + module_row + '" class="htabs">';
    <?php foreach ($languages as $language) { ?>
    html += '    <a href="#tab-language-'+ module_row + '-<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>';
    <?php } ?>
	html += '  </div>';

	<?php foreach ($languages as $language) { ?>
	html += '    <div id="tab-language-'+ module_row + '-<?php echo $language['language_id']; ?>">';
	html += '      <table class="form">';
      html += '       <tr>';
      html += '          <td><?php echo $entry_title; ?></td>';
      html += '          <td><input type="text" name="phototestimonial_module[' + module_row + '][phototestimonial_title][<?php echo $language['language_id']; ?>]" value="" size="30" id="description-' + module_row + '-<?php echo $language['language_id']; ?>"/></td>';
      html += '       </tr>';
	html += '      </table>';
	html += '    </div>';
	<?php } ?>

	html += '  <table class="form">';

      html += '  <tr>';
      html += '      <td><?php echo $entry_limit; ?></td>';
      html += '      <td><input type="text" name="phototestimonial_module[' + module_row + '][phototestimonial_limit]" value="10" size="2" /></td>';
      html += '  </tr>';


      html += '      <tr>';
      html += '          <td><?php echo $entry_show_add_photos; ?></td>';
      html += '	    	   <td><input type="checkbox" name="phototestimonial_module[' + module_row + '][phototestimonial_show_add_photos]" value="0"   /></td>';
      html += '      </tr>';


	html += '  	<tr>';
	html += '  	<td><?php echo $entry_image_size; ?></td>';
      html += '        	<td><input type="text" name="phototestimonial_module[' + module_row + '][phototestimonial_image_width]" value="60" size="3" />';
	html += '                <input type="text" name="phototestimonial_module[' + module_row + '][phototestimonial_image_height]" value="80" size="3" />';
	html += '  		</td>';
	html += '  	</tr>';

      html += '  <tr>';
	html += '            <td><?php echo $entry_random; ?></td>';
	html += '            <td><input type="checkbox" name="phototestimonial_module[' + module_row + '][phototestimonial_random]" value="0"  /></td>';
	html += '  </tr>';


      html += '  <tr>';
      html += '      <td><?php echo $entry_character_limit; ?></td>';
      html += '      <td><input type="text" name="phototestimonial_module[' + module_row + '][phototestimonial_character_limit]" value="100" size="2" /></td>';
      html += '  </tr>';

	html += '    <tr>';
	html += '      <td><?php echo $entry_layout; ?></td>';
	html += '      <td><select name="phototestimonial_module[' + module_row + '][layout_id]">';
	<?php foreach ($layouts as $layout) { ?>
	html += '           <option value="<?php echo $layout['layout_id']; ?>"><?php echo addslashes($layout['name']); ?></option>';
	<?php } ?>
	html += '      </select></td>';
	html += '    </tr>';

	html += '    <tr>';
	html += '      <td><?php echo $entry_position; ?></td>';
	html += '      <td><select name="phototestimonial_module[' + module_row + '][position]">';
	html += '        <option value="content_top"><?php echo $text_content_top; ?></option>';
	html += '        <option value="content_bottom"><?php echo $text_content_bottom; ?></option>';
	html += '        <option value="column_left"><?php echo $text_column_left; ?></option>';
	html += '        <option value="column_right"><?php echo $text_column_right; ?></option>';
	html += '      </select></td>';
	html += '    </tr>';

	html += '    <tr>';
	html += '      <td><?php echo $entry_status; ?></td>';
	html += '      <td><select name="phototestimonial_module[' + module_row + '][status]">';
	html += '        <option value="1"><?php echo $text_enabled; ?></option>';
	html += '        <option value="0"><?php echo $text_disabled; ?></option>';
	html += '      </select></td>';
	html += '    </tr>';

	html += '    <tr>';
	html += '      <td><?php echo $entry_sort_order; ?></td>';
	html += '      <td><input type="text" name="phototestimonial_module[' + module_row + '][sort_order]" value="" size="3" /></td>';
	html += '    </tr>';
	html += '  </table>'; 
	html += '</div>';
	
	$('#form').append(html);
	

	
	$('#language-' + module_row + ' a').tabs();
	
	$('#module-add').before('<a href="#tab-module-' + module_row + '" id="module-' + module_row + '"><?php echo $tab_module; ?> ' + module_row + '&nbsp;<img src="view/image/delete.png" alt="" onclick="$(\'.vtabs a:first\').trigger(\'click\'); $(\'#module-' + module_row + '\').remove(); $(\'#tab-module-' + module_row + '\').remove(); return false;" /></a>');
	
	$('.vtabs a').tabs();
	
	$('#module-' + module_row).trigger('click');
	
	module_row++;
}
//--></script> 
<script type="text/javascript"><!--
$('.vtabs a').tabs();
//--></script> 
<script type="text/javascript"><!--
<?php $module_row = 1; ?>
<?php foreach ($modules as $module) { ?>
$('#language-<?php echo $module_row; ?> a').tabs();
<?php $module_row++; ?>
<?php } ?> 
//--></script> 
<?php echo $footer; ?>
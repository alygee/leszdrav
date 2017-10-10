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
      <h1><img src="view/image/information.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <div id="tab-general">
          <div id="languages" class="htabs">
            <?php foreach ($languages as $language) { ?>
            <a href="#language<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
            <?php } ?>
          </div>

            <table class="form">

			  <tr>
		          <td><?php echo $entry_avatar; ?></td>
			    <td>
				<div style="margin-bottom: 15px; padding: 10px 10px 10px 33px; background: #EAF7D9;">
				<a onclick="image_upload('image0', 'thumb0');"><img id="thumb0" src="<?php echo $avatar_img; ?>"></a> <a onclick="clear_image_upload('image0', 'thumb0');" class="button"><span><?php echo $entry_delete_file; ?></span></a>

				<input id="image0" type="hidden" value="<?php echo $avatar; ?>" name="avatar">
			    </div>

				<?php if (isset($error_avatar)) { ?>
	              <span class="error"><?php echo $error_avatar; ?></span>
	              <?php } ?>

			<a onclick="image_upload('image0', 'thumb0');" class="button"><span><?php echo $entry_select_file; ?></span></a>

				</td>
		        </tr> 

		</table>


          <?php foreach ($languages as $language) { ?>
          <div id="language<?php echo $language['language_id']; ?>">

            <table class="form">

	          <tr>
	            <td><?php echo $entry_title; ?></td>

	            <td><input type="text" name="phototestimonial_description[<?php echo $language['language_id']; ?>][title]" size="100" value="<?php echo isset($phototestimonial_description[$language['language_id']]) ? $phototestimonial_description[$language['language_id']]['title'] : ''; ?>" />


	          </tr>
	
	          <tr>
	            <td> <?php echo $entry_description; ?><span class="required">*</span></td>
	            <td>

			  <textarea rows="10" cols="95" name="phototestimonial_description[<?php echo $language['language_id']; ?>][description]" id="description<?php echo $language['language_id']; ?>"><?php echo isset($phototestimonial_description[$language['language_id']]) ? $phototestimonial_description[$language['language_id']]['description'] : ''; ?></textarea>
	              
				<?php if (isset($error_description[$language['language_id']])) { ?>
	              <span class="error"><?php echo $error_description[$language['language_id']]; ?></span>
	              <?php } ?>
			</td>
	          </tr>
      

            </table>


          </div>
          <?php } ?>
        </div>



      <table class="form">
	<tr>
	<td><?php echo $entry_images; ?></td>
	<td>

		<div id="files">
		<?php
		
		
		foreach($images as $im)
		{
		
			$image_width = 100;
			$image_height = 100;
		
			$this->load->model('tool/image');
		
		
			$path = $this->model_tool_image->resize($im['path'], $image_width, $image_height);
		
		
		
			$guid = sprintf('%04X%04X-%04X-%04X-%04X-%04X%04X%04X', mt_rand(0, 65535), mt_rand(0, 65535), mt_rand(0, 65535), mt_rand(16384, 20479), mt_rand(32768, 49151), mt_rand(0, 65535), mt_rand(0, 65535), mt_rand(0, 65535));
		
			echo '<div style = "margin-bottom: 15px; padding: 10px 10px 10px 33px; background: #EAF7D9;" id="' . $guid . '"><img src="' . $path . '"><br>' . $im['path'] . ' <a id="foo" href="javascript:delete_upload_file(\'' . $guid . '\')" class="button"><span>' . $entry_delete_file . '<span></a>';
			echo '<input type="hidden" value="' . $im['path'] . '" name="images[]"></div>';
		
		}
		
		?>
		</div>

		<input id="image" type="hidden" value="">

		<a onclick="images_upload('image');" class="button"><span><?php echo $entry_select_file; ?></span></a>



	</td>
	</tr> 

	<tr>
		<td> <?php echo $entry_name; ?></td>
		<td><input type="text" name="name" value="<?php echo $name; ?>">
		</td>
	</tr>   

	<tr>
	    <td><?php echo $entry_page; ?></td>
	    <td><input type="text" name="page" value="<?php echo $page; ?>" size=90></td>
	</tr>

	<tr>
	    	<td><?php echo $entry_city; ?></td>
		<td><input type="text" name="city" value="<?php echo $city; ?>"></td>
	</tr>

	<tr>
	      <td><?php echo $entry_email; ?></td>
		<td><input type="text" name="email" value="<?php echo $email; ?>"></td>
      </tr>

	<tr>
	      <td><?php echo $entry_keyword; ?></td>
		<td><input type="text" name="keyword" value="<?php echo $keyword; ?>"></td>
      </tr>
     

      <tr>
          <td><?php echo $entry_status; ?></td>
          <td><select name="status">
              <?php if ($status) { ?>
              <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
              <option value="0"><?php echo $text_disabled; ?></option>
              <?php } else { ?>
              <option value="1"><?php echo $text_enabled; ?></option>
              <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
              <?php } ?>
            </select></td>
      </tr>
      <tr>
          <td><?php echo $entry_date_added; ?></td>
     	    <td><input type="text" name="date_added" id="datetime" value="<?php echo $date_added; ?>"></td> 	
      </tr>
      <tr>
            <td><?php echo $entry_rating; ?></td> 
		<td><span><?php echo $entry_bad; ?></span>&nbsp;
        		<input type="radio" name="rating" value="1" style="margin: 0;" <?php if ( $rating == 1 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="2" style="margin: 0;" <?php if ( $rating == 2 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="3" style="margin: 0;" <?php if ( $rating == 3 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="4" style="margin: 0;" <?php if ( $rating == 4 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="5" style="margin: 0;" <?php if ( $rating == 5 ) echo 'checked="checked"';?> />
        		&nbsp; <span><?php echo $entry_good; ?></span>

          	</td>
      </tr>


      </table>


      </form>
    </div>
  </div>
</div>

<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script> 
<script type="text/javascript"><!--
<?php foreach ($languages as $language) { ?>
CKEDITOR.replace('description<?php echo $language['language_id']; ?>', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
<?php } ?>
//--></script> 

<script type="text/javascript" src="view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ui/i18n/jquery.ui.datepicker-<?php echo $this->language->get('code');?>.js"></script>

<script type="text/javascript"><!--

		$('#datetime').datetimepicker({
			dateFormat: 'yy-mm-dd',
			timeFormat: 'h:m:s'
		});


//--></script> 

<script type="text/javascript"><!--
function image_upload(field, thumb) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $entry_avatar; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).attr('value')),
					dataType: 'text',
					success: function(data) {
						$('#' + thumb).replaceWith('<img src="' + data + '" alt="" id="' + thumb + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 700,
		height: 400,
		resizable: false,
		modal: false
	});
};

function clear_image_upload(field, thumb) {
	$('#' + thumb).replaceWith('<img src="' + "<?php echo $no_photo; ?>" + '" alt="" id="' + thumb + '" />');
	$('#' + field).val('');
};

function createUUID() {
    // http://www.ietf.org/rfc/rfc4122.txt
    var s = [];
    var hexDigits = "0123456789ABCDEF";
    for (var i = 0; i < 32; i++) {
        s[i] = hexDigits.substr(Math.floor(Math.random() * 0x10), 1);
    }
    s[12] = "4";  // bits 12-15 of the time_hi_and_version field to 0010
    s[16] = hexDigits.substr((s[16] & 0x3) | 0x8, 1);  // bits 6-7 of the clock_seq_hi_and_reserved to 01
 
    var uuid = s.join("");
    return uuid;
}

function images_upload(field) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $entry_avatar; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).attr('value')),
					dataType: 'text',
					success: function(data) {
						//$('#' + thumb).replaceWith('<img src="' + data + '" alt="" id="' + thumb + '" />');

						var images = '';
						var guid = createUUID();
					
						images = '<div style = "margin-bottom: 15px; padding: 10px 10px 10px 33px; background: #EAF7D9;" id="' + guid + '"><img src="' + data + '"><br>' + $('#' + field).attr('value') + ' <a id="foo" href="javascript:delete_upload_file(\'' + guid + '\')" class="button"><span><?php echo $entry_delete_file; ?><span></a>';
						images = images + '<input type="hidden" value="' + $('#' + field).attr('value') + '" name="images[]"></div>';
			
						$('<div></div>').appendTo('#files').html(images);

					}
				});
			}
		},	
		bgiframe: false,
		width: 700,
		height: 400,
		resizable: false,
		modal: false
	});

};


function delete_upload_file(val) {
$('#' + val).remove();
}



//--></script> 


<script type="text/javascript"><!--
$('#tabs a').tabs(); 
$('#languages a').tabs(); 
//--></script> 
<?php echo $footer; ?>
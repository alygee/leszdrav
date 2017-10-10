<?php echo $header; ?>
<div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
</div>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><h1 class="heading-title"><?php echo $heading_title; ?></h1><?php echo $content_top; ?>

      
  
  <div class="middle">
  	
  	<div class="content"><p><?php echo $text_conditions ?></p></div>
  
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="phototestimonial">
	<div class="content">
        <table width="100%">
<tr>
<td>

<?php if ($view_avatar !=1 ) { ?>

		<?php echo $entry_avatar; ?><?php if ($view_avatar==2) echo '<span class="required">*</span>';  ?> <br />


		<div id="avatar" >
		</div>


		<div id="upload_avatar" ><a class="button"><span><?php echo $select_file; ?><span></a></div><span id="status_avatar" ></span>

<?php } ?>

<script type="text/javascript" >

	function get_error(error_code) {
		switch (error_code) {
			case 'error_upload':
				return '<?php echo $error_upload;?>';
			break;

			case 'same_name':
				return '<?php echo $same_name;?>';
			break;

			case 'max_limit':
				return '<?php echo $max_limit;?>';
			break;

			case 'size_to_big':
				return '<?php echo $size_to_big;?>';
			break;

			case 'not_image':
				return '<?php echo $not_image;?>';
			break;

			case 'error_move':
				return '<?php echo $error_move;?>';
			break;
		}

		return error_code;
	}


	function set_image(response) {
			$('#avatar').empty();
	
			var image = '';

			for (var n in response)
			{
				image = '<div style = "margin-bottom: 15px; padding: 10px 10px 10px 33px; background: #EAF7D9;" id ="photo_im0"><img src="' + response[n].path + '"><br>' + response[n].file + ' <a id="foo" href="javascript:delete_upload_avatar()" class="button"><span><?php echo $delete_file; ?><span></a></div>';
			}

			if (image == '')
				image = '<div style = "margin-bottom: 15px; padding: 10px 10px 10px 33px; background: #EAF7D9;" id ="photo_avatar" ><img id="avatar_img" src="<?php echo $no_photo; ?>"> </div>';

			$('<div></div>').appendTo('#avatar').html(image);

	}



	function delete_upload_avatar() {

		$.ajax({
			type: "POST",
			dataType: "json",
			url: "<?php echo $action_delete_upload_file; ?>",
			data: "file_index=0&avatar=1",
			success: function(response) {	
				set_image(response); 
			}
		});

	}

<?php if ($view_avatar !=1 ) { ?>

	$(function(){
		var btnUpload=$('#upload_avatar');
		var status=$('#status_avatar');
		new AjaxUpload(btnUpload, {
			action: '<?php echo $action_upload; ?>',
			name: 'uploadfile',
			data: {'avatar' : 1},
			responseType: "json",
			onSubmit: function(file, ext){
				status.text('<?php echo $upload_msg; ?>');
			},
			onComplete: function(file, response){
				//On completion clear the status
				status.text('');

				var json_x = response;
				
				if(json_x['error']){
					$('<div></div>').appendTo('#avatar').text(get_error(json_x['error']) + ' - ' + file).addClass('error');					
				} else{

					var i = 0;
					for (var n in response)
					{
						i++;
					} 

					if (i > 1) 
					delete_upload_avatar();
						else
					set_image(response);   

				}
				
			}
		});
		
	});

<?php } ?>

		$.ajax({
			type: "POST",
			dataType: "json",
			data: {'avatar' : 1},
			url: "<?php echo $action_get_files; ?>",
			success: function(response) {	
				set_image(response);
			}
		});

</script>


</td>
</tr>


<?php if ($view_title !=1 ) { ?>
          <tr>
            <td><?php echo $entry_title ?><?php if ($view_title==2) echo '<span class="required">*</span>';  ?><br />
              <input type="text" name="title" value="<?php echo $title; ?>" size = 90 />
              <?php if ($error_title) { ?>
              <span class="error"><?php echo $error_title; ?></span>
              <?php } ?></td>
          </tr>
<?php } ?>
          <tr>
            <td><?php echo $entry_enquiry ?><span class="required">*</span><br />
              <textarea name="description" style="width: 99%;" rows="10"><?php echo $description; ?></textarea><br />

              <?php if ($error_enquiry) { ?>
              <span class="error"><?php echo $error_enquiry; ?></span>
              <?php } ?></td>
          </tr>

<?php if ($phototestimonial_load_image_count > 0) { ?>	

          <tr>
            <td>
		<?php echo $entry_photos; ?><br />

		<div id="files" >
		</div>

		<div id="upload" ><a class="button"><span><?php echo $select_file;?><span></a></div><span id="status" ></span>


<script type="text/javascript" >

	function create_image_list(response) {
			$('#files').empty();
	
			var images = '';
			var i = 0;
			for (var n in response)
			{
			      images += '<div style = "margin-bottom: 15px; padding: 10px 10px 10px 33px; background: #EAF7D9;" id ="photo_im' + i + '"><img src="' + response[n].path + '"><br>' + response[n].file + ' <a id="foo" href="javascript:delete_upload_file(' + i++ + ')" class="button"><span><?php echo $delete_file;?><span></a></div>';
			}    

			$('<div></div>').appendTo('#files').html(images);

	}

	function delete_upload_file(_index) {

		$.ajax({
			type: "POST",
			dataType: "json",
			url: "<?php echo $action_delete_upload_file; ?>",
			data: "file_index=" + _index + "&avatar=0",
			success: function(response) {	
				create_image_list(response);
			}
		});

	}

	$(function(){
		var btnUpload=$('#upload');
		var status=$('#status');
		new AjaxUpload(btnUpload, {
			action: '<?php echo $action_upload; ?>',
			name: 'uploadfile',
			data: {'avatar' : 0},
			responseType: "json",
			onSubmit: function(file, ext){
				status.text('<?php echo $upload_msg;?>');
			},
			onComplete: function(file, response){
				//On completion clear the status
				status.text('');

				var json_x = response;
				if(json_x['error']){
					$('<div></div>').appendTo('#files').text(get_error(json_x['error']) + ' - ' + file).addClass('error');					
				} else{
					create_image_list(response);
				}
				
			}
		});
		
	});


		$.ajax({
			type: "POST",
			dataType: "json",
			data: {'avatar' : 0},
			url: "<?php echo $action_get_files; ?>",
			success: function(response) {	
				create_image_list(response);
			}
		});

</script>

		</td>
          </tr>
<?php } ?>

<?php if ($view_name !=1 ) { ?>
          <tr>
            <td><?php echo $entry_name ?><?php if ($view_name==2) echo '<span class="required">*</span>';  ?><br />
              <input type="text" name="name" value="<?php echo $name; ?>" />
              <?php if ($error_name) { ?>
              <span class="error"><?php echo $error_name; ?></span>
              <?php } ?>
		</td>
          </tr>
<?php } ?>

<?php if ($view_page !=1 ) { ?>
          <tr>
            <td><?php echo $entry_page ?><?php if ($view_page==2) echo '<span class="required">*</span>';  ?><br />
              <input type="text" name="page" value="<?php echo $page; ?>" size = 50/>
              <?php if ($error_page) { ?>
              <span class="error"><?php echo $error_page; ?></span>
              <?php } ?>
		</td>
          </tr>
<?php } ?>


<?php if ($view_city !=1 ) { ?>
          <tr>
             <td><?php echo $entry_city ?><?php if ($view_city==2) echo '<span class="required">*</span>';  ?><br />
		  <input type="text" name="city" value="<?php echo $city; ?>" />
              <?php if ($error_city) { ?>
              <span class="error"><?php echo $error_city; ?></span>
              <?php } ?>
		</td>
          </tr>
<?php } ?>

<?php if ($view_email !=1 ) { ?>
          <tr>
            <td>
		  <?php echo $entry_email ?><?php if ($view_email==2) echo '<span class="required">*</span>';  ?><br />
              <input type="text" name="email" value="<?php echo $email; ?>" />
              <?php if ($error_email) { ?>
              <span class="error"><?php echo $error_email; ?></span>
              <?php } ?></td>
          </tr>
<?php } ?>


<?php if ($view_rating !=1 ) { ?>
          <tr>
            <td><br><?php echo $entry_rating; ?><?php if ($view_rating==2) echo '<span class="required">*</span>';  ?> &nbsp;&nbsp;&nbsp; <span><?php echo $entry_bad; ?></span>&nbsp;
        		<input type="radio" name="rating" value="1" style="margin: 0;" <?php if ($rating==1) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="2" style="margin: 0;" <?php if ($rating==2) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="3" style="margin: 0;" <?php if ($rating==3) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="4" style="margin: 0;" <?php if ($rating==4) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="5" style="margin: 0;" <?php if ($rating==5) echo 'checked="checked"';?> />
        		&nbsp; <span><?php echo $entry_good; ?></span><br /><br>

          	</td>
          </tr>
<?php } ?>

<?php if ($view_captcha !=1 ) { ?>

	<?php if ($need_captcha == true) { ?>
          <tr>
            <td>
              <?php if ($error_captcha) { ?>
              <span class="error"><?php echo $error_captcha; ?></span>
              <?php } ?>
              
              <img src="index.php?route=information/contact/captcha" /> <br>
		<?php echo $entry_captcha; ?><?php if ($view_captcha==2) echo '<span class="required">*</span>';  ?> <br>

              <input type="text" name="captcha" value="<?php echo $captcha; ?>" /><br>
		</td>
          </tr>
	<?php } ?>

<?php } ?>

        </table>
	  </div>
	  <br/>
      <div >
        <table width=100%>
          <tr>
            <td width=50%><a  onclick="$('#phototestimonial').submit();" class="button"><span><?php echo $button_send; ?></span></a></td>
		<td align="right"><div class="name" align="right"><a class="button" href="<?php echo $showall_url;?>"><?php echo $show_all; ?></a></div>
		</td>
          </tr>
        </table>

      </div>
    </form>


  </div>
 
</div>
<br/>
<?php echo $footer; ?> 
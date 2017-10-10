<style type="text/css">
.highlight { background-color: yellow }
</style>

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
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
	  <h1><img src='view/image/information.png'><?php echo $heading_title; ?></h1>

<?php if ($phototestimonial_total!=-1) { ?>
    	  <div class="buttons"><a onclick="location='<?php echo $insert; ?>'" class="button"><span><?php echo $button_insert; ?></span></a><a onclick="$('form').submit();" class="button"><span><?php echo $button_delete; ?></span></a></div>
<?php } ?>

    </div>

  <div class="content">
    <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form">
	<table>
		<tr>
		    <td>
			    <script type="text/javascript">
			      $(document).keypress(function(e) {
				if(e.which == 13 && $('#infoFilter').is(":focus")) {
				   filterIt(); return false;
				}
			      });
			      function filterIt() {
				      window.location.href = "<?php echo HTTP_SERVER.'index.php?route=catalog/phototestimonial&token='.$this->session->data['token'].'&filter_name='; ?>" + $('#infoFilter').val();
				      return false;
			      }

				$(document).ready(function(){
					$('td').highlight('<?php echo (isset($this->request->get['filter_name']) ? $this->request->get['filter_name'] : ''); ?>');
				});

			    </script>
			    <input id="infoFilter" name="infoFilter" size="100" type="text" value="<?php echo (isset($this->request->get['filter_name']) ? $this->request->get['filter_name'] : ''); ?>"/>
			    <a onclick="filterIt();" class="button"><?php echo $text_filter; ?></a>
			    <a href="<?php echo HTTP_SERVER.'index.php?route=catalog/phototestimonial&token='.$this->session->data['token']; ?>" class="button"><?php echo $text_clear; ?></a>
		    </td>
		  </tr>
	</table>



      <table class="list">
        <thead>
          <tr>
            <td width="1" style="align: center;"><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></td>

            <td class="left"><?php if ($sort == 'td.description') { ?>
              <a href="<?php echo $sort_description; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_description; ?></a>
              <?php } else { ?>
              <a href="<?php echo $sort_description; ?>"><?php echo $column_description; ?></a>
              <?php } ?></td>


            <td class="left"><?php if ($sort == 'td.title') { ?>
              <a href="<?php echo $sort_title; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_title; ?></a>
              <?php } else { ?>
              <a href="<?php echo $sort_title; ?>"><?php echo $column_title; ?></a>
              <?php } ?></td>
            <td class="left"><?php if ($sort == 'p.name') { ?>
              <a href="<?php echo $sort_name; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_name; ?></a>
              <?php } else { ?>
              <a href="<?php echo $sort_name; ?>"><?php echo $column_name; ?></a>
              <?php } ?></td>
            <td class="right"><?php if ($sort == 'p.date_added') { ?>
              <a href="<?php echo $sort_date_added; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_date_added; ?></a>
              <?php } else { ?>
              <a href="<?php echo $sort_date_added; ?>"><?php echo $column_date_added; ?></a>
              <?php } ?></td>
            <td class="right"><?php if ($sort == 'p.status') { ?>
              <a href="<?php echo $sort_status; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_status; ?></a>
              <?php } else { ?>
              <a href="<?php echo $sort_status; ?>"><?php echo $column_status; ?></a>
              <?php } ?></td>
            <td class="right"><?php echo $column_action; ?></td>
          </tr>
        </thead>
        <tbody>
          <?php if ($phototestimonials) { ?>
          <?php foreach ($phototestimonials as $phototestimonial) { ?>
          <tr>
            <td style="align: center;"><?php if ($phototestimonial['selected']) { ?>
              <input type="checkbox" name="selected[]" value="<?php echo $phototestimonial['phototestimonial_id']; ?>" checked="checked" />
              <?php } else { ?>
              <input type="checkbox" name="selected[]" value="<?php echo $phototestimonial['phototestimonial_id']; ?>" />
              <?php } ?></td>
            <td class="left">

<?php if ($phototestimonial['avatar']!="") { ?>
<img style="float: left; padding: 0px 10px 0px 0px;" src="<?php echo $phototestimonial['avatar']; ?>">
<?php } ?>

<?php echo $phototestimonial['description']; ?>
<br>
<?php
foreach($phototestimonial['images'] as $im)
{

	$image_width = 100;
	$image_height = 100;

	$this->load->model('tool/image');

	$path = $this->model_tool_image->resize($im['path'], $image_width, $image_height);

	echo '<img src="' . $path . '">' ;

}
?>

</td>
            <td class="left" width="100px"><?php echo $phototestimonial['title']; ?></td>
            <td class="left" width="100px">

		<?php if ($phototestimonial['page']!="")  { ?>

		<a href="<?php echo $phototestimonial['page']; ?>" style="text-decoration: none;">

		<?php if ($phototestimonial['name']!="") echo $phototestimonial['name']; ?>

		<?php if($phototestimonial['page_icon']!="") { ?>
		<img src="<?php echo $phototestimonial['page_icon']; ?>" border="0" height="16" width="16" style="vertical-align:middle;"> 
		<?php } ?>
		</a>

		<?php } else { ?>

		<?php if ($phototestimonial['name']!="") echo $phototestimonial['name']; ?>

		<?php }  ?>

		</td>

            <td class="right" width="100px"><?php echo $phototestimonial['date_added']; ?></td>
            <td class="right" width="100px"><a class="columnstatus" id="<?php echo $phototestimonial['phototestimonial_id']; ?>"><?php echo $phototestimonial['status']; ?></a></td>
            <td class="right" width="100px"><?php foreach ($phototestimonial['action'] as $action) { ?>
               <a href="<?php echo $action['href']; ?>">[<?php echo $action['text']; ?>]</a> 
              <?php } ?></td>
          </tr>
          <?php } ?>
          <?php } else { ?>
          <tr>
            <td class="center" colspan="7"><?php if ($phototestimonial_total!=-1) echo $text_no_results; else echo $entry_install_first; ?></td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
    </form>
    <div class="pagination"><?php echo $pagination; ?></div>
  </div>
</div>

<?php if ($phototestimonial_total!=-1) { ?>
    	  <div class="box"><div class="heading"><div class="buttons"><a href="<?php echo $module_settings_path; ?>" class="button"><span><?php echo $text_module_settings; ?></span></a></div></div></div>
<?php } ?>

				<script type="text/javascript"><!--
				$('.columnstatus').click(function() {
					var object_id=$(this).attr('id');
					$.ajax({
						url: '<?php echo htmlspecialchars_decode($update_status);?>',
						type: 'get',
						data: {object_id:object_id},
						dataType: 'html',
						success: function(html) {
							if(html!=''){
								if (html=='1')	
								$('#'+object_id).html('<?php echo $this->language->get('text_enabled'); ?>');	
								else
								$('#'+object_id).html('<?php echo $this->language->get('text_disabled'); ?>');	
		
								//$('#'+object_id).html(html);
							}
						}
					});
				});
				//--></script> 

<?php echo $footer; ?>
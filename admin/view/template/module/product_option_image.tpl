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
      <div class="buttons"><a onclick="$('#form').submit()" class="button"><?php echo $button_save; ?></a><a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table id="module" class="form">
            <tr>
              <td><?php echo $entry_enable; ?></td>
              <td><select id="poi_module_enable" name="poi_module_enable" onchange="show_select_onchange()">
                    <?php if ($enable == $text_yes) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else if ($enable == $text_no) { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select></td>
            </tr>
			<?php if($enable == $text_yes) { ?>
				<tr style="visibility:visible;" id="show_selected_image_in_cart">
			<?php } else { ?>
				<tr style="visibility:hidden;" id="show_selected_image_in_cart">
			<?php }?>
              <td><?php echo $entry_show_selected_image_in_cart; ?></td>
              <td><select id="poi_module_show_selected_image_in_cart" name="poi_module_show_selected_image_in_cart" >
                    <?php if ($show_image_enable == $text_yes) { ?>
                    <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                    <option value="0"><?php echo $text_no; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_yes; ?></option>
                    <option value="0" selected="selected"><?php echo $text_no; ?></option>
                    <?php } ?>
                  </select></td>
            </tr>
        </table>
			
      </form>
    </div>
  </div>
</div>
<script type="text/javascript">
	function show_select_onchange() {
		var poi_enable = document.getElementById("poi_module_enable");
		var option_enable = poi_enable.options[poi_enable.selectedIndex].value;
		if(option_enable == 1) {
			document.getElementById("show_selected_image_in_cart").style.visibility = 'visible';
		}
		else {
			document.getElementById("show_selected_image_in_cart").style.visibility = 'hidden';
		}
	}
</script>
<?php echo $footer; ?>
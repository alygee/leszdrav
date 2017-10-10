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
      <h1><img src="view/image/order.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <div id="languages" class="htabs">
          <?php foreach ($languages as $language) { ?>
          <a href="#language<?php echo $language['language_id']; ?>"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
          <?php } ?>
        </div>
        <?php foreach ($languages as $language) { ?>
        <div id="language<?php echo $language['language_id']; ?>">
          <table class="form">
            <tr>
              <td><span class="required">*</span> <?php echo $entry_title; ?></td>
              <td><input type="text" name="variantproduct_description[<?php echo $language['language_id']; ?>][title]" size="100" value="<?php echo isset($variantproduct_description[$language['language_id']]) ? $variantproduct_description[$language['language_id']]['title'] : ''; ?>" />
                <?php if (isset($error_title[$language['language_id']])) { ?>
                <span class="error"><?php echo $error_title[$language['language_id']]; ?></span>
                <?php } ?>
              </td>
            </tr>
            <tr>
              <td><?php echo $entry_label; ?></td>
              <td><input type="text" name="variantproduct_description[<?php echo $language['language_id']; ?>][label]" size="100" value="<?php echo isset($variantproduct_description[$language['language_id']]) ? $variantproduct_description[$language['language_id']]['label'] : ''; ?>" />
              </td>
            </tr>			
          </table>
        </div>
        <?php } ?>
        <table class="form">
          <tr>
            <td><?php echo $entry_sort_order; ?></td>
            <td><input type="text" name="sort_order" value="<?php echo $sort_order; ?>" size="1" /></td>
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
            </select>
            </td>
          </tr>
            <tr>
              <td><?php echo $entry_product; ?></td>
              <td><input type="text" name="main" value="" /></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><div id="product-main" class="scrollbox">
                  <?php $class = 'odd'; ?>
                   <?php foreach ($products as $product) { ?>
                  <?php $class = ($class == 'even' ? 'odd' : 'even'); ?>
				  <?php if (in_array($product['product_id'], $product_variantproduct)) { ?>
                  <div id="product-main<?php echo $product['product_id']; ?>" class="<?php echo $class; ?>"> <?php echo $product['name']; ?><img src="view/image/delete.png" alt="" />
                    <input type="hidden" name="product[]" value="<?php echo $product['product_id']; ?>" />
                  </div>
				  <?php } ?>
                  <?php } ?>
                </div></td>
            </tr>
        </table>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
// Main
$('input[name=\'main\']').autocomplete({
	delay: 500,
	source: function(request, response) {
		$.ajax({
			url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request.term),
			dataType: 'json',
			success: function(json) {		
				response($.map(json, function(item) {
					return {
						label: item.name,
						value: item.product_id
					}
				}));
			}
		});
	}, 
	select: function(event, ui) {
		$('#product-main' + ui.item.value).remove();
		
		$('#product-main').append('<div id="product-main' + ui.item.value + '">' + ui.item.label + '<img src="view/image/delete.png" alt="" /><input type="hidden" name="product[]" value="' + ui.item.value + '" /></div>');

		$('#product-main div:odd').attr('class', 'odd');
		$('#product-main div:even').attr('class', 'even');
				
		return false;
	},
	focus: function(event, ui) {
      return false;
   }
});

$('#product-main div img').live('click', function() {
	$(this).parent().remove();
	
	$('#product-main div:odd').attr('class', 'odd');
	$('#product-main div:even').attr('class', 'even');	
});
//--></script> 
<script type="text/javascript"><!--
<?php foreach ($languages as $language) { ?>
CKEDITOR.replace('content<?php echo $language['language_id']; ?>', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});
<?php } ?>
//--></script>
<script type="text/javascript"><!--
$('#languages a').tabs();
//--></script>
<?php echo $footer; ?>
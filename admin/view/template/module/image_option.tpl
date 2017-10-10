<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
        <table id="module" class="list">
          <thead>
            <tr>
              <td class="left"><?php echo $entry_layout; ?></td>
              <td class="left"><?php echo $entry_position; ?></td>
              <td class="left"><?php echo $entry_status; ?></td>
              <td class="right"><?php echo $entry_sort_order; ?></td>
            </tr>
          </thead>
          <?php $module_row = 0; ?>
          <?php foreach ($modules as $module) { ?>
          <tbody id="module-row<?php echo $module_row; ?>">
            <tr>
              <td class="left">
                  <?php foreach ($layouts as $layout) { ?>
                    <?php if ($layout['layout_id'] == $module['layout_id']) { ?>
                      <?php echo $layout['name']; ?>
                    <?php } ?>
                  <?php } ?>
              </td>
              <td class="left">
                  <?php if ($module['position'] == 'content_top') { ?>
                    <?php echo $text_content_top; ?>
                  <?php } ?>
                  <?php if ($module['position'] == 'content_bottom') { ?>
                    <?php echo $text_content_bottom; ?>
                  <?php } ?>
                  <?php if ($module['position'] == 'column_left') { ?>
                    <?php echo $text_column_left; ?>
                  <?php } ?>
                  <?php if ($module['position'] == 'column_right') { ?>
                    <?php echo $text_column_right; ?>
                  <?php } ?>
              </td>
              <td class="left">
                  <?php if ($module['status']) { ?>
                    <?php echo $text_enabled; ?>
                  <?php } else { ?>
                    <?php echo $text_disabled; ?>
                  <?php } ?>
              </td>
              <td class="right">
                <?php echo $module['sort_order']; ?>
              </td>
            </tr>
          </tbody>
          <?php $module_row++; ?>
          <?php } ?>
        </table>
    </div>
  </div>
</div>
<?php echo $footer; ?>
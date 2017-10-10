<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <?php echo $text_message; ?>
  <form method="POST" name="myform" action="<?php echo $pay; ?>" id="myform"  
  <?php if ($this->config->get('yandexsimple_new_window')){ echo 'target="_blank"'; } ?> >
  	<input type="hidden" name="nesyandexa" value="nesyandexa"> 
  <div class="buttons">
    <div class="right"><input type="submit" value="<?php echo $button_pay; ?>" class="button" ></div>
  </div> 
  </form>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>
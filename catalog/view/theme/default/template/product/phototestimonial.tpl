<?php echo $header; ?>
<div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
</div>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><h1 class="heading-title"><?php echo $heading_title; ?></h1><?php echo $content_top; ?>
     
    
  
  <div class="middle">

    <?php if (true/*$phototestimonials*/) { ?>
    
      <?php foreach ($phototestimonials as $phototestimonial) { ?>
      <table class="content" width="100%" border=0>
      <tr>
         <td valign="top" style="text-align:left;" colspan="2"><b><?php echo $phototestimonial['title']; ?></b></td>
      </tr>
      <tr>
      	<td style="text-align:left;" width="20%">

		<?php if ($phototestimonial['avatar']!="") { ?>
		
		<a class="photobox"  title="<?php echo $phototestimonial['name']; ?>" href="<?php echo $phototestimonial['avatar_big']; ?>">
		<img style="float: left; padding: 0px 10px 0px 0px;" src="<?php echo $phototestimonial['avatar']; ?>" title="<?php echo $phototestimonial['title']; ?>">
		</a>
		
		<?php } ?>

		</td><td  style="text-align:left;">

                <?php echo $phototestimonial['description']; ?>
			<br>

		<?php
		foreach ($phototestimonial['images'] as $im)
		{
			echo '<a class="photobox"  title="" href="' . $im['path_big'] . '">';
			echo '<img style="float: left; padding: 0px 10px 0px 0px;" src="' . $im['path'] . '" title="">';
			echo '</a>';
		}
		?>


            </td>
      </tr>    

	<tr>
		<td colspan="2">
		</td>
	</tr>


     <tr>
		<td colspan="2" style="font-size: 0.9em; text-align: right;">
                <?php if ($phototestimonial['rating']) { ?>
                <?php echo $text_average; ?><br>
                  <img src="catalog/view/theme/default/image/phototestimonials/stars-<?php echo $phototestimonial['rating'] . '.png'; ?>" style="margin-top: 2px;" />
                  <?php } ?><br>
		-&nbsp;<i>

		<?php if ($phototestimonial['page']!="")  { ?>

		<a href="<?php echo $phototestimonial['page']; ?>" style="text-decoration: none;"><?php echo $phototestimonial['page']; ?>

		<?php if ($phototestimonial['name']!="") echo $phototestimonial['name']; ?>

		<?php if($phototestimonial['page_icon']!="") { ?>
		<img src="<?php echo $phototestimonial['page_icon']; ?>" border="0" height="16" width="16" style="vertical-align:middle;"> 
		<?php } ?>
		</a>

		<?php } else { ?>

		<?php if ($phototestimonial['name']!="") echo $phototestimonial['name']; ?>

		<?php }  ?>

		<?php echo ' <br>'.$phototestimonial['city'].' '.$phototestimonial['date_added']; ?></i>

             </td>
        </td>
      </tr>

	</table>
      <?php } ?>

    	<?php if ( isset($pagination)) { ?>
    		<div class="pagination"><?php echo $pagination;?></div>
    		<div class="buttons" align="right"><a class="button" href="<?php echo $write_url;?>" title="<?php echo $write;?>"><span><?php echo $write;?></span></a></div>
    	<?php }?>

    	<?php if (isset($showall_url)) { ?>
    		<div class="buttons" align="right"><a class="button" href="<?php echo $write_url;?>" title="<?php echo $write;?>"><span><?php echo $write;?></span></a> &nbsp;<a class="name" href="<?php echo $showall_url;?>" title="<?php echo $showall;?>"><span><?php echo $showall;?></span></a></div>
    	<?php }?>
    <?php } ?>
  </div>
  <div class="bottom">
    <div class="left"></div>
    <div class="right"></div>
    <div class="center"></div>
  </div>
</div>


<script type="text/javascript"><!--
$('.photobox').fancybox({cyclic: true});
//--></script>

<script type="text/javascript"><!--
$(document).ready(function() {
	$('.photobox').colorbox({
		overlayClose: true,
		opacity: 0.5
	});
});
//--></script> 

<?php echo $footer; ?> 
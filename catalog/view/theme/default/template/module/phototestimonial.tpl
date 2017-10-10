<div class="box">
  <div class="box-heading" style="font-size: 16px !important;background: #75b727 !important;color: #fff;"><?php if ($phototestimonial_title=="") echo "<br>"; else echo $phototestimonial_title; ?></div>
  <div class="box-content">
    <div class="box-product" style="zoom: 1;">

    <table border=0 style="width: 100%">
      <?php foreach ($phototestimonials as $phototestimonial) { ?>
      <tr><td>

          <div class="name"><b><?php echo $phototestimonial['title']; ?></b></div>

          <div class="description" style="display:inline-block;width:100%">

<?php if ($phototestimonial['avatar']!="") { ?>

<a class="photobox"  title="<?php echo $phototestimonial['name']; ?>" href="<?php echo $phototestimonial['avatar_big']; ?>">
<img style="float: left; padding: 0px 10px 0px 0px;" src="<?php echo $phototestimonial['avatar']; ?>">
</a>

<?php } ?>

<?php echo $phototestimonial['description'] ; ?>

<br>

<?php
foreach ($phototestimonial['images'] as $im)
{
	echo '<a class="photobox"  title="" href="' . $im['path_big'] . '">';
	echo '<img style="float: left; padding: 0px 10px 0px 0px;" src="' . $im['path'] . '" title="">';
	echo '</a>';
}
?>


</div><br>

          <div width=100% style="text-align:right; margin-bottom:12px; padding-bottom:4px;border-bottom:dotted silver 1px;">


                <?php if ($phototestimonial['rating']) { ?>
                  <img src="catalog/view/theme/default/image/phototestimonials/stars-<?php echo $phototestimonial['rating'] . '.png'; ?>" style="margin-top: 2px;" />
                <?php } ?>



		<?php if ($phototestimonial['page']!="")  { ?>

		<a href="<?php echo $phototestimonial['page']; ?>" style="text-decoration: none;">

		<?php if ($phototestimonial['name']!="") echo '<br>'.$phototestimonial['name']; ?>

		<?php if($phototestimonial['page_icon']!="") { ?>
		<img src="<?php echo $phototestimonial['page_icon']; ?>" border="0" height="16" width="16" style="vertical-align:middle;"> 
		<?php } ?>
		</a>

		<?php } else { ?>

		<?php if ($phototestimonial['name']!="") echo '<br>'.$phototestimonial['name']; ?>

		<?php }  ?>

		<?php if ($phototestimonial['city']!="") echo '<br>'.$phototestimonial['city']; ?>

<br><br>

		</div>

       </td>
      </tr>

      <?php } ?>

<tr><td>

	<div align="right"><a class="ot"  href="<?php echo $showall_url;?>"><?php echo $show_all; ?>(<?php echo $total ?>)</a></div>
	<div align="right"><a class="ot"  href="<?php echo $isitesti; ?>"><?php echo $isi_phototestimonial; ?></a></div>

</td></tr>
    </table>

	

    </div>
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
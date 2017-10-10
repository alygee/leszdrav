<?php echo $header; ?>

<div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <span itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>" itemprop="url"><span itemprop="title"><?php echo $breadcrumb['text']; ?></span></a></span>
    <?php } ?>
</div>


<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

 <h1 class="heading-title"><?php echo $heading_title; ?></h1>

<?php echo $content_top; ?>

   
    <?php if (isset($error_warning)) { ?> 
        <?php if ($error_warning) { ?>
            <div class="warning"><?php echo $error_warning; ?></div>
        <?php } ?>
    <?php } ?>
    

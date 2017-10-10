<div class="simplecheckout-block-heading"><?php echo $text_checkout_payment_method ?></div>
<?php if ($simple_show_errors && $error_warning) { ?>
    <div class="simplecheckout-warning-block"><?php echo $error_warning ?></div>
<?php } ?>  
<div class="simplecheckout-block-content">
    <?php if (!empty($disabled_methods)) { ?>
        <table class="simplecheckout-methods-table" style="margin-bottom:0px;">
            <?php foreach ($disabled_methods as $key => $value) { ?>
                <tr>
                    <td class="code">
                        <input type="radio" name="disabled_payment_method" disabled="disabled" value="<?php echo $key; ?>" id="<?php echo $key; ?>" />
                    </td>
                    <td class="title">
                        <label for="<?php echo $key; ?>">
                            <?php 
            
                if (isset($value['image']) and !empty($value['image']) ) {
                    $pos = strpos($value['image'], HTTP_IMAGE);
                    if ($pos) {
                        $value['image'] = substr($value['image'], ($pos+strlen(HTTP_IMAGE)) );
                        $pos2 = strpos($value['image'], '"');
                        if ($pos2) {
                            $value['image'] = substr($value['image'], 0, $pos2);
                        }
                    }
                    ?>
                    <img src="<?php echo HTTP_IMAGE.$value['image'];?>"/>
                    <?php
                    echo '<span style="vertical-align:10px;">'.$value['title'].'</span>';
                }
                else {
                    echo $value['title'];
                }
            
             ?>
                        </label>
                    </td>
                </tr>
                <?php if (!empty($value['description'])) { ?>
                    <tr>
                        <td class="code">
                        </td>
                        <td class="title">
                            <label for="<?php echo $key; ?>"><?php echo $value['description']; ?></label>
                        </td>
                    </tr>
                <?php } ?>
            <?php } ?>
        </table>
    <?php } ?>
    <?php if (!empty($payment_methods)) { ?>
        <table class="simplecheckout-methods-table">
            <?php foreach ($payment_methods as $payment_method) { ?>
                <tr>
                    <td class="code">
                        <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" <?php if ($payment_method['code'] == $code) { ?>checked="checked"<?php } ?> onchange="simplecheckout_reload('payment_changed')" />
                    </td>
                    <td class="title">
                        <label for="<?php echo $payment_method['code']; ?>"><?php 
            
                if (isset($payment_method['image']) and !empty($payment_method['image']) ) {
                    $pos = strpos($payment_method['image'], HTTP_IMAGE);
                    if ($pos) {
                        $payment_method['image'] = substr($payment_method['image'], ($pos+strlen(HTTP_IMAGE)) );
                        $pos2 = strpos($payment_method['image'], '"');
                        if ($pos2) {
                            $payment_method['image'] = substr($payment_method['image'], 0, $pos2);
                        }
                    }
                ?>
                    <img src="<?php echo HTTP_IMAGE.$payment_method['image'];?>"/>
                <?php
                    echo '<span style="vertical-align:10px;">'.$payment_method['title'].'</span>';
                }
                else {
                    echo $payment_method['title'];
                }
            
             ?></label>
                    </td>
                </tr>
                <?php if (!empty($payment_method['description'])) { ?>
                    <tr>
                        <td class="code">
                        </td>
                        <td class="title">
                            <label for="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['description']; ?></label>
                        </td>
                    </tr>
                <?php } ?>
            <?php } ?>
        </table>
        <input type="hidden" name="payment_method_current" value="<?php echo $code ?>" />
        <input type="hidden" name="payment_method_checked" value="<?php echo $checked_code ?>" />
    <?php } ?>
    <?php if (empty($payment_methods) && $address_empty && $simple_payment_view_address_empty) { ?>
        <div class="simplecheckout-warning-text"><?php echo $text_payment_address; ?></div>
    <?php } ?>
    <?php if (empty($payment_methods) && !$address_empty) { ?>
        <div class="simplecheckout-warning-text"><?php echo $error_no_payment; ?></div>
    <?php } ?>
</div>
<?php if ($simple_debug) print_r($address); ?>
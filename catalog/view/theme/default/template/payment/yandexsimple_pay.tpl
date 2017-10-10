<form method="POST" name="form" action="https://money.yandex.ru/quickpay/confirm.xml"> 
 <input type="hidden" name="receiver" value="<?php echo $receiver ?>"> 
 <input type="hidden" name="formcomment" value="<?php echo $this->config->get('config_name'); ?> : заказ <?php echo $order_id ?>"> 
 <input type="hidden" name="short-dest" value="<?php echo $this->config->get('config_name'); ?> : заказ <?php echo $order_id ?>"> 
 <input type="hidden" name="label" value="<?php echo $order_id ?>"> 
 <input type="hidden" name="quickpay-form" value="shop">
 <input type="hidden" name="targets" value="оплата заказа <?php echo $order_id ?>"> 
 <input type="hidden" name="sum" value="<?php echo $total ?>" data-type="number" >
 <input type="hidden" name="comment" value="" >
 <input type="hidden" name="need-fio" value="false"> 
 <input type="hidden" name="need-email" value="false" > 
 <input type="hidden" name="need-phone" value="false"> 
 <input type="hidden" name="need-address" value="false"> 
 <input type="hidden" name="paymentType" value="PC">
</form> 
<script>
document.form.submit();
</script>
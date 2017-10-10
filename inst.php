<?php
	echo '<meta http-equiv="content-type" content="text/html; charset=utf-8" />';
	$error = 0;
	$file = "admin/model/catalog/product.php";
	$text = "this->addProduct(";
	$pos = Find($file, $text, 1, $body);
	if ($pos == 'no') {
		echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
		$error++;
	} else {
		$a = substr($body, $pos-60, 120);	
		if (!substr_count($body, 'suppler')) {
			$text = '		
			
			$row1 = $this->getMaxModel();
			$max_mod = $row1["max(product_id)"];
			$next_code = $max_mod + 1;
			$p = strpos($data["model"], "-");
			if (!$p) strpos($data["model"], "~");
			if ($p) {
				$p = substr($data["model"], $p);
				$data["model"] = $next_code.$p;   /*suppler*/
			}
	
';
			Insert($file, $pos, $text, $error);
		}	
	}	
	
	$text = "public function getProducts(";	
	$pos = FindText($file, $text, 1);
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') {
			echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = '
		
	public function getMaxModel() {		
		$query = $this->db->query("SELECT max(product_id) FROM " . DB_PREFIX . "product");			
		return $query->row;
	} /*suppler*/ 
	
	';
	
				Insert($file, $pos, $text, $error);
		}		
	}
	$text = "optsku=";	
	$pos = FindText($file, $text, 1);	
	if ($pos == 'no') {
		$text = ", weight_prefix";	
		$pos = FindText($file, $text, 1);
		if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
		else {
			if ($pos == 'no') {
				echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
				$error++;
			} else {	
			$text = " optsku= '".'" . $this->db->escape($product_option_value["optsku"]) . "'."', ";
	
				Insert($file, $pos, $text, $error);
			}	
		}		
	}
	$text = "optsku=";	
	$pos = FindText($file, $text, 2);	
	if ($pos == 'no') {
		$text = ", weight_prefix";	
		$pos = FindText($file, $text, 2);
		if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
		else {
			if ($pos == 'no') {
				echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
				$error++;
			} else {	
			$text = " optsku= '".'" . $this->db->escape($product_option_value["optsku"]) . "'."', ";

				Insert($file, $pos, $text, $error);
			}	
		}		
	}
	$text = "'weight_prefix'";	
	$pos = FindText($file, $text, 3);
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = '
					"optsku"          		  => $product_option_value["optsku"], /*suppler*/
';	
			Insert($file, $pos, $text, $error);	
		}	
	}
	
	$file = "admin/controller/catalog/product.php";
	$text = "this->request->get['product_id']);";	
	$pos = FindAfter($file, $text, 1);
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = ' else {
			$row = $this->model_catalog_product->getMaxModel();
			$max_model = $row["max(product_id)"];
			$next_code = $max_model + 1;
			$next_code = $next_code."-";
		} /*suppler*/
';
	
			Insert($file, $pos, $text, $error);	
		}	
	}
	$text = "this->data['model'] = ''";
	$pos = FindText($file, $text, 1);
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') echo 'PERHAPS Text: <b>' . $text . '</b> already replaced in file: ' . $file . ' <br />';
		 else {	
		$rep = 'this->data["model"] = $next_code; /*suppler*/';
			Replace($file, $pos, $text, $rep, $error);
		}
	}
	$text = "this->data['entry_manufacturer']";	
	$pos = FindText($file, $text, 1);
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = '
		$this->data["entry_optsku"] = $this->language->get("entry_optsku"); /*suppler*/
';	
			Insert($file, $pos, $text, $error);	
		}	
	}
	$text = "'weight_prefix'";	
	$pos = FindText($file, $text, 1);
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = '
						"optsku"          		  => $product_option_value["optsku"], /*suppler*/
';	
			Insert($file, $pos, $text, $error);	
		}	
	}
	
	$file = "admin/view/template/catalog/product_form.tpl";
	$text = "entry_weight; ?></";
	$pos = FindAfter2($file, $text, 2);		
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = ' 
				<td class="right"><?php echo $entry_optsku; ?></td> <!-- *suppler* -->
';
	
			Insert($file, $pos, $text, $error);	
		}	
	}
	$text = '<td class="left"><a onclick';
	$pos = FindText($file, $text, 3);		
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = ' 
					<td><input type="text" name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][optsku]" value="<?php echo $product_option_value["optsku"]; ?>" size="12" /></td> <!-- *suppler* -->
';
					
			Insert($file, $pos, $text, $error);	
		}	
	}
	
	$text = 'colspan="7"';
	$pos = FindText($file, $text, 1);	
	if ($pos == 'no') {
		$text = '<td colspan="6"></td>';
		$pos = FindText($file, $text, 1);
		
		if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
		else {
			if ($pos == 'no') echo 'PERHAPS Text: <b>' . $text . '</b> already replaced in file: ' . $file . ' <br />';
			else {	
			$rep = '<td colspan="7"></td> <!-- *suppler* -->';
				Replace($file, $pos, $text, $rep, $error);
			}
		}	
	}	
	$text = "html += '        <td></td>';";
	$pos = FindText($file, $text, 1);	
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . '+=' . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = " 
			html += '        <td class=" . '"right"' . '><?php echo $entry_optsku; ?></td>'."'" . "; <!-- *suppler* -->
";
					
			Insert($file, $pos, $text, $error);	
		}	
	}	
	$text = "html += '    <td class=".'"left"><a onclick="$';
	$pos = FindText($file, $text, 2);
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . '+=' . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = " 
	html += '".'    <td><input type="text" name="product_option['."' + option_row + '][product_option_value][' + option_value_row + ']".'[optsku]" value="" size="12" /></td>'."'; <!-- *suppler* -->
";
					
			Insert($file, $pos, $text, $error);	
		}	
	}
	
	$file = "admin/controller/common/header.php";
	$text = "this->data['text_module'] ";	
	$pos = FindText($file, $text, 1);
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = ' 
		$this->data["text_suppler"] = $this->language->get("text_suppler");  /*suppler*/ ';
	
			Insert($file, $pos, $text, $error);	
		}	
	}
	
	$text = "this->data['module'] ";	
	$pos = FindText($file, $text, 1);	
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = ' 
			$this->data["suppler"] = $this->url->link("catalog/suppler", "token=" . $this->session->data["token"], "SSL");  /*suppler*/ ';
	
			Insert($file, $pos, $text, $error);
		}	
	}

	$file = "admin/controller/report/product_purchased.php";
	$text = "this->data['products'][] = arr";	
	$pos = FindAfter1($file, $text, 1);	
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = ' 
				"profit"     => $result["profit"], /*suppler*/
';
	
				Insert($file, $pos, $text, $error);
		}		
	}	
	
	$text = "url = ''";	
	$pos = FindText($file, $text, 1);	
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = ' 
		if (isset($this->request->get["filter_model"])) {
			$filter_model = $this->request->get["filter_model"];
		} else {
			$filter_model = "0";
		} /*suppler*/ 
';
	
			Insert($file, $pos, $text, $error);
		}	
	}
	
	$text = "this->data['breadcrumbs'] = array()";	
	$pos = FindText($file, $text, 1);	
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = ' 
		if (isset($this->request->get["filter_model"])) {
			$url .= "&filter_model =" . $this->request->get["filter_model"];
		}  /*suppler*/ 
';
	
			Insert($file, $pos, $text, $error);
		}	
	}
	
	$text = "'start'";	
	$pos = FindText($file, $text, 1);	
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = ' 
			"filter_model"           => $filter_model, /*suppler*/ 
';
	
			Insert($file, $pos, $text, $error);
		}	
	}
	
	$text = "this->data['button_filter'] =";	
	$pos1 = FindText($file, $text, 1);	
	if ($pos1 == 'yes') {
		$text = 'this->data["column_profit"] = ';	
		$pos = Find($file, $text, 1, $body);
		if ($pos == 'no') {
			$text = 'this->data["entry_supp"] = ';	
			$pos = Find($file, $text, 1, $body);
			if ($pos == 'no') {
				echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
				$error++;
			} else {
				$text = ' 
		$this->data["column_profit"] = $this->language->get("column_profit");';
			Insert($file, $pos, $text, $error);
			}	
		} else 	echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	} else {
		if ($pos1 == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = ' 
		$this->data["column_profit"] = $this->language->get("column_profit");
		$this->data["entry_supp"] = $this->language->get("entry_supp");
		$this->data["text_total"] = $this->language->get("text_total"); /*suppler*/ ';
			Insert($file, $pos1, $text, $error);
		}	
	}
	
	$text = "pagination = new Pagination()";	
	$pos = FindText($file, $text, 1);	
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = ' 
		if (isset($this->request->get["filter_model"])) {
			$url .= "&filter_model =" . $this->request->get["filter_model"];
		} /*suppler*/ ';
	
			Insert($file, $pos, $text, $error);
		}	
	}

	$file = "admin/controller/sale/order.php";	
	$text = "product_data[] = array(";	
	$pos = FindText($file, $text, 1);	
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = '
					$prod = $this->model_sale_order->getOrderWarranty($product["product_id"]);
					if (!isset($prod["text"])) $prod["text"] = "";  /*suppler*/
					';
					
			Insert($file, $pos, $text, $error);
		}	
	}

	$text = "product_data[] = arr";
	$pos = FindAfter1($file, $text, 1);	
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = '
						"warranty" => $prod["text"], /*suppler*/
';
	
			Insert($file, $pos, $text, $error);	
		}	
	}
	
	$text = "'product'";	
	$pos1 = FindText($file, $text, 1);	
	if ($pos1 == 'yes') {
		$text = '"lastname"';	
		$pos = Find($file, $text, 1, $body);
		if ($pos == 'no') {
			$text = '"store_owner"';	
			$pos = Find($file, $text, 1, $body);
			if ($pos == 'no') {
				echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
				$error++;
			} else {
				$text = ' 
					"firstname"			 => $order_info["firstname"],
					"lastname"			 => $order_info["lastname"],';
			Insert($file, $pos, $text, $error);
			}	
		} else 	echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	} else {
		if ($pos1 == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = ' 
					"firstname"			 => $order_info["firstname"],
					"lastname"			 => $order_info["lastname"],
					"store_owner"	     => $this->config->get("config_owner"), /*suppler*/
';
	
			Insert($file, $pos1, $text, $error);	
		}	
	}
	
	$file = "admin/model/sale/order.php";
	$text = "foreach";	
	$pos = FindAfter3($file, $text, 1);
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = '
		
		/*suppler*/
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "suppler_base_price WHERE `product_id` = ' . '" . (int)$product[' . '"product_id"] . "' . '");
			
		if (empty($query->rows)) $query->rows[0]["bprice"] = 0;
	';
		
			Insert($file, $pos, $text, $error);
		}	
	}
	
	$text = "tax =";	
	$pos = Find($file, $text, 1, $body);
	$t = '';
	$t = substr($body, $pos, 15); 
	if (substr_count($t, 'suppler')) echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') echo 'PERHAPS Text: <b>' . $text . '</b> already replaced in file: ' . $file . ' <br />';
		else {	
		$text = " bprice = '" . '" . (float)$query->rows[0]["bprice"] . "' . "', /*suppler*/ ";
	
			Insert($file, $pos, $text, $error);
		}	
	}
	
	$text = "public function getOrderProducts";	
	$pos = FindText($file, $text, 1);	
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = '
		
	public function getOrderWarranty($product_id) {
		$n1 = "Warranty";
		$n2 = "Гаран";
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_attribute a LEFT JOIN " . DB_PREFIX . "attribute_description d ON (d.attribute_id = a.attribute_id) WHERE a.product_id = ' . "'" . '" . $product_id . "' . "'" . ' AND (d.name LIKE ' . "'" . '" . $n1 . "%' . "'" . ' OR d.name LIKE ' . "'" . '" . $n2 . "%' . "'" . ')");
		
		return $query->row;		
	} /*suppler*/
	';
		
			Insert($file, $pos, $text, $error);
		}	
	}	
		
	$file = "admin/language/english/common/header.php";
	$text = "['text_module']";	
	$pos = FindText($file, $text, 1);	
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = '
$_["text_suppler"]                	   = "Suppliers"; /*suppler*/
';
	
			Insert($file, $pos, $text, $error);
		}	
	}
	
	$file = "admin/language/english/catalog/product.php";
	$text = "'Model';";
	$pos = FindText($file, $text, 1);
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') echo 'PERHAPS Text: <b>' . $text . '</b> already replaced in file: ' . $file . ' <br />';
		else {	
		$rep = '"Product code"; /*suppler*/';
			Replace($file, $pos, $text, $rep, $error);
		}	
	}
	$text = "'Model:';";
	$pos = FindText($file, $text, 1);
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') echo 'PERHAPS Text: <b>' . $text . '</b> already replaced in file: ' . $file . ' <br />';
		else {	
		$rep = '"Product code:"; /*suppler*/';
			Replace($file, $pos, $text, $rep, $error);
		}	
	}
	$text = "'entry_status'";
	$pos = FindText($file, $text, 1);
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = ' 
  $_["entry_optsku"]      	 = "SKU:"; /*suppler*/ ';
	
			Insert($file, $pos, $text, $error);
		}	
	}
	
	$file = "admin/language/english/report/product_purchased.php";
	$text = "_['entry_status']";	
	$pos1 = FindText($file, $text, 1);	
	if ($pos1 == 'yes') {
		$text = '_["column_profit"]';	
		$pos = Find($file, $text, 1, $body);
		if ($pos == 'no') {
			$text = '_["text_total"]';	
			$pos = Find($file, $text, 1, $body);
			if ($pos == 'no') {
				echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
				$error++;
			} else {
				$text = '
$_["column_profit"]     = "Profit";
';
			Insert($file, $pos, $text, $error);
			}	
		} else 	echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	} else {
		if ($pos1 == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = '
$_["column_profit"]     = "Profit";		
$_["text_total"]        = "Total:";
$_["entry_supp"]        = "Supplier ID:"; /*suppler*/
 ';
	
			Insert($file, $pos1, $text, $error);	
		}	
	}
	
	$text = "'Model';";
	$pos = FindText($file, $text, 1);
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') echo 'PERHAPS Text: <b>' . $text . '</b> already replaced in file: ' . $file . ' <br />';
		else {	
		$rep = '"Product code"; /*suppler*/';
			Replace($file, $pos, $text, $rep, $error);
		}	
	}	
	
	$file = "catalog/language/russian/product/product.php";
	$text = "'Модель:';";	
	$pos = FindText($file, $text, 1);
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') echo 'PERHAPS Text: <b>' . $text . '</b> already replaced in file: ' . $file . ' <br />';
		else {	
		$rep = '"Код товара:"; /*suppler*/';
			Replace($file, $pos, $text, $rep, $error);
		}	
	}
	
	$file = "catalog/model/checkout/order.php";
	$text = "foreach";	
	$pos = FindAfter3($file, $text, 1);
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') echo 'PERHAPS Text: <b>' . $text . '</b> already replaced in file: ' . $file . ' <br />';
		else {	
		$text = '
		
			/*suppler*/
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "suppler_base_price WHERE `product_id` = ' . '" . (int)$product[' . '"product_id"] . "' . '");
			
			if (empty($query->rows)) $query->rows[0]["bprice"] = 0;
';
	
			Insert($file, $pos, $text, $error);
		}	
	}
	$text = "tax =";	
	$pos = Find($file, $text, 1, $body);
	$t = '';
	$t = substr($body, $pos, 15); 
	if (substr_count($t, 'suppler')) echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') echo 'PERHAPS Text: <b>' . $text . '</b> already replaced in file: ' . $file . ' <br />';
		else {	
		$text = " bprice = '" . '" . (float)$query->rows[0]["bprice"] . "' . "', /*suppler*/ ";
	
			Insert($file, $pos, $text, $error);
		}	
	}
	
	$file = "admin/language/russian/catalog/product.php";
	$text = "'Модель';";	
	$pos = FindText($file, $text, 1);
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') echo 'PERHAPS Text: <b>' . $text . '</b> already replaced in file: ' . $file . ' <br />';
		else {	
		$rep = '"Код товара"; /*suppler*/';
			Replace($file, $pos, $text, $rep, $error);
		}	
	}
	
	$text = "'Модель:';";
	$pos = FindText($file, $text, 1);
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') echo 'PERHAPS Text: <b>' . $text . '</b> already replaced in file: ' . $file . ' <br />';
		else {	
		$rep = '"Код товара:"; /*suppler*/';
			Replace($file, $pos, $text, $rep, $error);
		}	
	}
	$text = "'Вес";
	$pos = FindText($file, $text, 1);
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = ' 
$_["entry_optsku"]      	 = "Артикул:"; /*suppler*/
  ';
	
			Insert($file, $pos, $text, $error);
		}	
	}
	
	$file = "admin/language/russian/common/header.php";
	$text = "['text_module']";	
	$pos = FindText($file, $text, 1);	
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = '
$_["text_suppler"]                	   = "Поставщики"; /*suppler*/
 ';
	
			Insert($file, $pos, $text, $error);	
		}	
	}

	$file = "admin/language/russian/report/product_purchased.php";
	$text = "_['entry_status']";	
	$pos1 = FindText($file, $text, 1);	
	if ($pos1 == 'yes') {
		$text = '_["column_profit"]';	
		$pos = Find($file, $text, 1, $body);
		if ($pos == 'no') {
			$text = '_["text_total"]';	
			$pos = Find($file, $text, 1, $body);
			if ($pos == 'no') {
				echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
				$error++;
			} else {
				$text = '
$_["column_profit"]     = "Прибыль";
';
			Insert($file, $pos, $text, $error);
			}	
		} else 	echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	} else {
		if ($pos1 == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = '
$_["column_profit"]     = "Прибыль";		
$_["text_total"]        = "Всего:";
$_["entry_supp"]        = "Код поставщика:"; /*suppler*/
 ';
	
			Insert($file, $pos1, $text, $error);	
		}	
	}
	
	$text = "'Модель';";
	$pos = FindText($file, $text, 1);
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') echo 'PERHAPS Text: <b>' . $text . '</b> already replaced in file: ' . $file . ' <br />';
		else {	
		$rep = '"Код товара"; /*suppler*/';
			Replace($file, $pos, $text, $rep, $error);
		}	
	}
	
	$file = "admin/model/report/product.php";
	$text = "GROUP BY op.";	
	$pos = FindText($file, $text, 1);	
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = ' 
		if (!empty($data["filter_model"])) {
			$sql .=" AND op.model LIKE  ' . "'%-" . '" . $data["filter_model"] . ' . '"' . "'" . '";' . '		
		} /*suppler*/
 ';  
	
			Insert($file, $pos, $text, $error);
		}	
	}
	
	$text = "SUM(op.quantity";	
	$pos = Find($file, $text, 1, $body);
	$t = '';
	$t = substr($body, $pos, 15); 
	if (substr_count($t, 'suppler')) echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = ' SUM( op.total - op.bprice * op.quantity) AS profit, /*suppler*/ '; 
	
			Insert($file, $pos, $text, $error);
		}	
	}
	
	$file = "admin/view/template/report/product_purchased.tpl";	
	$text = 'td style="text-align:';	
	$pos = FindText($file, $text, 1);	
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = ' 
		<td><?php echo $entry_supp; ?>
	    <input type="text" name="filter_model" value="0" id="data_model" size="3" /></td>  <!--*suppler*-->
 ';
	
			Insert($file, $pos, $text, $error);
		}	
	}
	
	$text = 'summa; ?>';
	$pos = Find1($file, $text, 1);	
	if ($pos == 'no') {
		$text = '<?php } else { ?>';
		$pos = Find($file, $text, 2, $body);
		if ($pos == 'no') {
			echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
			$text = '		
          <tr>		
            <td colspan="4" class="right"><b><?php echo $text_total."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" . $summa; ?></b> </td>
            <td colspan="4" class="right"><b><?php echo $text_total."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" . (int)$profit; ?></b> </td>
          </tr> <!--*suppler*-->
 ';			
			Insert($file, $pos, $text, $error);	
		}
	} else {
		$pos1 = $pos;
		$text = '(int)$profit';	
		$pos = Find($file, $text, 1, $body);
		if ($pos == 'no') {			
			$text = '
			<td colspan="4" class="right"><b><?php echo $text_total."&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" . (int)$profit; ?></b> </td>         
';
			Insert($file, $pos1, $text, $error);		
		} else 	echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	} 
	
	$text = '<td class="right">' . '<?php echo $product' . "['total']" . '; ?></td>';
	$pos = FindText($file, $text, 1);
	if ($pos == 'yes' or $pos == 'no') {
		$text = '$summa = $summa';
		$pos1 = Find1($file, $text, 1);	
		if ($pos1 == 'no') {
			echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {
			$text = '$profit+$product';
			$pos = Find1($file, $text, 1);	
			if ($pos == 'no') {
				$text = '
			<td class="right"><?php echo $product["profit"]; $profit = $profit+$product["profit"]; ?></td>
';
				Insert($file, $pos1, $text, $error);	
			} echo 'SUCCESS File: ' . $file . ' Text already installed <br />';
		}	
	} else {		
		$rep = '
		<td class="right"><?php $s = $product["total"]; echo $s;
		$len =  strlen($s);
		if (substr($s, $len-1, 1) == ".") $s = substr($s, 0, $len -1);
		$s = preg_replace("/[^0-9.,]/","",$s);
		if (substr_count($s, ".") and substr_count($s, ",")) $s = str_replace(",", "",$s);
		if (substr_count($s, ",") > 1) $s = str_replace(",", "",$s);
		if (substr_count($s, ",") == 1 and (strlen($s) - strpos($s, ",") == 3)) $s = str_replace(",", ".",$s);
		if (substr_count($s, ",") == 1 and (strlen($s) - strpos($s, ",") != 3)) $s = str_replace(",", "",$s);
		$s = trim($s); $summa = $summa+$s; ?></td> 
		<td class="right"><?php echo $product["profit"]; $profit = $profit+$product["profit"]; ?></td>  <!--*suppler*-->';
		
			Replace($file, $pos, $text, $rep, $error);	
	}
	
	$text = '<?php if ($products) { ?>';
	$pos = Find($file, $text, 1, $body);
	if ($pos == 'no') {
		$text = '<?php $summa = 0.0; if ($products) { ?>';
		$pos = Find($file, $text, 1, $body);
		if ($pos == 'no') echo 'PERHAPS Text already replaced in file: ' . $file . ' <br />';
		else {
			$rep = '<?php $summa = 0.0; $profit = 0.0; if ($products) { ?>';
			Replace($file, $pos, $text, $rep, $error);
			echo 'SUCCESS File: ' . $file . ' Text installed <br />';
		}
	} else {
		$rep = '<?php $summa = 0.0; $profit = 0.0; if ($products) { ?>  <!--*suppler*-->';
		Replace($file, $pos, $text, $rep, $error);
		echo 'SUCCESS File: ' . $file . ' Text installed <br />';
	}	
	
	
	$text = 'column_total';	
	$pos = FindAfter2($file, $text, 1);	
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = ' 
		   <td class="right"><?php echo $column_profit; ?></td> <!--*suppler*-->
 ';
	
			Insert($file, $pos, $text, $error);
		}	
	}
	
	$text = 'location = url';
	$pos = FindText($file, $text, 1);
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text: <b>' . $text . '</b> already installed <br />';
	else {
		if ($pos == 'no') { echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text: <b>' . $text . '</b> not found in file: ' . $file . ' <br />';
			$error++;
		} else {	
		$text = "
		var filter_model = $('input[name=\'filter_model\']').attr('value');	
	if (filter_model) {
		url += '&filter_model=' + encodeURIComponent(filter_model);
	} /*suppler*/
 ";
			Insert($file, $pos, $text, $error);
		}	
	}
	
	$file = "admin/view/template/common/header.tpl";
	$text = '<li><a href="<?php echo $download; ?>">';	
	$pos = FindText($file, $text, 1);	
	if ($pos == 'yes') echo 'SUCCESS File: ' . $file . ' Text already installed <br />';
	else {
		if ($pos == 'no') echo 'FAIL&nbsp;&nbsp;&nbsp;&nbsp;Text not found in file: ' . $file . ' <br />';
		else {	
		$text = ' 
		  <li><a href="<?php echo $suppler; ?>"><?php echo $text_suppler; ?></a></li> <!--*suppler*-->
 ';
	
			Insert($file, $pos, $text, $error);	
		}	
	}
	
	
	
	
	
	
	require_once 'config.php';
	
	$dbhost = DB_HOSTNAME;
	$dbuser = DB_USERNAME;
	$dbpass = DB_PASSWORD;
	$dbdatabase = DB_DATABASE;
	$dbprefix = DB_PREFIX;
	
	$conn = new mysqli($dbhost, $dbuser, $dbpass, $dbdatabase);
	if(!$conn ) die('Could not connect: ' . mysql_error());

	$sql = 'CREATE TABLE IF NOT EXISTS `' . $dbprefix . 'key`( '.
       'id INT NOT NULL AUTO_INCREMENT, '.
       'value text, '.
       'main_key  VARCHAR(256), '.
       'license_key text, '.       
       'primary key ( id ))';
	
	$retval = $conn->query($sql);
	if(!$retval ) die('Could not create table: ' . mysql_error());
	echo "Table key created successfully<br />";	
	$conn->close();

	$conn = new mysqli($dbhost, $dbuser, $dbpass, $dbdatabase);
	$query = "select * from `" . $dbprefix . "key` where `main_key`='local_key'";	
	$retval = $conn->query($query);
	if(!$retval) die('Could not read table: ' . mysql_error());	
	$rows = $retval->fetch_assoc();
	if (empty($rows)) {
		$query = "INSERT INTO `" . $dbprefix . "key` SET `value` = '', `main_key` = 'local_key', `license_key` = ''";
		$query_res = $conn->query($query);
		if($query_res) echo " Open new license";
		else echo " Can not write to table 'key'";
	}
	$conn->close();
	if (!$error) echo " MODULE SUCCESSFULLY INSTALLED";
	else echo 'Please, check ' . $error . ' error(s)';
	
  /*******************************************************/	
  
  function Replace($file, $pos, $text, $rep, &$error) {
		$body = file_get_contents($file);
		if (empty($body)) {
			echo 'Cannot read file: ' . $file . ' <br />';
			return;
		}	
		$h1 = substr($body, 0, $pos);
		$h2 = substr($body, $pos+1, 400);
		$h3 = substr($body, $pos+401);
		$h2 = str_replace($text, $rep , $h2);
		$body = $h1.$h2.$h3;
		$e = @file_put_contents($file, $body);
		if (!$e) {
			echo 'Not writable file: ' . $file . ' <br />';
			$error++;
		} else echo 'SUCCESS Replacement in file: ' . $file . ' was successful <br />';			
	}
	
	function Insert($file, $pos, $text, &$error) {		
		$body = file_get_contents($file);
		if (empty($body)) {
			echo 'Cannot read file: ' . $file . ' <br />';
			return;
		}
		$h1 = substr($body, 0, $pos);
		$h2 = substr($body, $pos+1);
		$body = $h1.$text.$h2;
		$e = @file_put_contents($file, $body);
		if (!$e) {
			echo 'Not writable file: ' . $file . ' <br />';
			$error++;
		} else echo 'SUCCESS Insert in file: ' . $file . ' was successful <br />';
	}
	
	function FindText($file, $text, $n) {
	//	$pos = 0;
		$body = file_get_contents($file);
		if (empty($body)) {
			echo 'Cannot read file: ' . $file . ' <br />';
			return "no";
		}
		$p = 0;
		for ($i=1; $i<=$n; $i++) {
			$pos = stripos($body, $text, $p);
			if (!$pos) return "no";			
			$p = $pos + 2;			
		}
		$h = substr($body, $pos-180, 400);
		if (substr_count($h, "*suppler*")) return "yes";
		
		for ($i=0; $i<60; $i++) {
			$s = substr($body, $pos-$i, 1);			
			if ($s == "}" or $s == ";" or $s == "," or $s == ">") break;
		}
		$pos = $pos - $i + 1;		
		
		return $pos;
	}
	
	function FindAfter($file, $text, $n) {
	//	$pos = 0;
		$body = file_get_contents($file);
		if (empty($body)) {
			echo 'Cannot read file: ' . $file . ' <br />';
			return "no";
		}
		$p = 0;
		for ($i=1; $i<=$n; $i++) {
			$pos = stripos($body, $text, $p);
			if (!$pos) return "no";			
			$p = $pos + 2;			
		}
		$h = substr($body, $pos-2, 400);
		if (substr_count($h, "*suppler*")) return "yes";		
		
		$pos = $pos + strlen($text);
		$pos = stripos($body, '}', $pos);
		if (!$pos) return "no";
		
		return $pos+1;
	}
	
	function FindAfter1($file, $text, $n) {
	//	$pos = 0;
		$body = file_get_contents($file);
		if (empty($body)) {
			echo 'Cannot read file: ' . $file . ' <br />';
			return "no";
		}
		$p = 0;
		for ($i=1; $i<=$n; $i++) {
			$pos = stripos($body, $text, $p);
			if (!$pos) return "no";			
			$p = $pos + 2;			
		}
		$h = substr($body, $pos-2, 400);
		if (substr_count($h, "*suppler*")) return "yes";		
		
		$pos = $pos + strlen($text);
		$pos = stripos($body, '(', $pos);
		if (!$pos) return "no";
		
		return $pos+1;
	}
	
	function FindAfter2($file, $text, $n) {
	//	$pos = 0;
		$body = file_get_contents($file);
		if (empty($body)) {
			echo 'Cannot read file: ' . $file . ' <br />';
			return "no";
		}
		$p = 0;
		for ($i=1; $i<=$n; $i++) {
			$pos = stripos($body, $text, $p);
			if (!$pos) return "no";			
			$p = $pos + 2;			
		}
		$h = substr($body, $pos-2, 100);
		if (substr_count($h, "*suppler*")) return "yes";		
		
		$pos = $pos + strlen($text);
		$pos = stripos($body, 'd>', $pos);
		if (!$pos) return "no";
		
		return $pos+2;		
	}
	
	function FindAfter3($file, $text, $n) {
	//	$pos = 0;
		$body = file_get_contents($file);
		if (empty($body)) {
			echo 'Cannot read file: ' . $file . ' <br />';
			return "no";
		}
		$p = 0;
		for ($i=1; $i<=$n; $i++) {
			$pos = stripos($body, $text, $p);
			if (!$pos) return "no";			
			$p = $pos + 2;			
		}
		$h = substr($body, $pos-2, 90);
		if (substr_count($h, "*suppler*")) return "yes";		
		
		$pos = $pos + strlen($text);
		$pos = stripos($body, '{', $pos);
		if (!$pos) return "no";
		
		return $pos+1;
	}

	function Find($file, $text, $n, &$body) {
	//	$pos = 0;
		$body = file_get_contents($file);
		if (empty($body)) {
			echo 'Cannot read file: ' . $file . ' <br />';
			return "no";
		}
		$p = 0;
		for ($i=1; $i<=$n; $i++) {
			$pos = stripos($body, $text, $p);
			if (!$pos) return "no";			
			$p = $pos + 2;			
		}		
		for ($i=0; $i<60; $i++) {
			$s = substr($body, $pos-$i, 1);			
			if ($s == "}" or $s == ";" or $s == "," or $s == ">") break;
		}
		$pos = $pos - $i + 1;		
		
		return $pos;
	}
	
	function Find1($file, $text, $n) {
	//	$pos = 0;
		$body = file_get_contents($file);
		if (empty($body)) {
			echo 'Cannot read file: ' . $file . ' <br />';
			return "no";
		}
		$p = 0;
		for ($i=1; $i<=$n; $i++) {
			$pos = stripos($body, $text, $p);
			if (!$pos) return "no";			
			$p = $pos + 2;			
		}				
		
		$pos = $pos + strlen($text);
		$pos = stripos($body, 'd>', $pos);
		if (!$pos) return "no";
		
		return $pos+2;
	}

?>

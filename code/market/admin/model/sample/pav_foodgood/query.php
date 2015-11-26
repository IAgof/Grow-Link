<?php 
$query['pavmegamenu'][]  = "DELETE FROM `".DB_PREFIX ."setting` WHERE `code`='pavmegamenu' and `key` = 'pavmegamenu_module'";
$query['pavmegamenu'][] =  " 
INSERT INTO `".DB_PREFIX ."setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(0, 0, 'pavmegamenu', 'pavmegamenu_module', '', 0);
";

$query['pavmegamenu'][]  = "DELETE FROM `".DB_PREFIX ."setting` WHERE `code`='pavmegamenu_params' and `key` = 'params'";
$query['pavmegamenu'][] =  " 
INSERT INTO `".DB_PREFIX ."setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES 
(0, 0, 'pavmegamenu_params', 'pavmegamenu_params', '[{\"id\":108,\"group\":0,\"cols\":1,\"subwidth\":350,\"submenu\":1,\"align\":\"aligned-left\",\"rows\":[{\"cols\":[{\"widgets\":\"wid-20\",\"colwidth\":12}]}]},{\"id\":109,\"group\":0,\"cols\":1,\"submenu\":1,\"align\":\"aligned-left\",\"rows\":[{\"cols\":[{\"widgets\":\"wid-17\",\"colwidth\":12}]}]},{\"submenu\":1,\"id\":112,\"align\":\"aligned-right\",\"subwidth\":350,\"group\":0,\"cols\":1,\"rows\":[{\"cols\":[{\"widgets\":\"wid-21\",\"colwidth\":12}]}]}]', 0);
";

$query['pavblog'][] ="
INSERT INTO `".DB_PREFIX ."layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES(134, 14, 0, 'pavblog/%');";
$query['pavblog'][] ="
INSERT INTO `".DB_PREFIX ."layout` (`layout_id`, `name`) VALUES (14, 'Pav Blog');";
?>

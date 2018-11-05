<?php
class ModelCatalogBlock extends Model {

	//所有板块
    public function getBlocks($data = array()){
		
		//$sql = "select c1.category_id,c1.parent_id,cd.language_id,cd.name,cd.path,concat(cd.path,c1.category_id) from  " . DB_PREFIX . "category c1 LEFT JOIN  " . DB_PREFIX . "category_description cd ON (c1.category_id=cd.category_id) where cd.language_id=2 order by concat(cd.path,c1.category_id)";

    	$sql = "select * from " . DB_PREFIX . "block_list where status = 1 ";

    	if(!empty($this->request->get['bid'])){
    		$sql .= " AND bid = " . $this->request->get['bid'];
    	}

		$query = $this->db->query($sql);

		return $query->rows;
	}

	//今日推荐
	public function gettui()
	{
		
	}

	//排行榜

	//最新商品

	//商品艺术

	//猜你喜欢


	//随机取商品
	public function q($num)
	{
		$a = $this->getBlocks();
		foreach($a as $k=>$v){
			$arr[] = array_rand(array_flip(explode(',',$v['product_id_grop'])),$num);
		}
		return $arr;
	}

}
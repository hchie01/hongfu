<?php
class ModelCatalogCategory extends Model {
	public function getCategory($category_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.category_id = '" . (int)$category_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1'");

		return $query->row;
	}

	public function getCategories($parent_id = 0) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.parent_id = '" . (int)$parent_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "'  AND c.status = '1' ORDER BY c.sort_order, LCASE(cd.name)");

		return $query->rows;
	}

	public function getCategoryFilters($category_id) {
		$implode = array();

		$query = $this->db->query("SELECT filter_id FROM " . DB_PREFIX . "category_filter WHERE category_id = '" . (int)$category_id . "'");

		foreach ($query->rows as $result) {
			$implode[] = (int)$result['filter_id'];
		}

		$filter_group_data = array();

		if ($implode) {
			$filter_group_query = $this->db->query("SELECT DISTINCT f.filter_group_id, fgd.name, fg.sort_order FROM " . DB_PREFIX . "filter f LEFT JOIN " . DB_PREFIX . "filter_group fg ON (f.filter_group_id = fg.filter_group_id) LEFT JOIN " . DB_PREFIX . "filter_group_description fgd ON (fg.filter_group_id = fgd.filter_group_id) WHERE f.filter_id IN (" . implode(',', $implode) . ") AND fgd.language_id = '" . (int)$this->config->get('config_language_id') . "' GROUP BY f.filter_group_id ORDER BY fg.sort_order, LCASE(fgd.name)");

			foreach ($filter_group_query->rows as $filter_group) {
				$filter_data = array();

				$filter_query = $this->db->query("SELECT DISTINCT f.filter_id, fd.name FROM " . DB_PREFIX . "filter f LEFT JOIN " . DB_PREFIX . "filter_description fd ON (f.filter_id = fd.filter_id) WHERE f.filter_id IN (" . implode(',', $implode) . ") AND f.filter_group_id = '" . (int)$filter_group['filter_group_id'] . "' AND fd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY f.sort_order, LCASE(fd.name)");

				foreach ($filter_query->rows as $filter) {
					$filter_data[] = array(
						'filter_id' => $filter['filter_id'],
						'name'      => $filter['name']
					);
				}

				if ($filter_data) {
					$filter_group_data[] = array(
						'filter_group_id' => $filter_group['filter_group_id'],
						'name'            => $filter_group['name'],
						'filter'          => $filter_data
					);
				}
			}
		}

		return $filter_group_data;
	}

	public function getCategoryLayoutId($category_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_to_layout WHERE category_id = '" . (int)$category_id . "' AND store_id = '" . (int)$this->config->get('config_store_id') . "'");

		if ($query->num_rows) {
			return (int)$query->row['layout_id'];
		} else {
			return 0;
		}
	}

	public function getTotalCategoriesByCategoryId($parent_id = 0) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.parent_id = '" . (int)$parent_id . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1'");

		return $query->row['total'];
	}


	//所有分类
    public function getCates($data = array()){
		// $sql = "SELECT c1.status, cp.category_id AS category_id, cd1.name, c1.parent_id, c1.sort_order,concat(cd2.path,c2.category_id) FROM " . DB_PREFIX . "category_path cp LEFT JOIN " . DB_PREFIX . "category c1 ON (cp.category_id = c1.category_id) LEFT JOIN " . DB_PREFIX . "category c2 ON (cp.path_id = c2.category_id) LEFT JOIN " . DB_PREFIX . "category_description cd1 ON (cp.path_id = cd1.category_id) LEFT JOIN " . DB_PREFIX . "category_description cd2 ON (cp.category_id = cd2.category_id)  WHERE cd1.language_id = '" . (int)$this->config->get('config_language_id') . "' AND cd2.language_id = '" . (int)$this->config->get('config_language_id') . " order by concat(cd1.path,c2.parent_id) '";

		// if (!empty($data['filter_name'])) {
		// 	$sql .= " AND cd2.name LIKE '%" . $this->db->escape((string)$data['filter_name']) . "%'";
		// }

		// if (isset($data['filter_status']) && $data['filter_status'] != '') {
		// 	$sql .= " AND c1.status = '" . (int)$data['filter_status'] . "'";
		// }

		// $sql .= " GROUP BY cp.category_id";

		// $sort_data = array(
		// 	'name',
		// 	'sort_order'
		// );

		// if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
		// 	$sql .= " ORDER BY " . $data['sort'];
		// } else {
		// 	$sql .= " ORDER BY sort_order";
		// }

		// if (isset($data['order']) && ($data['order'] == 'DESC')) {
		// 	$sql .= " DESC";
		// } else {
		// 	$sql .= " ASC";
		// }
		$sql = "select c1.category_id,c1.parent_id,cd.language_id,cd.name,cd.path,concat(cd.path,c1.category_id) from  " . DB_PREFIX . "category c1 LEFT JOIN  " . DB_PREFIX . "category_description cd ON (c1.category_id=cd.category_id) where cd.language_id=2 order by concat(cd.path,c1.category_id)";

		// if (isset($data['start']) || isset($data['limit'])) {
		// 	if ($data['start'] < 0) {
		// 		$data['start'] = 0;
		// 	}

		// 	if ($data['limit'] < 1) {
		// 		$data['limit'] = 20;
		// 	}

		// 	$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		// }

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function getTreeCates($arr=null,$pid=0)
	{
		if(empty($arr)){
			$arr = $this->getCates();
		}
		$sub = [];
		foreach($arr as $k=>$v){
			if($v['parent_id']==$pid){
				$v['sub'] = $this->getTreeCates($arr,$v['category_id']);
				$sub[] = $v;
			}
		}
		return $sub;
	}
}
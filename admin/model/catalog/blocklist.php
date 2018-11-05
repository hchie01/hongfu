<?php
class ModelCatalogBlocklist extends Model {
	public function addblocklist($data) {
		$sql =  "insert into " . DB_PREFIX . "block_list(bname,mlink,product_id_grop,status) values('".$data['name']."','". $data['mlink'] ."','". $data['product_id_grop'] ."',". $data['status'] .")";

		$this->db->query($sql);

		return $this->db->getLastId();
	}

	public function editblocklist($bid, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "block_list SET bname = '" . $this->db->escape((string)$data['bname']) . "' WHERE bid = '" . (int)$bid . "'");
	}

	public function deleteblocklist($bid) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "block_list WHERE bid = " . (int)$bid);
	}

	public function getblocklist($bid) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "block_list WHERE bid = '" . (int)$bid . "'");

		return $query->row;
	}

	public function getblocklists($data = array()) {
		$sql = "SELECT bid, bname, mlink, product_id_grop,status FROM " . DB_PREFIX . "block_list";

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function getTotalblocklists() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "block_list");

		return $query->row['total'];
	}
}

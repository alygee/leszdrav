<?php
require_once DIR_SYSTEM . 'journal2/classes/journal2_export.php';

class ModelJournal2Data extends Model{

    private $post_data;
    private $get_data;

    public function __construct($registry) {
        parent::__construct($registry);
        $this->post_data = json_decode(file_get_contents('php://input'), true);
        $this->get_data = $this->request->get;
    }

    public function export() {
        header('Pragma: public');
        header('Expires: 0');
        header('Content-Description: File Transfer');
        header('Content-Type: text/plain');
        header('Content-Disposition: attachment; filename=' . date('Y-m-d_H-i-s', time()).'_backup.sql');
        header('Content-Transfer-Encoding: binary');

        /* opencart version */
        $from = Front::$IS_OC2 ? Journal2Export::OC2 : Journal2Export::OC1;

        if (isset($this->get_data['opencart_version']) && $this->get_data['opencart_version'] == 2) {
            $to = Journal2Export::OC2;
        } else {
            $to = Journal2Export::OC1;
        }

        $exporter = new Journal2Export($this->db, $from, $to);

        /* opencart data */
        if (isset($this->get_data['include_store_data']) && $this->get_data['include_store_data']) {
            $exporter->addTables(Journal2Export::STORE_DATA_TABLES);
        }

        /* journal data */
        $exporter->addTables(Journal2Export::JOURNAL_TABLES);

        /* journal blog */
        if (isset($this->get_data['include_blog_data']) && $this->get_data['include_blog_data']) {
            $exporter->addTables(Journal2Export::JOURNAL_BLOG_TABLES);
        }

        /* add dummy images */
        if (isset($this->get_data['add_dummy_images']) && $this->get_data['add_dummy_images']) {
            $exporter->addDummyImages();
        }

        echo $exporter->export();

        exit();
    }

}
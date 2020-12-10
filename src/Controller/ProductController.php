<?php
namespace Src\Controller;

use Src\Gateways\ProductGateway;

class ProductController {
    private $db;
    private $productGateway;

    public function __construct($db)
    {
        $this->db = $db;
        $this->productGateway = new ProductGateway($db);
    }

    public function processRequest()
    {
        $result = $this->productGateway->findAll();
        echo $result[0]['results'];
    }
}
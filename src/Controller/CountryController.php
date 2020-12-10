<?php
namespace Src\Controller;

use Src\Gateways\CountryGateway;

class CountryController {
    private $db;
    private $productGateway;

    public function __construct($db)
    {
        $this->db = $db;
        $this->countryGateway = new CountryGateway($db);
    }

    public function processRequest()
    {
        $result = $this->countryGateway->findAll();
        echo $result[0]['results'];
    }
}
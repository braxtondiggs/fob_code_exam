<?php
namespace Src\Gateways;

class ProductGateway {

    private $db = null;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function findAll()
    {
        $statement = "SELECT JSON_OBJECT('product', JSON_ARRAYAGG(js)) results
        FROM (
            SELECT JSON_OBJECT(
                'id', p.product_id, 
                'name', p.product_name,
                'status', p.product_status,
                'exemptions', JSON_ARRAYAGG(
                    JSON_OBJECT(
                        'country', p1.country_id, 
                        'state', p1.state_id
                    )
                )
            ) js
            FROM products p
            LEFT JOIN exemptions p1 ON p.product_id = p1.product_id
            GROUP BY p.product_id, p.product_name) x";

        try {
            $statement = $this->db->query($statement);
            $result = $statement->fetchAll(\PDO::FETCH_ASSOC);
            return $result;
        } catch (\PDOException $e) {
            exit($e->getMessage());
        }
    }
}
?>
<?php
namespace Src\Gateways;

class CountryGateway {

    private $db = null;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function findAll()
    {
        $statement = "SELECT JSON_OBJECT('country', JSON_ARRAYAGG(js)) results
        FROM (
            SELECT JSON_OBJECT(
                'id', p.country_id, 
                'name', p.name,
                'code', p.code,
                'status', p.country_status,
                'flag', p.flag,
                'children', JSON_ARRAYAGG(
                    JSON_OBJECT(
                        'id', p1.state_id, 
                        'name', p1.name,
                        'code', p1.code,
                        'status', p1.state_status
                    )
                )
            ) js
            FROM country p
            LEFT JOIN state p1 ON p.country_id = p1.country_id
            GROUP BY p.country_id, p.name) x";

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
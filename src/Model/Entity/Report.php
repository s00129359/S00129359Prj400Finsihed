<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

class Report extends Entity
{

    protected $_accessible = [
        '*' => true,
        'id' => false,
    ];
}

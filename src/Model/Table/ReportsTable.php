<?php
namespace App\Model\Table;

use App\Model\Entity\Report;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;
use Search\Manager;

/**
 * Reports Model
 *
 * @property \Cake\ORM\Association\BelongsTo $Users
 * @property \Cake\ORM\Association\BelongsTo $Customers
 */
class ReportsTable extends Table
{

    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        parent::initialize($config);

        $this->table('reports');
        $this->displayField('id');
        $this->primaryKey('id');

        $this->addBehavior('Timestamp');

        $this->belongsTo('Users', [
            'foreignKey' => 'user_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Customers', [
            'foreignKey' => 'customer_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Items', [
            'foreignKey' => 'item_id',
            'joinType' => 'INNER'
        ]);


    }

    /**
     * Default validation rules.
     *
     * @param \Cake\Validation\Validator $validator Validator instance.
     * @return \Cake\Validation\Validator
     */
    public function validationDefault(Validator $validator)
    {
        $validator
            ->add('id', 'valid', ['rule' => 'numeric'])
            ->allowEmpty('id', 'create');

        $validator
            ->requirePresence('equipment', 'create')
            ->notEmpty('equipment');

        $validator
            ->requirePresence('brand', 'create')
            ->notEmpty('brand');

        $validator
            ->requirePresence('description', 'create')
            ->notEmpty('description');

        $validator
            ->allowEmpty('accessories');

        $validator
            ->allowEmpty('notes');

        $validator
            ->add('priority', 'valid', ['rule' => 'boolean'])
            ->allowEmpty('priority');

        $validator
            ->add('finished', 'valid', ['rule' => 'numeric'])
            ->notEmpty('finished');

        $validator
            ->allowEmpty('conclusion');

        $validator
            ->add('completed_date', 'valid', ['rule' => 'datetime'])
            ->allowEmpty('completed_date');

        $validator
            ->add('paid_status', 'valid', ['rule' => 'boolean'])
            ->allowEmpty('paid_status');

        $validator
            ->add('amount_due', 'valid', ['rule' => 'numeric'])
            ->allowEmpty('amount_due');

        $validator
            ->add('sms_list', 'valid', ['rule' => 'boolean'])
            ->allowEmpty('sms_list');

        $validator
            ->add('email_list', 'valid', ['rule' => 'boolean'])
            ->allowEmpty('email_list');

        $validator
            ->add('smsSendDate', 'valid', ['rule' => 'datetime'])
            ->allowEmpty('smsSendDate');

        $validator
            ->add('emailSendDate', 'valid', ['rule' => 'datetime'])
            ->allowEmpty('emailSendDate');

        return $validator;
    }

    /**
     * Returns a rules checker object that will be used for validating
     * application integrity.
     *
     * @param \Cake\ORM\RulesChecker $rules The rules object to be modified.
     * @return \Cake\ORM\RulesChecker
     */
    public function buildRules(RulesChecker $rules)
    {
        $rules->add($rules->existsIn(['user_id'], 'Users'));
        $rules->add($rules->existsIn(['customer_id'], 'Customers'));
        $rules->add($rules->existsIn(['item_id'], 'Items'));
        return $rules;
    }
}

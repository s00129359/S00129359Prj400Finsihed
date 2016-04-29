<?php

    $id = $this->request->session()->read('Config.id');
    $email = $this->request->session()->read('Config.email');
?>

<div class="MainDiv">
    <?= $this->Form->create() ?>
    <fieldset>
        <h4 id="viewH4"><?= __('Add Customer Account') ?></h4>
        <?php
            echo $this->Form->input('customerId', ['value' => $id]);
            echo $this->Form->input('role', ['value' => 'customer']);
            echo $this->Form->input('email', ['value' => $email]);
            echo $this->Form->input('password');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
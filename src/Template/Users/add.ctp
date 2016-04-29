<?php

    $session = $this->request->session()->read('Config.id');
    echo $session;
?>


<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar" style="margin-left: 35%">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="/users">Employee</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><?= $this->Html->link(__('New Employee'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('Reports'), ['controller' => 'Reports', 'action' => 'index']) ?> </li>
          <li><?= $this->Html->link(__('Customers'), ['controller' => 'Customers', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('Log Out'), ['controller' => 'Users', 'action' => 'logout']) ?></li>
      </ul>

        <p class="navbar-text navbar-right">Signed in as <a href="#" class="navbar-link"><?php echo $fName ." ". $sName;?>&nbsp;</a></p>
    </div>
  </div>
</nav>


<div class="MainDiv">
    <?= $this->Form->create($user) ?>
    <fieldset>
        <h4 id="viewH4"><?= __('Add User') ?></h4>
<div class="row">
          <div class="col-md-1"></div>  
          <div class="col-md-4">
            <?php
            echo $this->Form->input('fName');
            ?>
          </div>
          <div class="col-md-2"></div>  
          <div class="col-md-4">
            <?php echo $this->Form->input('sName'); ?>
          </div>
          <div class="col-md-1"></div>
</div>
<div class="row">
          <div class="col-md-1"></div>  
          <div class="col-md-4">
            <?php
            echo $this->Form->input('email');
            ?>
          </div>
          <div class="col-md-2"></div>  
          <div class="col-md-4">
            <?php echo $this->Form->input('role'); ?>
          </div>
          <div class="col-md-1"></div>
</div>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>

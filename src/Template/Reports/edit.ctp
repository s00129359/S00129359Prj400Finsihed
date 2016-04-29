<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Reports</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><?= $this->Html->link(__('Add Report'), ['action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('Admin'), ['controller' => 'Users', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('Customers'), ['controller' => 'Customers', 'action' => 'index']) ?></li>
                <li><?= $this->Html->link(__('Log Out'), ['controller' => 'Users', 'action' => 'logout']) ?></li>
      </ul>
            <p class="navbar-text navbar-right">Signed in as <a href="#" class="navbar-link"><?php echo $fName ." ". $sName;?>&nbsp;</a></p>    </div>
  </div>
</nav>

<div class="MainDiv">
    <?= $this->Form->create($report) ?>
    <fieldset>
        <h4 id="viewH4"><?= __('Edit Report') ?></h4>
        <div id="divBorder">
<div class="row">
  <div class="col-md-1"></div>
  <div class="col-md-4"><?php echo $this->Form->input('equipment');?></div>
  <div class="col-md-2"><br><?php echo $this->Form->input('sms_list');
            echo $this->Form->input('email_list');?></div>
  <div class="col-md-4"><?php
            echo $this->Form->input('brand');
            ?></div>
  <div class="col-md-1"></div>
</div>
<div class="row">
  <div class="col-md-1"></div>
  <div class="col-md-4"><?php echo $this->Form->input('description');?></div>
  <div class="col-md-2"></div>
  <div class="col-md-4"><?php
            echo $this->Form->input('notes');
            ?></div>
  <div class="col-md-1"></div>
</div>
</div>
<div id="divBorderRed">
<div class="row">
  <div class="col-md-1"></div>
  <div class="col-md-10">  <?php          echo $this->Form->input('finished',[
                "onclick"=>'if(this.checked){myFunction()}'
                ]);
            echo $this->Form->input('conclusion');?></div>
  <div class="col-md-1"></div>
</div>
</div>
<div id="divBorderPurple">
<div class="row">
  <div class="col-md-5"></div>
  <div class="col-md-2">
        <?php
            echo $this->Form->input('paid_status');
            echo $this->Form->input('amount_due');
        ?>
        </div>
        </div>
        </div>

    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>

</div>
</div>

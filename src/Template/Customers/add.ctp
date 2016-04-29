<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="/customers">Customers</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><?= $this->Html->link(__('Add Customer'), ['action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('Reports'), ['controller' => 'Reports', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('Users'), ['controller' => 'Users', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('Log Out'), ['controller' => 'Users', 'action' => 'logout']) ?></li>
        
      </ul>

        <p class="navbar-text navbar-right">Signed in as <a href="#" class="navbar-link"><?php echo $fName ." ". $sName;?>&nbsp;</a></p>

    </div>
  </div>
</nav>

<div class="MainDiv">
    <?= $this->Form->create($customer) ?>
    <fieldset>
        <h4 id="viewH4"><?= __('Add Customer') ?></h4>
    <div id="divBorder1">
<div class="row">
  <div class="col-md-1"></div>
  <div class="col-md-10">
    <div class="row">
        <div class="col-md-5">
          <?php echo $this->Form->input('fName'); ?>
        </div>
        <div class="col-md-2"></div>
        <div class="col-md-5">
        <?php echo $this->Form->input('county');?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-5">
          <?php echo $this->Form->input('sName'); ?>
        </div>
        <div class="col-md-2"></div>
        <div class="col-md-5">
        <?php echo $this->Form->input('email');?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-5">
          <?php echo $this->Form->input('address1'); ?>
        </div>
        <div class="col-md-2"></div>
        <div class="col-md-5">
        <?php echo $this->Form->input('mobile');?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-5">
          <?php echo $this->Form->input('address2'); ?>
        </div>
        <div class="col-md-2"></div>
        <div class="col-md-5">
        <?php echo $this->Form->input('landline');?>
        </div>
    </div>
    </div>
  <div class="col-md-1"></div>
</div>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>

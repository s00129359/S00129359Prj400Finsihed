<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="/users">Employee</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><?= $this->Html->link(__('Edit user'), ['action' => 'edit', $user->id]) ?> </li>
        <li><?= $this->Html->link(__('New User'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('Employee'), ['controller' => 'Users', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('Customers'), ['controller' => 'Customers', 'action' => 'index']) ?> </li>
         <li><?= $this->Html->link(__('Log Out'), ['controller' => 'Users', 'action' => 'logout']) ?></li>
    
      </ul>

        <p class="navbar-text navbar-right">Signed in as <a href="#" class="navbar-link"><?php echo $fName ." ". $sName;?>&nbsp;</a></p>

    </div>
    </div>
  </div>
</nav>


<div class="MainDiv">

<div class="row">
  <div class="col-md-3"></div>
  <div class="col-md-6">
    <h3 id="viewH4">Id : <?= h($user->id) ?></h3>
    <h3 id="viewH4"><?= h($user->fName) ?> <?= h($user->sName) ?></h3>
  </div>
  <div class="col-md-3"></div>
</div>

<div id="divBorder">

<div class="row">
<div class="col-md-1"></div>
  <div class="col-md-2"><h5 id="head5"><?= __('Email :') ?></h5></div>
  <div class="col-md-3"><h6 id="h6"><?=h($user->email)?></h6></div> 
  <div class="col-md-2"><h5 id="head5"><?= __('Role :') ?></h5></div>
  <div class="col-md-3"><h6 id="h6"><?=h($user->role)?></h6></div>
  <div class="col-md-1"></div>
</div>
<div class="row">
  <div class="col-md-1"></div>
  <div class="col-md-2"><h5 id="head5"><?= __('Created :') ?></h5></div>
  <div class="col-md-3"><h6 id="h6"><?=h($user->created)?></h6></div> 
  <div class="col-md-2"><h5 id="head5"><?= __('Modified :') ?></h5></div>
  <div class="col-md-3"><h6 id="h6"><?=h($user->modified)?></h6></div>
  <div class="col-md-1"></div>

</div>
</div>

    <br>
</div>

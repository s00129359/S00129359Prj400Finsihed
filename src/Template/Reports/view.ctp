<?php
//PHP must be at top of page to get what variables are needed to fill the form

//GET Admin FULL NAME
$AdmFName = $report->user->fName;
$AdmSName = $report->user->sName;
$AdmFullName = $AdmFName . " " . $AdmSName;

//GET CUSTOMER FULL NAME
$CusFName = $report->customer->fName;
$CusSName = $report->customer->sName;
$CusFullName = $CusFName . " " . $CusSName;

//Changeing Date From Month/Day/Year TO => Day/Month/Year
// Time in AM / PM CakePhp Default
$CreatedDate = $report->created;
$ModifiedDate = $report->modified;

//d-m-Y = day, month & year(full)
//g:i a = time in am/pm
$NewCreatedDate = date("d-m-Y, g:i a", strtotime($CreatedDate));
$NewModifiedDate = date("d-m-Y, g:i a", strtotime($CreatedDate));

?>
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="/reports">reports</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><?= $this->Html->link(__('Edit Report'), ['action' => 'edit', $report->id]) ?> </li>
        <li><?= $this->Html->link(__('New Report'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('Employees'), ['controller' => 'Users', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('Customers'), ['controller' => 'Customers', 'action' => 'index']) ?> </li>
                <li><?= $this->Html->link(__('Log Out'), ['controller' => 'Users', 'action' => 'logout']) ?></li>
    
      </ul>
      </ul>
              <p class="navbar-text navbar-right">Signed in as <a href="#" class="navbar-link"><?php echo $fName ." ". $sName;?>&nbsp;</a></p>
    </div>
  </div>
</nav>

<br>
<div class="MainDiv">
<div class="row">
  <div class="col-md-4">
      <h3 id="viewH4">Owner : </h3>
        <?= 
        $report->has('customer') ? $this->Html->link($CusFullName, 
            // VALUE IS CUSTOMER ID 
            ['controller' => 'Customers', 'action' => 'view', $report->customer->id]) : '' 
        ?>
  </div>
  <div class="col-md-4">
      <h3 id="viewH4">Ticket ID : <?= $this->Number->format($report->id)?></h3>
  </div>
  <div class="col-md-4">
      <h3 id="viewH4">Employee : </h3>
            <?= $report->has('user') ? $this->Html->link($AdmFullName,
            // VALUE IS ADMIN ID 
            ['controller' => 'Users', 'action' => 'view', $report->user->id]) 
            : '' ?>
        
  </div>
</div>

<br>
<div id="divBorder">

<div class="row">
  <div class="col-md-4">
      <h4 id="head5"><?= __('Description') ?></h4>
        <?= $this->Text->autoParagraph(h($report->description)); ?>
  </div>
  <div class="col-md-4"><h4 id="head5"><?= __('Notes') ?></h4>
        <?= $this->Text->autoParagraph(h($report->notes)); ?></div>
  <div class="col-md-4">
      <h4 id="head5"><?= __('Conclusion') ?></h4>
        <?= $this->Text->autoParagraph(h($report->conclusion)); ?>
  </div>
</div>

<br>

<div class="row">
<div class="col-md-4">
      <h6 id="viewh6"><?= __('Equipment') ?></h6>
        <?= $this->Text->autoParagraph(h($report->equipment)); ?>
  </div>
  <div class="col-md-4"><h6 id="viewh6"><?= __('Brand') ?></h6>
        <?= $this->Text->autoParagraph(h($report->brand)); ?></div>
  <div class="col-md-4">
      <h6 id="viewh6"><?= __('Accessories') ?></h6>
        <?= $this->Text->autoParagraph(h($report->accessories)); ?>
  </div>
</div>

<br>

<div class="row">
<div class="col-md-4">
      <h6 id="viewh6"><?= __('Priority') ?></h6>
        <?= $this->Text->autoParagraph(h($report->priority)); ?>
  </div>
  <div class="col-md-4"><h6 id="viewh6"><?= __('Created on ') ?></h6>
        <?php 
        //fix date format
        $dateComplete = $report->created;
            
            if (!empty($dateComplete)) {
              $dateCompleteFormat = date_format($dateComplete, 'd-m-Y');
            }
            else{
              $dateCompleteFormat = "Un-Finished";
            }
        echo $dateCompleteFormat; ?></div>
  <div class="col-md-4">
      <h6 id="viewh6"><?= __('Finished ? ') ?></h6>
        <?= $this->Text->autoParagraph(h($report->finished)); ?>
  </div>
</div>

<br>

<div class="row">
<div class="col-md-4">
      <h6 id="viewh6"><?= __('Finsihed Date') ?></h6>
        <?= $this->Text->autoParagraph(h($report->completed_date)); ?>
  </div>
  <div class="col-md-4"><h6 id="viewh6"><?= __('Amount Due') ?></h6>
        <?= $this->Text->autoParagraph(h($report->amount_due)); ?></div>
  <div class="col-md-4">
      <h6 id="viewh6"><?= __('Paid ? ') ?></h6>
        <?= $this->Text->autoParagraph(h($report->paid_status)); ?>
  </div>
</div>


</div>

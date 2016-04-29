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
        <li><?= $this->Html->link(__('Edit Customer'), ['action' => 'edit', $customer->id]) ?> </li>
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

<div class="row">
  <div class="col-md-3"></div>
  <div class="col-md-6">
    <h3 id="viewH4">Id : <?= h($customer->id) ?></h3>
    <h3 id="viewH4"><?= h($customer->fName) ?> <?= h($customer->sName) ?></h3>
  </div>
  <div class="col-md-3"></div>
</div>
<br>

<div id="divBorder">
<div class="row">
  <div class="col-md-1"></div>
  <div class="col-md-2"><h5 id="head5"><?= __('Address1 :') ?></h5></div>
  <div class="col-md-3"><h6 id="h6"><?=h($customer->address1)?></h6></div> 
  <div class="col-md-2"><h5 id="head5"><?= __('Mobile :') ?></h5></div>
  <div class="col-md-3"><h6 id="h6"><?=h($customer->mobile)?></h6></div>
  <div class="col-md-1"></div>
</div>
<br>
<div class="row">
  <div class="col-md-1"></div>
  <div class="col-md-2"><h5 id="head5"><?= __('Address2 :') ?></h5></div>
  <div class="col-md-3"><h6 id="h6"><?=h($customer->address2)?></h6></div>
  <div class="col-md-2"><h5 id="head5"><?= __('Email :') ?></h5></div>
  <div class="col-md-3"><h6 id="h6">
  <a href="mailto:<?php echo $customer->email;?>?Subject=Hello%20again"><?=h($customer->email)?></a></h6></div>
  <div class="col-md-2"></div>
</div>
<br>
<div class="row">
  <div class="col-md-1"></div>
  <div class="col-md-2"><h5 id="head5"><?= __('County :') ?></h5></div>
  <div class="col-md-3"><h6 id="h6"><?=h($customer->county)?></h6></div>

  <div class="col-md-2"><h5 id="head5"><?= __('Landline :') ?></h5></div>
  <div class="col-md-3"><h6 id="h6"><?=h($customer->landline)?></h6></div>
  <div class="col-md-1"></div>
</div>
</div>

<br>
<br>
<div class="row">
  <div class="col-md-1"></div>
  <div class="col-md-10">
    <div class="related">
        <h4><?= __('Customers Reports') ?></h4>
        <?php if (!empty($customer->reports)): ?>
        <table cellpadding="0" cellspacing="0">
            <tr>

                <th><?= __('Report Id') ?></th>
                <th><?= __('User Id') ?></th>
                <th><?= __('Equipment') ?></th>
                <th><?= __('Brand') ?></th>
                <th><?= __('Finished') ?></th>
                <th><?= __('Created') ?></th>
                <th><?= __('Finished') ?></th>
                <th><?= __('Paid Status') ?></th>
            </tr>
            <?php foreach ($customer->reports as $reports): 
            $finishedStatus = $reports->finished;
            $paymentStatus = $reports->paid_status;
        
            //If its been closed bool = 1
            if ($finishedStatus == 1) {
                $StatusStatus = "Closed";
            }
            //if it asent been closed yet bool = 0
            else{
                $StatusStatus = "Open";
            }

            //If its been payed bool = 1
            if ($paymentStatus == 1) {
                $payStatus = "Paid";
            }
            //if it asent been closed yet bool = 0
            else{
                $payStatus = "Not Paid";
            }
            
            //show as date
            $dateCreate = $reports->created;
            $dateCreateFormat = date_format($dateCreate, 'd-m-Y');

            $dateComplete = $reports->completed_date;
            
            if (!empty($dateComplete)) {
              $dateCompleteFormat = date_format($dateComplete, 'd-m-Y');
            }
            else{
              $dateCompleteFormat = "Un-Finished";
            }

            ?>
            <tr>
                

                <td>
                <?= 
                $this->Html->link($reports->id, 
                ['controller' => 'Reports', 'action' => 'view', 
                $reports->id]) 
                ?>
                </td>
                <td><?= h($reports->user_id) ?></td>
                <td><?= h($reports->equipment) ?></td>
                <td><?= h($reports->brand) ?></td>
                <td><?= h($StatusStatus) ?></td>
                <td><?= h($dateCreateFormat) ?></td>
                <td><?= h($dateCompleteFormat) ?></td>
                <td><?= h($payStatus) ?></td>
            </tr>
            <?php endforeach; ?>
        </table>
    <?php endif; ?>
    </div>
    </div>
  <div class="col-md-1"></div>
  </div>
</div>

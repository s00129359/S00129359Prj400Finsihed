<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="/reports">Reports</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><?= $this->Html->link(__('Add Report'), ['action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('Admin'), ['controller' => 'Users', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('Customers'), ['controller' => 'Customers', 'action' => 'index']) ?></li>
              <li><?= $this->Html->link(__('Log Out'), ['controller' => 'Users', 'action' => 'logout']) ?></li>
      </ul>
      <p class="navbar-text navbar-right">Signed in as <a href="#" class="navbar-link"><?php echo $fName ." ". $sName;?>&nbsp;</a></p>
    </div>
  </div>
</nav>

<div class="MainDiv">
    <fieldset>
        <h2 id="viewH4"><?= __('View KPI`s') ?><h2>
<div id="divBorder">
        <h3 id="head5">Average OpenTickets Per Employee</h3>
        <p id="kpiP"><?php
        $avgTickets = $open / $distinct;
        echo $avgTickets;
         ?> Open Ticket Average Per Employee</p>

        <h3 id="head5">Tickets Open on Average</h3>
        <p id="kpiP"><?php 
                $count = 0;
        $reportTime = 0;
        foreach($closed as $clsd => $cl){
          $count++;
            $openDate = $cl->created;
            $closdDate = $cl->completed_date;
            $totalTime = $openDate->diff($closdDate);

          $totalTime = $totalTime->format("%a");
          
          $totalTimeInt = (int)$totalTime;

          $reportTime += $totalTimeInt;

        
        }

        $AverageOpenTime = $reportTime / $count;
        $AverageOpenTimeFormat = number_format($AverageOpenTime, 2, '.', '');
         echo $AverageOpenTimeFormat;
         ?> Days Open</p>

        <h3 id="head5">Number of Open Tickets per Employee</h3>
</div>
    </fieldset>
</div>

<?php 

?>
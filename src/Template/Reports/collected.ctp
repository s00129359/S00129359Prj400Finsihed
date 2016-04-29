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
<br>
<h4 id="viewH4"><?= __('Un-Collected Reports') ?></h4>
    <table class="table table-striped table-responsive" id="indxTbl">
        <thead>
            <tr>
                <!-- Table Head -->
                <th><?= __('Report Id') ?></th>
                <th><?= __('Customer') ?></th>
                <th><?= __('Created On') ?></th>
                <th><?= __('Completed On?') ?></th>
                <th><?= __('Status') ?></th>

            </tr>
        </thead>

        <tbody id="scrollit">
        <?php foreach ($unCollected as $collect): ?>
        	<tr>
          <!-- echo $collect->customer->fName; -->
          <td><?= $this->Html->link($collect->id,['action' => 'edit', 
                $collect->id]) ?></td>
          <td><?= $this->Html->link($collect->customer->fName . " ". $collect->customer->sName, ['controller' => 'Customers', 'action' => 'view', 
                $collect->customer_id])?></td>
          <td><?= h($collect->created) ?></td>
        	<td><?= h($collect->completed_date) ?></td>
          <td>Un-Collected</td>

        	</tr>
        <?php endforeach; ?>

        </tbody>
      </table>
</div>
 

</div>
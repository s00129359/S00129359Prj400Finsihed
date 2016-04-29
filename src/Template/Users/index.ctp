
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
        <li><?= $this->Html->link(__('Add Employee'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('Reports'), ['controller' => 'Reports', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('Customers'), ['controller' => 'Customers', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('Log Out'), ['controller' => 'Users', 'action' => 'logout']) ?></li>
      </ul>
        <p class="navbar-text navbar-right">Signed in as <a href="#" class="navbar-link"><?php echo $fName ." ". $sName;?>&nbsp;</a></p>

    </div>
  </div>
</nav>

<div id="tableWrapper">
<div id="tableContainer" class="tableContainer">
    
<div class="MainDiv">
  <div class="col-md-4" style="margin-top: 20px"></div>
  <div class="col-md-3" style="margin-top: 20px">
    <h3 id="viewH4"><?= __('Users') ?></h3>
        <ul class="pager">
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
        </ul>
        </div>

    <table class="table table-striped table-responsive" id="indxTbl">
        <thead>
            <tr>
                <th><?= __('id') ?></th>
                <th><?= __('First') ?></th>
                <th><?= __('Second') ?></th>
                <th><?= __('role') ?></th>
                <th><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody id="scrollit">
            <?php foreach ($users as $user): ?>
            <tr>
                <td>
                <?= $this->Html->link($user->id, ['action' => 'view', $user->id]) ?>
                </td>
                <td><?= h($user->fName) ?></td>
                <td><?= h($user->sName) ?></td>
                <td><?= h($user->role) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $user->id]) ?>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

</div>
</div>
</div>

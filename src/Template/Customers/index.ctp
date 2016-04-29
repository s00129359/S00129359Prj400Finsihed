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
        <li><?= $this->Html->link(__('Employees'), ['controller' => 'Users', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('Download'), ['action' => 'customersExport']) ?></li>
          <li><?= $this->Html->link(__('Log Out'), ['controller' => 'Users', 'action' => 'logout']) ?></li>
    
      </ul>
      <p class="navbar-text navbar-right">Signed in as <a href="#" class="navbar-link"><?php echo $fName ." ". $sName;?>&nbsp;</a></p>
    </div>
  </div>
</nav>


              <?php  foreach ($customers as $customer){
                $custId = $customer['id'];
                $custFirstName = $customer['fName'];
                $custSurName = $customer['sName'];
                $custMobile = $customer['mobile'];
                $custEmail = $customer['email'];

                //concatonate
                $FullName = $custFirstName." ".$custSurName;
                //show customers full and mobile and landline for recognition 
            $custOption[] = ["$custId" => "$FullName    ( $custMobile  ) ( $custEmail )"];
            } ?>
<div class="MainDiv">
  <div class="col-md-1">
</div>
  <div class="col-md-5">
      <?= $this->Form->create() ?>
<div class="form-group">
    <?php
        echo $this->Form->input('Search', ['options' => $custOption]);
    ?>
</div>
  <?= $this->Form->button(__('Search'), ['class' => 'btnSearch']) ?>
<?= $this->Form->end() ?>
    </div>

      <div class="col-md-1">

  </div>

    <div class="col-md-4">
             <div>
        <ul class="pager">
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers()?> 
            <?= $this->Paginator->next(__('next') . ' >') ?> 
        </ul>
        </div>
  </div>
    <div class="col-md-4" style="margin-top: 40px">
          <!-- <h3><?= __('Customers') ?></h3> -->
          </div>

    <table class="table table-striped table-responsive" id="indxTbl">
        <thead>
            <tr>
                <th><?= __('Id') ?></th>                
                <th><?= __('Name') ?></th>                
                <th><?= __('County') ?></th>                
                <th><?= __('Mobile') ?></th>                
                <th><?= __('Edit') ?></th> 
            </tr>
        </thead>
        <tbody id="scrollit">
            <?php foreach ($customers as $customer):
            $fName = $customer->fName; 
            $sName = $customer->sName;
            $fullName = $fName ." " . $sName;
            ?>
            <tr>
                <td><?= 
                $this->Html->link($customer->id, 
                ['action' => 'view', 
                $customer->id]) 
                ?></td>
                <td><?= h($fullName) ?></td>
                <td><?= h($customer->county) ?></td>
                <td><?= h($customer->mobile) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $customer->id]) ?>
                </td>

            </tr>
            <?php endforeach; ?>


        </tbody>
    </table>
    <br>
</div>


 <script type="text/javascript">
 window.onload = function() {
    $("#search").select2();
    $(".js-example-basic-single").select2();
}
 </script>
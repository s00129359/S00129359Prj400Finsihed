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
        <li><?= $this->Html->link(__('Employees'), ['controller' => 'Users', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('Customers'), ['controller' => 'Customers', 'action' => 'index']) ?></li>
                <li><?= $this->Html->link(__('Log Out'), ['controller' => 'Users', 'action' => 'logout']) ?></li>
      </ul>
              <p class="navbar-text navbar-right">Signed in as <a href="#" class="navbar-link"><?php echo $fName ." ". $sName;?>&nbsp;</a></p>
    </div>
  </div>
</nav>

<div class="MainDiv">
       <?= $this->Form->create($report) ?>

<div class="row">
  <div class="col-md-1"></div>
  <div class="col-md-10">

    <fieldset>
        <h3>Add Report</h3>

        <?php
        $adminOption = array();

            foreach ($users as $user){
                $uID = $user['id'];
                $uEmail = $user['email'];
            $adminOption[] = ["$uID" => $uEmail];
            }

            //Get Items 
            foreach ($items as $item){
                $itemID = $item['Id'];
                 $itemName = $item['Name'];
                 //bind item
             $itemOption[] = ["$itemName" => $itemName];
            }

            // Value = ID
            //Option = First and Second name concat
            // $custOption = array();
            foreach ($customers as $customer){
                $custId = $customer['id'];
                $custFirstName = $customer['fName'];
                $custSurName = $customer['sName'];
                $custMobile = $customer['mobile'];
                $custEmail = $customer['email'];

                //concatonate
                $FullName = $custFirstName." ".$custSurName;
                //show customers full and mobile and landline for recognition 
            $custOption[] = ["$custId" => "$FullName    ( $custMobile  ) ( $custEmail )"];
            }
            ?>
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
      <?php
            //Form Input Fields => user
            echo $this->Form->input('user_id', ['options' => $adminOption]);
      ?>
  </div>
  <div class="col-md-4"></div>
</div>

<div class="row">
  <div class="col-md-4">
      <?php
        //Button to add Equipment
        echo $this->Html->link(
                                    'Add Equipment',
                                    '/items/add',
                                    ['class' => 'btnAdd0']
                                    );

            //Add Items 
             echo $this->Form->input('equipment', ['options' => $itemOption]);
      ?>
  </div>
  <div class="col-md-1"></div>
  <div class="col-md-7"><?php
              echo $this->Html->link(
                                    'Add Customer',
                                    '/customers/add',
                                    ['class' => 'btnAdd']
                                    );
            //Form Input Fields => add customer
            echo $this->Form->input('customer_id', ['options' => $custOption]);
                        //Button to add customer

  ?></div>
  </div>

<div class="row">
  <div class="col-md-4"><?php 
            echo $this->Form->input('brand');
            echo $this->Form->input('accessories');
  ?></div>
  <div class="col-md-1"></div>
  <div class="col-md-7"><?php
            echo $this->Form->input('description');

  ?></div>
</div>

<div class="row">
  <div class="col-md-4">
  <br><br><?php 
            echo $this->Form->input('priority');
            echo $this->Form->input('sms_list');
            echo $this->Form->input('email_list');
  ?></div>
  <div class="col-md-1"></div>
  <div class="col-md-7"><?php
            echo $this->Form->input('notes');
  ?></div>
</div>
</div>

    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
  </div>
  <div class="col-md-1"></div>
</div>
   
</div>



 <script type="text/javascript">
 window.onload = function() {
    $("#customer-id").select2();
    $(".js-example-basic-single").select2();
}
 </script>
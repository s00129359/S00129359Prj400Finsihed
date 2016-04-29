
<div class="container" style="margin-top: 50px;">
    <div class="row" >
        <div id="logindiv" class="col-sm-6 col-md-4 col-md-offset-4">

<div class="account-wall" style="padding-top: 20px;">

<img class="profile-img" src="http://way2rise.com/main/images/sign-in-hi.png" >
<?= $this->Form->create() ?>
<?= $this->Form->input('email',['placeholder' => 'Email']) ?>
<?= $this->Form->input('password', ['placeholder' => 'Password']) ?>
<?= $this->Form->button('Login',['class' => 'btn btn-lg btn-primary btn-block']) ?>
<?= $this->Form->end() ?>
            </div>
            
        </div>
    </div>
</div>


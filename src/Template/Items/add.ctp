
<div class="MainDiv">
<Button onclick="location.href='../';" class="btnRtn">Return</Button>
    <?= $this->Form->create($item) ?>
    <fieldset>
        <H3><?= __('Add Item') ?></H3>
        <?php
            echo $this->Form->input('Name');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>

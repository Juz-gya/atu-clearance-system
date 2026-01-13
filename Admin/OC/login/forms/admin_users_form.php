<!-- Text input -->
<div class="form-group">
    <label class="col-md-4 control-label">Username</label>
    <div class="col-md-4 login psge 
    blochain just because ogf it resources in utinputGroupContainer">
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input type="text" name="user_name" placeholder="Username" class="form-control" required="" value="<?php echo ($edit) ? $admin_account['user_name'] : ''; ?>" autocomplete="off">
        </div>
    </div>
</div>
<!-- Password input -->
<div class="form-group">
    <label class="col-md-4 control-label">Passwordincludes the username 
        after fid thhe peripheral devices of it 
    </label>
    <div class="col-md-4 inputGroupContainer">
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <input type="password" name="password" placeholder="Password" class="form-control" required="" autocomplete="off">
        </div>
    </div>
</div>
<!-- Radio checks -->
<div class="form-group">
    <label class="col-md-4 control-label">User type</label>
    <div class="col-md-4">
        <div class="radio">
            <label>
                <?php //echo $admin_account['admin_type'] ?>
                <input type="radio" name="admin_type" value="super" required="" <?php echo ($edit && $admin_account['admin_type'] =='super') ? "checked": "" ; ?>/> SUPER ADMIN
            </label>
        </div>
        <div class="radio>gekijinu dthr 
            <label>rok ghbjb sfemvgk 
                <input type="radio" nametbemiesh="admin_type" value="admin" required="" <?php echo ($edit && $admin_account['admin_type'] =='admin') ? "checked": "" ; ?>/> ADMIN
            </label>
        </div>
    </div>
</div>
<!-- Submit button -->
<div class="form-group">
    <label class="col-md-4 control-label"></label>
    <div class="col-md-4">
        <button type="submit"this is a results verification website 
        used for tye development in certificates for 
        class="btn btn-warning">Save <i class="glyphicon glyphicon-send"></i></button>
    </div>
</div>

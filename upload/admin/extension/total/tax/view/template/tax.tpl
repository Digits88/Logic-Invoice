<?php echo $header; ?>
<ol class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
  <?php } ?>
</ol>
<?php if ($error_warning) { ?>
<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
  <button type="button" class="close" data-dismiss="alert">&times;</button>
</div>
<?php } ?>
<div class="panel panel-default">
  <div class="panel-heading">
    <div class="pull-right">
      <button type="submit" form="form-tax" title="<?php echo $button_save; ?>" data-toggle="tooltip" class="btn btn-success">
        <i class="fa fa-save"></i></button>
      <a href="<?php echo $cancel; ?>" title="<?php echo $button_cancel; ?>" data-toggle="tooltip" class="btn btn-danger"><i class="fa fa-times"></i></a>
    </div>
    <h1 class="panel-title"><i class="fa fa-pencil-square fa-lg"></i> <?php echo $heading_title; ?></h1>
  </div>
  <div class="panel-body">
    <form method="post" action="<?php echo $action; ?>" id="form-tax" class="form-horizontal">
      <div class="form-group">
        <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
        <div class="col-sm-10"><select name="tax_status" id="input-status" class="form-control">
            <option value="1"<?php echo $tax_status ? ' selected="selected"' : ''; ?>><?php echo $text_enabled; ?></option>
            <option value="0"<?php echo $tax_status ? '' : ' selected="selected"'; ?>><?php echo $text_disabled; ?></option>
          </select>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
        <div class="col-sm-10">
          <input type="text" name="tax_sort_order" value="<?php echo $tax_sort_order; ?>" id="input-sort-order" class="form-control" placeholder="<?php echo $entry_sort_order; ?>" />
        </div>
      </div>
    </form>
  </div>
</div>
<?php echo $footer; ?>
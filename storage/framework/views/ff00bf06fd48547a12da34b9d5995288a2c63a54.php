<div class="panel panel-default">
	<div class="panel-heading no-bg panel-settings">
		<h3 class="panel-title">
			<?php echo e(trans('common.page_settings')); ?>

		</h3>
	</div>
	<div class="panel-body">
		<?php echo $__env->make('flash::message', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

		<form method="POST" action="<?php echo e(url('admin/page-settings')); ?>">

			<?php echo e(csrf_field()); ?>

			<div class="privacy-question">

				<ul class="list-group">
					<li href="#" class="list-group-item">
						<fieldset class="form-group">
							<?php echo e(Form::label('page_member_privacy', trans('admin.page_member_privacy'))); ?>

							<?php echo e(Form::select('page_member_privacy', array('members' => trans('common.members'), 'only_admins' => trans('admin.only_admins')), Setting::get('page_member_privacy', 'only_admins'), ['class' => 'form-control', 'placeholder' => trans('admin.please_select')])); ?>

						</fieldset>						
					</li>

					<li href="#" class="list-group-item">
						<fieldset class="form-group">
							<?php echo e(Form::label('page_timeline_post_privacy', trans('admin.page_timeline_post_privacy'))); ?>

							<?php echo e(Form::select('page_timeline_post_privacy', array('everyone' => trans('common.everyone'), 'only_admins' => trans('admin.only_admins')) , Setting::get('page_timeline_post_privacy', 'everyone') , ['class' => 'form-control', 'placeholder' => trans('admin.please_select')])); ?>

						</fieldset>
					</li>
				</ul>
				<div class="pull-right">
					<?php echo e(Form::submit(trans('common.save_changes'), ['class' => 'btn btn-success'])); ?>

				</div>
			</div>
		<?php echo e(Form::close()); ?>

		
	</div>
</div><!-- /panel -->
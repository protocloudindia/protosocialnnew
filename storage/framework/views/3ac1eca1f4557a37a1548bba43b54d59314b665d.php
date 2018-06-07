<div class="panel panel-default">
	<div class="panel-body">
	<?php echo $__env->make('flash::message', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
		<div class="panel-heading no-bg panel-settings">
			<h3 class="panel-title">
				<?php echo e(trans('admin.edit_user')); ?> (<?php echo e($timeline->name); ?>)
			</h3>
		</div>
		<form method="POST" action="<?php echo e(url('admin/users/'.$username.'/edit')); ?>" class="socialite-form">
			<?php echo e(csrf_field()); ?>

			<fieldset class="form-group">
				<?php echo e(Form::label('verified', trans('admin.verified'), ['class' => 'control-label'])); ?>

				<?php echo e(Form::select('verified', array('1' => trans('common.yes'), '0' => trans('common.no')) , $user->verified , ['class' => 'form-control'])); ?>

				<small class="text-muted"><?php echo e(trans('admin.verified_user_text')); ?></small>				
			</fieldset>
			<fieldset class="form-group required <?php echo e($errors->has('name') ? ' has-error' : ''); ?>">
				<?php echo e(Form::label('name', trans('auth.name'), ['class' => 'control-label'])); ?>

				<input type="text" class="form-control" name="name" value="<?php echo e($timeline->name); ?>" placeholder="Name">
				<small class="text-muted"><?php echo e(trans('admin.user_name_text')); ?></small>
				<?php if($errors->has('name')): ?>
				<span class="help-block">
					<strong><?php echo e($errors->first('name')); ?></strong>
				</span>
				<?php endif; ?>
			</fieldset>
			<fieldset class="form-group required <?php echo e($errors->has('username') ? ' has-error' : ''); ?>">
				<?php echo e(Form::label('username', trans('common.username'), ['class' => 'control-label'])); ?>

				<input type="text" class="form-control content-form" placeholder="<?php echo e(trans('common.username')); ?>" name="username" value="<?php echo e($timeline->username); ?>">
				<small class="text-muted"><?php echo e(trans('admin.user_username_text')); ?></small>
				<?php if($errors->has('username')): ?>
				<span class="help-block">
					<strong><?php echo e($errors->first('username')); ?></strong>
				</span>
				<?php endif; ?>
			</fieldset>
			<fieldset class="form-group required <?php echo e($errors->has('email') ? ' has-error' : ''); ?>">
				<?php echo e(Form::label('email', trans('auth.email_address'), ['class' => 'control-label'])); ?>

				<input type="text" class="form-control" name="email" value="<?php echo e($user->email); ?>" placeholder="<?php echo e(trans('common.email')); ?>">
				<small class="text-muted"><?php echo e(trans('admin.user_email_text')); ?></small>
				<?php if($errors->has('email')): ?>
				<span class="help-block">
					<strong><?php echo e($errors->first('email')); ?></strong>
				</span>
				<?php endif; ?>
			</fieldset>
			<fieldset class="form-group">
				<?php echo e(Form::label('about', trans('common.about'), ['class' => 'control-label'])); ?>

				<textarea class="form-control about-form" name="about" rows="3" value="" placeholder="<?php echo e(trans('common.about')); ?>"><?php echo e($timeline->about); ?></textarea>
				<small class="text-muted"><?php echo e(trans('admin.user_about_text')); ?></small>
			</fieldset>
			<fieldset class="form-group">
				<?php echo e(Form::label('city', trans('common.current_city'), ['class' => 'control-label'])); ?>

				<input type="text" class="form-control" name="city" value="<?php echo e($user->city); ?>" placeholder="<?php echo e(trans('common.current_city')); ?>">
				<small class="text-muted"><?php echo e(trans('admin.user_city_text')); ?></small>
			</fieldset>
			<fieldset class="form-group">
				<?php echo e(Form::label('country', trans('admin.hometown'), ['class' => 'control-label'])); ?>

				<input type="text" class="form-control" name="country" value="<?php echo e($user->country); ?>" placeholder="<?php echo e(trans('common.country')); ?>">
				<small class="text-muted"><?php echo e(trans('admin.user_country_text')); ?></small>

			</fieldset>
			<fieldset class="form-group">
				<?php echo e(Form::label('gender', trans('common.gender'), ['class' => 'control-label'])); ?>

				<?php echo e(Form::select('gender', array('male' => trans('common.male'),'female' => trans('common.female'),'other' => trans('common.other')) , $user->gender , ['class' => 'form-control'])); ?>

				<small class="text-muted"><?php echo e(trans('admin.user_gender_text')); ?></small>				
			</fieldset>
			<fieldset class="form-group">
				<?php echo e(Form::label('birthday', trans('common.birthday'), ['class' => 'control-label'])); ?>

				<input class="datepicker form-control hasDatepicker" size="16" id="datepick2" name="birthday" type="text" value="<?php echo e($user->birthday); ?>" data-date-format="yyyy-mm-dd">				
			</fieldset>
			<fieldset class="form-group">
				<?php echo e(Form::label('confirm_follow', trans('admin.confirm_followers'), ['class' => 'control-label'])); ?>

				<?php echo e(Form::select('confirm_follow', array('no' => trans('common.no'),'yes' => trans('common.yes')) , $user_settings->confirm_follow , ['class' => 'form-control'])); ?>

				<small class="text-muted"><?php echo e(trans('admin.confirm_follow')); ?></small>				
			</fieldset>
			<fieldset class="form-group">
				<?php echo e(Form::label('follow_privacy', trans('admin.follow_privacy_label'), ['class' => 'control-label'])); ?>

				<?php echo e(Form::select('follow_privacy', array('everyone' => trans('common.everyone'),'only_follow' => trans('admin.only_follow')) , $user_settings->follow_privacy , ['class' => 'form-control'])); ?>

				<small class="text-muted"><?php echo e(trans('admin.follow_privacy')); ?></small>				
			</fieldset>
			<fieldset class="form-group">
				<?php echo e(Form::label('post_privacy', trans('admin.post_privacy_label'), ['class' => 'control-label'])); ?>

				<?php echo e(Form::select('post_privacy', array('everyone' => trans('common.everyone'),'only_follow' => trans('admin.only_follow')) , $user_settings->post_privacy , ['class' => 'form-control'])); ?>	
				<small class="text-muted"><?php echo e(trans('admin.post_privacy')); ?></small>				
			</fieldset>
			<fieldset class="form-group">
				<?php echo e(Form::label('timeline_post_privacy', trans('admin.user_timeline_post_privacy_label'), ['class' => 'control-label'])); ?>

				<?php echo e(Form::select('timeline_post_privacy', array('everyone' => trans('common.everyone'),'only_follow' => trans('admin.only_follow'), 'none' => trans('common.no_one')) , $user_settings->timeline_post_privacy , ['class' => 'form-control'])); ?>

				<small class="text-muted"><?php echo e(trans('admin.user_timeline_post_privacy')); ?></small>				
			</fieldset>
			<fieldset class="form-group">
				<?php echo e(Form::label('comment_privacy', trans('admin.comment_privacy_label'), ['class' => 'control-label'])); ?>

				<?php echo e(Form::select('comment_privacy', array('everyone' => trans('common.everyone'),'only_follow' => trans('admin.only_follow')) , $user_settings->comment_privacy , ['class' => 'form-control'])); ?>

				<small class="text-muted"><?php echo e(trans('admin.comment_privacy')); ?></small>				
			</fieldset>
			<div class="pull-right">
				<button type="submit" class="btn btn-primary btn-sm"><?php echo e(trans('common.save_changes')); ?></button>
			</div>
		</form>
		
	</div>
</div>

<div class="panel panel-default">	
	<div class="panel-body">
		<form class="edit-form" method="POST" action="<?php echo e(url('admin/users/'.$username.'/newpassword')); ?>">
			<?php echo e(csrf_field()); ?>

			<div class="panel-heading no-bg panel-settings">
				<h3 class="panel-title">
					<?php echo e(trans('common.update_password')); ?> (<?php echo e($timeline->name); ?>)
				</h3>
			</div>
			<fieldset class="form-group required <?php echo e($errors->has('password') ? ' has-error' : ''); ?>">
				<?php echo e(Form::label('new_password', trans('common.new_password'), ['class' => 'control-label'])); ?>

				<input type="password" class="form-control" name="password" placeholder="<?php echo e(trans('common.new_password')); ?>">
				<small class="text-muted"><?php echo e(trans('common.new_password_text')); ?></small>
				<?php if($errors->has('password')): ?>
				<span class="help-block">
					<strong><?php echo e($errors->first('password')); ?></strong>
				</span>
				<?php endif; ?>
			</fieldset>
			<fieldset class="form-group required <?php echo e($errors->has('password_confirmation') ? ' has-error' : ''); ?>">
				<?php echo e(Form::label('password_confirmation', trans('common.confirm_password'), ['class' => 'control-label'])); ?>

				<input type="password" class="form-control" name="password_confirmation" placeholder="<?php echo e(trans('common.confirm_password')); ?>">
				<small class="text-muted"><?php echo e(trans('common.confirm_password_text')); ?></small>
				<?php if($errors->has('password_confirmation')): ?>
				<span class="help-block">
					<strong><?php echo e($errors->first('password_confirmation')); ?></strong>
				</span>
				<?php endif; ?>
			</fieldset>
			<div class="pull-right">
				<button type="submit" class="btn btn-primary btn-sm"><?php echo e(trans('common.save_changes')); ?></button>
			</div>
		</form>	
	</div>
</div>

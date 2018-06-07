<div class="panel panel-default">
	<div class="panel-heading no-bg panel-settings">
		<h3 class="panel-title">
			<?php echo e(trans('common.manage_pages')); ?>

		</h3>
	</div>
	<div class="panel-body timeline">
		<?php echo $__env->make('flash::message', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
		<?php if(count($pages) > 0): ?>
			<div class="table-responsive manage-table">
				<table class="table existing-products-table socialite">
					<thead>
						<tr>
							<th>&nbsp;</th>
							<th><?php echo e(trans('admin.id')); ?></th> 
							<th><?php echo e(trans('auth.name')); ?></th>
							<th><?php echo e(trans('common.likes')); ?></th> 
							<th><?php echo e(trans('admin.options')); ?></th> 
							<th>&nbsp;</th> 
						</tr>
					</thead>
					<tbody>
						<?php foreach($pages as $page): ?>
						<tr>
							<td>&nbsp;</td>	
							<td><?php echo e($page->id); ?></td>
							<td><a href="#"><img src="<?php if($page->avatar): ?> <?php echo e(url('page/avatar/'.$page->avatar)); ?> <?php else: ?> <?php echo e(url('page/avatar/default-page-avatar.png')); ?> <?php endif; ?>" alt="<?php echo e($page->timeline->name); ?>" title="<?php echo e($page->timeline->name); ?>"></a><a href="<?php echo e(url($page->timeline->username)); ?>"> <?php echo e($page->timeline->name); ?></a></td>
							<td><?php echo e($page->likes->count()); ?></td> 
							<td>
								<ul class="list-inline">
									<li><a href="<?php echo e(url('admin/pages/'.$page->timeline->username.'/edit')); ?>"><span class="pencil-icon bg-success"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></span></a></li>
									<li><a href="<?php echo e(url('admin/pages/'.$page->id.'/delete')); ?>" onclick="return confirm('<?php echo e(trans("messages.are_you_sure")); ?>')"><span class="trash-icon bg-danger"><i class="fa fa-trash" aria-hidden="true"></i></span></a></li>
								</ul>
							</td>
							<td>&nbsp;</td> 
						</tr>
						<?php endforeach; ?>
						</tbody>
					</table>
				</div>
				<div class="pagination-holder">
					<?php echo e($pages->render()); ?>

				</div>	
			<?php else: ?>
				<div class="alert alert-warning"><?php echo e(trans('messages.no_pages')); ?></div>
			<?php endif; ?>
		</div>
	</div>

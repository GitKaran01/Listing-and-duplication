<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Duplicates</title>
    <style>
        body { font-family: sans-serif; background-color: #f4f4f4; padding: 1rem; }
        .container { max-width: 1200px; margin: 0 auto; background: #fff; border-radius: 8px; padding: 2rem; box-shadow: 0 4px 12px rgba(0,0,0,0.1); }
        h1 { text-align: center; }
        .alert { padding: 1rem; margin-bottom: 1rem; border-radius: 4px; }
        .alert-success { background: #d4edda; color: #155724; }
        .alert-error { background: #f8d7da; color: #721c24; }
        .nav { margin-bottom: 2rem; display: flex; gap: 1rem; justify-content: center; }
        .nav a { text-decoration: none; background: #6c757d; color: white; padding: 0.5rem 1rem; border-radius: 4px; }
        .group { border: 1px solid #ccc; border-radius: 8px; margin-bottom: 2rem; }
        .group-header { background: #f9f9f9; padding: 1rem; border-bottom: 1px solid #ccc; }
        .group-header h2 { margin: 0; }
        .group-body { padding: 1rem; }
        table { width: 100%; border-collapse: collapse; }
        th, td { text-align: left; padding: 0.5rem; border-bottom: 1px solid #eee; }
        th { background-color: #f1f1f1; }
        tr.master { background-color: #fffbe6; }
        tr.duplicate { background-color: #fdf2f2; }
        button { background: #28a745; color: white; padding: 0.5rem 1rem; border: none; border-radius: 4px; cursor: pointer; font-size: 1rem; }
        button:hover { background: #218838; }
    </style>
</head>
<body>
    <div class="container">

        <nav class="nav">
            <a href="/">Import</a>
            <a href="/duplicates">Manage Duplicates</a>
            <a href="/report">View Report</a>
        </nav>

        <h1>Step 2: Manage Duplicates</h1>

        <?php if(session('success')): ?>
            <div class="alert alert-success"><?php echo e(session('success')); ?></div>
        <?php endif; ?>

        <?php if(session('error')): ?>
            <div class="alert alert-error"><?php echo e(session('error')); ?></div>
        <?php endif; ?>

        <?php if($duplicateGroups->isEmpty()): ?>
            <p>No duplicate groups found. Have you run the `php artisan app:find-duplicates` command?</p>
        <?php else: ?>
            <p>Found <?php echo e($duplicateGroups->count()); ?> groups to merge.</p>

            <?php $__currentLoopData = $duplicateGroups; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $groupId => $businesses): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="group">
                    <form action="/duplicates/merge" method="POST">
                        <?php echo csrf_field(); ?>
                        <input type="hidden" name="duplicate_group_id" value="<?php echo e($groupId); ?>">

                        <div class="group-header">
                            <?php $first = $businesses->first(); ?>
                            <h2>Group: <?php echo e($first->business_name); ?> / <?php echo e($first->area); ?> / <?php echo e($first->city); ?></h2>
                        </div>

                        <div class="group-body">
                            <table>
                                <thead>
                                    <tr>
                                        <th>Keep (Master)</th>
                                        <th>ID</th>
                                        <th>Status</th>
                                        <th>Mobile</th>
                                        <th>Category</th>
                                        <th>Sub-Category</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $__currentLoopData = $businesses; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $business): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr class="<?php echo e($business->status); ?>">
                                            <td>
                                                <input type="radio" name="master_id" value="<?php echo e($business->id); ?>" 
                                                    <?php echo e($business->status == 'master' ? 'checked' : ''); ?> required>
                                            </td>
                                            <td><?php echo e($business->id); ?></td>
                                            <td><?php echo e($business->status); ?></td>
                                            <td><?php echo e($business->mobile_no); ?></td>
                                            <td><?php echo e($business->category); ?></td>
                                            <td><?php echo e($business->sub_category); ?></td>
                                        </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                            </table>
                            <br>
                            <button type="submit">Merge this group (Keep selected, delete others)</button>
                        </div>
                    </form>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <?php endif; ?>

    </div>
</body>
</html><?php /**PATH C:\Users\ACER\Desktop\INTERNSHIP PROJECTS\TASK 3\dbm\resources\views/duplicates.blade.php ENDPATH**/ ?>
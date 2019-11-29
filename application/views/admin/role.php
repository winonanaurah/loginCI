<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <div class="error" data-flashdata=""></div>
    <div class="row">
        <div class="col-lg-6">
            <?= $this->session->flashdata('message'); ?>
            <?= $this->session->flashdata('error'); ?>

            <?= form_error('role', '<div class="alert alert-danger" role="alert">', '</div>') ?>



            <a href="" class="btn btn-primary mb-3" data-toggle="modal" data-target="#newRoleModal">Add new role <i class="fas fa-fw fa-plus fa-sm"></i></a>

            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Role</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($role as $r) : ?>
                        <tr>
                            <th scope="row"><?= $i; ?></th>
                            <td><?= $r['role']; ?></td>
                            <td>
                                <a href="<?= base_url('admin/roleaccess/') . $r['id'] ?>" class=" badge badge-warning"><i class="fas fa-fw fa-check-circle fa-sm"></i> Access</a>
                                <a href="" data-toggle="modal" data-target="#modalEdit<?= $r['id']; ?>" class="badge badge-primary" data-popup="tooltip" data-placement="top" title="Edit Data"><i class="fa fa-fw fa-pencil-alt "></i> Edit</a>
                                <a href="<?= base_url('admin/delete/') ?><?= $r['id']; ?>" class="badge badge-danger tombol" id="delete" name="delete"><i class="fas fa-fw fa-trash-alt fa-sm"></i> Delete</a>
                            </td>
                        </tr>
                        <?php $i++ ?>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!-- Modal -->

<!-- Modal -->
<div class="modal fade" id="newRoleModal" tabindex="-1" role="dialog" aria-labelledby="newRoleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="newRoleModalLabel">Add new role</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="<?= base_url('admin/role'); ?>" method="post">
                <div class="modal-body">
                    <div class="form-group">
                        <input type="text" class="form-control" id="role" name="role" placeholder="Role name">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
            </form>
        </div>
    </div>
</div>
<?php foreach ($role as $r) : ?>
    <div class="modal fade" id="modalEdit<?= $r['id'] ?>">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="newRoleModalLabel">Edit Role</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="<?= base_url('admin/edit'); ?>" method="post">

                    <input type="hidden" class="form-control" readonly value="<?= $r['id']; ?>" name="role_id">

                    <div class="modal-body">
                        <div class="form-group">
                            <input type="text" class="form-control" id="role" name="role" placeholder="Role name" value="<?= $r['role'] ?>">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary"><i class="fas fa-fw fa-pencil-alt fa-sm"></i> Edit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<?php endforeach; ?>
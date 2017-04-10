<h2><?php echo $post['title']; ?></h2>
<small class="post-date">Posted on: <?php echo $post['created_at']; ?></small><br />
<div class="col-md-5">
	<img class="post-thumb" src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>">
	<hr>
	<a class="btn btn-default col-md-offset-4" href="<?php echo base_url(); ?>posts/updatephoto/<?php echo $post['slug']; ?>">Upload Photo</a>
</div>
<div class="col-md-7">
	<div class="post-body">
		<?php echo $post['body']; ?>
	</div>
	<hr>
	<a class="btn btn-default pull-left" href="<?php echo base_url(); ?>posts/edit/<?php echo $post['slug']; ?>">Edit</a>
	<?php echo form_open('/posts/delete/'.$post['id']); ?>
		<input type="submit" value="Delete" class="btn btn-danger pull-right">
	</form>
</div>

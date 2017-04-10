<h2><?= $title ?></h2>

<div class="col-md-5">
	<img class="post-thumb" src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>">
</div>
<div class="col-md-7">
	<?php echo form_open_multipart('posts/upload'); ?>
		<input type="hidden" name="id" value="<?php echo $post['id']; ?>">
		<div class="form-group">
	  		<label>Upload Image</label>
	  		<input type="file" name="userfile" size="20">
	  	</div>
	  	<button type="submit" class="btn btn-default">Submit</button>
	</form>
</div>